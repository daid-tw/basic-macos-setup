# Basic MacOS Setup using Brewfile
This is a collection of *_Homebrew_* casks or jobs that are supposed to setup your MacOS environment.
These jobs are using a *_Brewfile_* in order to install needed components to have your laptop ready for programming (via `brew` commands).

* Clone this repository to your laptop so you can build and run the _Brewfile_


## Pre-requisites

There are three pre-requisites for this.

* The first configure proxy to have access by VPN. You can follow a instruction https://github.com/krogertechnology/mac-setup-scripts/blob/master/proxy-setup.md
  You can run [./install_proxy.sh] to configure your terminal automatically and avoid the part Set up Terminal for proxy access of guide.

* The second one is to have _Homebrew_ installed, which you can use the next command line on your terminal for it:
`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

* The second pre-requisite is installing _brew bundle_ command, which we will use to run our Brewfile:
`brew tap Homebrew/bundle`

## Executing 

In order to run your _Brewfile_ and have all needed components installed, you can simply start by running:
`sudo ./install_apps.sh`
on your terminal.

## Tests

To be implemented.

<!---
Old tests were only meant to work as gemfiles

 Tests can be run with the command:
#`bundle install && bundle exec rspec`
--->