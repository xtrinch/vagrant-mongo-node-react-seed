# Vagrant / MongoDB / Nodejs / React project seed

Based on the project seed [found here](https://github.com/mattpetrie/React-Node-Project-Seed).

#### Adapted to work with a debian 8.1 opscode base box with vagrant.

All the necessary setup commands for vagrant are located inside config/bootstrap.sh. Note that the box will provision
itself with the script.
Project uses gulp as its build system, it runs webpack-dev-server as its development server. I have resorted to using
polling to watch for changes inside the shared folders, as native watchers didn't work.

## Usage

### Start vagrant and provision debian with:

    $ vagrant up

### Run the development server with:

    $ cd files/
    $ gulp

You should now be able to open the example project inside your host computer's browser by entering the following in your
browser bar on your host machine:

    http://vagrant's-ip/

You can find out which ip vagrant is using with:

    $ sudo ifconfig
