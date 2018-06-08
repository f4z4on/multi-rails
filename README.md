MultiRails
==========

An exploration into running multiple Ruby on Rails application each in its own subdirectory on the same virtual host.

There are two very simple RoR applications created by running:

    rails new one --skip-yarn --skip-action-mailer --skip-active-record --skip-active-storage --skip-action-cable --skip-sprockets --skip-spring --skip-listen --skip-javascript --skip-bootsnap --skip-system-test

This is basically using all the “skips” documented in `rails new -h`, so the applications are really bare-bones.

To run the code, change the first two `Define`s in `multi-rails.conf` and include it to your Apache HTTP Server configuration. Then, start each RoR application for its own directory:

    rails s -b $PWD/tmp/sockets/server.sock

Open virtual host you configured in the browser and you should see you have two running Ruby on Rails applications on one virtual host.