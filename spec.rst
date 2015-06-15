This is an informal rendition of a simpletest test specification.
Besides the body of the specifiation, there is an introduction and
some annexed notes.


Background
-----------
The objective is to provide for an abstract structure with
uniquely identified tests and components under tests, io.
to use these identifiers in test scripts and test reports,
and possibly to generate both from a common, canonical specification.

Such structure should be used within a versioned project to provide 
for a level of confidence in the accuracy or stability for a given
version. See semver_ for more.

.. _semver: http://semver.org


Terms
-----

.. _1:
.. _`specification (1)`:

A `specification (1)`
  .. _`1.0.1`:

  - contains tests in the form of a written description,
    possibly split out into multiple sub-tests. [#]_

    .. _`1.0.1.1`:

    - Test items are anything from simple titles, to full action scripts.
      There is full literal freedom, but inferred is they should 
      give some hint as to the criteria applied for passing.

      They may be simply general descriptions (such as this),
      especially as they can be used to describe a group of sub-tests. 

      Criteria for passing may be implicit, through referring to external code,
      standards, classes and functions etc. 
      Or explicit by verbosely listing e.g. steps and parameters. [#]_

  .. _`1.0.2`:

  - groups tests into a sets that each apply to a single component,
    in a (nested) sequence of components.  [#]_

  .. _`1.0.3`:

  - uses a `tumbler (1)`_ numbering system to uniquely identify each
    test and component under test, across subsequent versions
    of the component and test spec. [#]_


.. _2:
.. _`tumbler (1)`:

A `tumbler (1)`
  .. _`2.0.1`:

  - is a special composite 1-indexed base 10 number with components of
    one or more digit positions, separated by '.0.' and '.' respectively.
    (Lets speak of one tumbler and a path of tumbler)

  .. _`2.0.2`:

  - there are two levels of tumblers used in `specification (1)`

    .. _`2.0.2.1`:

    - the first tumbler identifies the component(s) under test
      for each specification.

      .. _`2.0.2.1.1`:

      - If a component description is updated its number position in the 
        tumbler increments (and all nested components get a new tumbler ID).

    .. _`2.0.2.2`:

    - The second tumbler identifies each (sub)test, the same way as [2.0.2.1.1]_.

      .. _`2.0.2.2.1`:

      - There can be only one test with that specific description per component, and it 
        applies to one or more versions of the component(s) under test.

.. _3:
.. _`simple-testspec (0.0.1)`:

The `simple-testspec/0.0.1` package
  .. _`3.0.1`:

  - is a description of `specification (1)`; a general structure for human
    readable test specifications, and `tumbler (2)`; a two dimensional number
    to uniquely identify tests and suites of tests from such specification.

  .. _`3.0.2`:

  - 


----

.. [#] This spec version says nothing about syntax, but provides this rSt file
  and others to get a possible idea. See annex for some notes on the rSt format.

.. [#] The description itself may be as descriptive as needed. A human or machine 
  performing the actual test would use a script to do so, and may either use
  this specification or a derivative of the specification as that script. Wether a
  specification verbosely lists all explicit parameters, steps, criteria, etc, 
  or brevely refers to some other external system is a matter of project 
  organisation and facilitation.

.. [#] Groups primarily comprise of some ID, ie. a name or term, likely with a 
  version number. The format for the external reference is not given here either.
  Here `term (version)` or `app/version` are used. See annex on rSt too.

.. [#] The tumbler has nothing to do with the component version under test, 
  but the component description should have the component version embedded to be
  accurate.
  Iow. if the DuT version changes, the description changes, and the tumbler ID 
  and all components/tests under that changes as one digit is incremented.


----

Annex. 1: rSt embedded simple-test format notes

Here a rSt definition list syntax is used to describe a component hierarchy,
each definition term describes the component under test.
A component ID is given in an inline title span. 
  
The definition body contains the tests, which are items in (nested) lists.

Consider this rSt compatible file is not the nicest to write or read, 
but does provide working references in HTML ouput (and others).
Better would be to compile some other simple to write and read format to a list of
tumblers with human readable descriptions.


Annex. 2: criteria for passing notes

In the end, a boolean OK/NOK. But to get there some kind of score keeping
may be needed. Also the decision may be automated or manual, iow. formally prescribed
or taken in person.

Again how tests are treated is up to the project and organisation.
It might be described with one or more terms in the specification itself.


