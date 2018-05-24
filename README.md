# SDSC "cilk" roll

## Overview

This roll bundles the cilk parallel programming system.

For more information about the various packages included in the cilk roll please
visit their official web pages:

- <a href="http://supertech.csail.mit.edu/cilk/" target="_blank">MIT CILK</a> is 
a linguistic and runtime technology for algorithmic multithreaded programming.


## Requirements

To build/install this roll you must have root access to a Rocks development
machine (e.g., a frontend or development appliance).

If your Rocks development machine does *not* have Internet access you must
download the appropriate R source file(s) using a machine that does have
Internet access and copy them into the `src/<packages>` directories on your
Rocks development machine.


## Dependencies

The sdsc-roll must be installed on the build machine, since the build process
depends on make include files provided by that roll.

The roll sources assume that modulefiles provided by SDSC compiler
rolls are available, but it will build without them as long as the environment
variables they provide are otherwise defined.


## Building

To build the cilk-roll, execute this on a rocks development
machine (e.g., a frontend or development appliance):

```shell
% make 2>&1 | tee build.log
```

A successful build will create the file `cilk-*.disk1.iso`.  If you built the
roll on a Rocks frontend, proceed to the installation step. If you built the
roll on a Rocks development appliance, you need to copy the roll to your Rocks
frontend before continuing with installation.


## Installation

To install, execute these instructions on a Rocks frontend:

```shell
% rocks add roll *.iso
% rocks enable roll cilk
% cd /export/rocks/install
% rocks create distro
```

Subsequent installs of compute and login nodes will then include the contents
of the cilk-roll.  To avoid cluttering the cluster frontend with unused
software, the cilk-roll is configured to install only on compute and
login nodes. To force installation on your frontend, run this command after
adding the cilk-roll to your distro

```shell
% rocks run roll cilk host=NAME | bash
```

where NAME is the DNS name of a compute or login node in your cluster.

In addition to the software itself, the roll installs cilk environment module
files in:

```shell
/opt/modulefiles/applications/cilk
```

## Testing

The cilk-roll includes a test script which can be run to verify proper
installation of the roll documentation, binaries and module files. To run
the test scripts execute the following command(s):

```shell
% /root/rolltests/cilk.t 
```
