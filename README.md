# Basic MacOS Setup using Brewfile
This is a collection of *_Homebrew_* casks or jobs that are supposed to setup your MacOS environment.
These jobs are using a *_Brewfile_* in order to install needed components to have your laptop ready for programming (via `brew` commands).

* Clone this repository to your laptop so you can build and run the _Brewfile_


## Execution Steps

The execution steps for getting your MacOS setup configured are:

* 1. Configure your proxy to access web through a VPN.
  Follow VPN/Spike instructions at: https://github.com/krogertechnology/mac-setup-scripts/blob/master/proxy-setup.md
  
* 2. Run `$make proxy` to install proxy configurations on your machine.

* 3. Run `$make install` to install needed apps for your programming environment and also for productivity.