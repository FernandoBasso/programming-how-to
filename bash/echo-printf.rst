Echo and Printf
===============

[TOC]

How to print ``-n``?
--------------------

This doesn’t work:

.. code:: shell-session

   $ echo -- -n
   -- -n.

Not what we want…​ Bash’s ``echo`` honors `the
specs <https://pubs.opengroup.org/onlinepubs/9699919799/utilities/echo.html>`__.

   The echo utility shall not recognize the “–” argument in the manner
   specified by Guideline 10 of XBD Utility Syntax Guidelines; “–” shall
   be recognized as a string operand.

   — echo POSIX spec

We can ``man ascii`` and look for the numeric value of ``-``:

**Excerpt from \`man ascii’.**

.. code:: text

   Oct   Dec   Hex   Char
   ──────────────────────
   ...
   055   45    2D    -
   ...

Then we can use the ``-e`` option for ``echo`` and use the octal or
hexadecimal values to produce ``-`` and just implicitly concatenate both
``-`` and ``n``.

.. code:: shell-session

   $ echo -e '\055'n
   -n

   $ echo -e '\x2d'n
   -n

“Any fool can make something complicated. It takes a genius to make it
simple.”

Therefore:

.. code:: shell-session

   $ echo -n -; echo n;

Still, jokes apart, the version with ``-e`` and ``\x2d`` is cool too.

Nice question and discussion: `When and how was the double-dash (–)
introduced as an end of options delimiter in
Unix/Linux? <https://unix.stackexchange.com/questions/147143/when-and-how-was-the-double-dash-introduced-as-an-end-of-options-delimiter>`__
