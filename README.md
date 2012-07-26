Local RVM RubyDoc : YARD RVM Doc Server
===============================

Why ?
-----

When using RVM the standard yard documentation server (yard server --gems) only shows gems present in the currently active gemset (gem list).
Gems from other gemsets are not available.
Core and stdlib docs are not shown by default (though they can be added by specifying some cmd line params).

Inspired by the wonderful http://rubydoc.info site, I wanted to have this locally running on my machine.

I forked https://github.com/lsegal/rubydoc.info and modified it's core to also include links to all local installed rvm gems (of all gemsets).
It also automatically installs the core and stdlib of the installed rubies.
Documentation is generated with YARD when needed and cached locally.

Getting Started
---------------

Patches and enhancements are welcome.

Running the RVM doc server locally is easy:

* git clone git://github.com/bduc/rubydoc.info && cd rubydoc.info
* rvm gemset create rubydoc.info && rvm use 1.9.3@rubydoc.info (adapt to whatever you like)
* bundle install
* rake gems:update (only needed to have a searchable index of _all_ rubygems available that you can generate docs for without actually installing them)
* rackup config.ru

Contributors
------------

Local RVM gems and stdlib support:

* Bart Duchesne

RubyDoc.info was created by Loren Segal (YARD) and Nick Plante (rdoc.info).
Additional help was provided by:

* Jeff Rafter (rdoc.info)
* Brian Turnbull (rdoc.info)
* Lee Jarvis
* Sebastian Staudt
* Nicos Gollan
