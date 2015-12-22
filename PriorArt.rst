
Stephenson's bats
------------------
:via: https://github.com/sstephenson/bats

- Nice syntax sugar. Simple with descriptive human text.
  Tests in bash. Uses preprocessor.
- Skipping, with or without reason.
- Shared code inclusion framework.
- Special globals from test runner.
- Isolation somewhat simple. But passes arguments and on return sets code, combined
  stdout/stderr vars.
- Setup/teardown style static pre-/post-test run hooks.
- Four years old.

lehmannro's assert.sh
---------------------
:via: https://github.com/lehmannro/assert.sh

Lists more prior art. So I dont need to here.

- Sound setup
- Bash Package Manager [bpkg] package.

bobah's simple test runner
--------------------------
:url: http://bobah.net/system/files/str_v0.2.2.tgz
:via: http://bobah.net/d4d/tools/simple-test-runner

- Has concept of timeout
- Uses getopt.
- No docs, not very accessible. Comes with example.

Test Anything Protocol
----------------------
:Since: 1987

- A minimalist test-result format with all the features.

  "TAP, the Test Anything Protocol, is a simple text-based interface between
  testing modules in a test harness. TAP started life as part of the test
  harness for Perl [...]" [#]_

- http://kinoshita.eti.br/2011/06/04/a-comparison-of-tap-test-anything-protocol-and-subunit.html
  comparison. TAP exists since 1987, "an enormous number of modules in CPAN
  use it". Also mentions YAML extensibility.

- Not standard, but revived in 2008.
- Including arbitrary content is easy enough. Don't seem to be much details on
  test protocol itself, or how it is tied to test instance. YAML can easily be
  used here.

Gherkin
-------
:Since: 2009-nov'ish?

- "Gherkin is the language that Cucumber understands." [#]_

  A syntax used in BDD that like TAP may get some traction.
  Cucumber looks to be relatively new, around end 2009-ish.

  Its application is also somehwat controversial.
  Wikipedia treats Gherkin as part of Cucumber, which "allows the
  execution of feature documentation written in business-facing text."

  Behat is a PHP context provider and runner for Gherkin.
  Beyond that this type of BDD DSL is a subset or product of
  the Ruby language.


.. [#] `Test Anything Protocol: Main Page <https://testanything.org/>`_
.. [#] `Gherkin · cucumber/cucumber Wiki · GitHub <https://github.com/cucumber/cucumber/wiki/Gherkin>`_ Feb 27, 2015

