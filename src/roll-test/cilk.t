#!/usr/bin/perl -w
# cilk roll installation test.  Usage:
# cilk.t [nodetype]
#   where nodetype is one of "Compute", "Dbnode", "Frontend" or "Login"
#   if not specified, the test assumes either Compute or Frontend

use Test::More qw(no_plan);

my $appliance = $#ARGV >= 0 ? $ARGV[0] :
                -d '/export/rocks/install' ? 'Frontend' : 'Compute';
my $installedOnAppliancesPattern = '.';
my $cilkHome = '/opt/cilk';
my $isInstalled = -d $cilkHome;
my $output;

# cilk-common.xml
if($appliance =~ /$installedOnAppliancesPattern/) {
  ok($isInstalled, 'cilk installed');
} else {
  ok(! $isInstalled, 'cilk not installed');
}
SKIP: {

  skip 'cilk not installed', 5 if ! $isInstalled;
  SKIP: {
    skip 'cilk examples not installed', 2 if ! -d "$cilkHome/examples";
    `$cilkHome/bin/cilkc -I $cilkHome/examples $cilkHome/examples/cilksort.cilk $cilkHome/examples/getoptions.o -o cilksort`;
    ok(-x 'cilksort', 'cilk compiler works');
    $output = `./cilksort`;
    like($output, qr/Running time\s*=\s*[0-9\.]+/, 'cilk-compiled program works');
    `/bin/rm cilksort`;
  }

  skip 'modules not installed', 3 if ! -f '/etc/profile.d/modules.sh';
  `/bin/ls /opt/modulefiles/compilers/cilk/[0-9]* 2>&1`;
  ok($? == 0, 'cilk module installed');
  `/bin/ls /opt/modulefiles/compilers/cilk/.version.[0-9]* 2>&1`;
  ok($? == 0, 'cilk version module installed');
  ok(-l '/opt/modulefiles/compilers/cilk/.version',
     'cilk version module link created');

}
