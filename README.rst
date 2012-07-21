My Emacs config
===============

Tips
----

Maximizing Emacs window on start-up
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To make Emacs start in maximized mode put the following line in ``$HOME/.Xresources``::

Emacs*fullscreen: maximized

After this do::

$ xrdb -merge $HOME/.Xresources

Default Font
~~~~~~~~~~~~

If you don't like Emacs' default font, yu can try to redefine it in ``$HOME/.Xresources``.
For example::

Emacs*font: Monospace-10

Don't forget to merge the settings with `xrdb`.

Distribution Specific Notes
~~~~~~~~~~~~~~~~~~~~~~~~~~~

In all distributions, that uses Python 3 by default the `PYMACS_PYTHON` environment must be set to
`python2`.

Useful Links
------------

`Here<http://eschulte.me/emacs-starter-kit/starter-kit-bindings.html/>`_ useful information about Emacs tweaking can be found.
