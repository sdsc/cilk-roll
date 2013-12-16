# SDSC "cilk" roll

## Overview

This roll bundles the cilk parallel programming system.

For more information about the various packages included in the cilk roll please
visit their official web pages:

- <a href="https://www.cilkplus.org" target="_blank">Intel CILK Plus</a> is an
extension to the C and C++ languages to support data and task parallelism.


## Requirements

To build/install this roll you must have root access to a Rocks development
machine (e.g., a frontend or development appliance).

If your Rocks development machine does *not* have Internet access you must
download the appropriate R source file(s) using a machine that does have
Internet access and copy them into the `src/<packages>` directories on your
Rocks development machine.


## Dependencies

None


## Building

To build the cilk-roll, execute these instructions on a cilkocks development
machine (e.g., a frontend or development appliance):

```shell
% make default 2>&1 | tee build.log
% grep "RPM build error" build.log
```

If nothing is returned from the grep command then the roll should have been
created as... `cilk-roll-*.iso`. If you built the roll on a Rocks frontend then
proceed to the installation step. If you built the roll on a Rocks development
appliance you need to copy the roll to your Rocks frontend before continuing
with installation.


## Installation

To install, execute these instructions on a Rocks frontend:

```shell
% rocks add roll *.iso
% rocks enable roll cilk
% cd /export/rocks/install
% rocks create distro
% rocks run roll cilk | bash
```

In addition to the software itself, the roll installs cilk environment module
files in:

```shell
/opt/modulefiles/applications/cilk
```

## Testing

The cilk-roll includes a test script which can be run to verify proper
installation of the cilk-roll documentation, binaries and module files. To run
the test scripts execute the following command(s):

```shell
% /root/rolltests/cilk.t 
ok 1 # skip not server
ok 2 - cilk is installed
ok 3 - Simple cilk run
ok 4 - cilk module installed
ok 5 - cilk version module installed
ok 6 - cilk version module link created
1..6
```

