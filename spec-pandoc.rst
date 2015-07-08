:version: ``simple-testspec/0.0.1``

.. _1:
.. _`specification (1)`:

this describes `rst pandoc test specification (1)`, a literal format to document
a project, and associate (parts of) the document with 

a project. It has sets of tests, either names or descriptions or full scripts embedded.

  Its a literal format that allows other text elements besides

  it contains two literal elements to structure descriptions into test suites:
  definition terms, and list items. Its a literal format that has other 
  content beyond the scope of this document.

  This allows full freedom in the semantic structuring of the document,
  providing content like requirements, use cases and uses other literal
  constructs like sections, paragraphs, references, etc.

  Test items can be nested, to make descriptions for groups of tests.

  possibly split out into multiple sub-tests
    - Test items are anything from simple titles, to full action scripts. There is full literal freedom, but inferred is they should give some hint as to the criteria applied for passing.

      They may be simply general descriptions (such as this), especially as they can be used to describe a group of sub-tests.

      Criteria for passing may be implicit, through referring to external code, standards, classes and functions etc. Or explicit by verbosely listing e.g. steps and parameters.

    - Groups tests into a sets that each apply to a single component, in a (nested) sequence of components.
    - Uses a `tumbler (1)`_ numbering system to uniquely identify each test and component under test, across subsequent versions of the component and test spec.

`tumbler (1)`
  is a number that
    - is a special composite 1-indexed base 10 number with components of one or more digit positions, separated by '.0.' and '.' respectively. (Lets speak of one tumbler and a path of tumbler)

  there are two levels of tumblers used in `specification (1)`
    The first tumbler identifies the component(s) under test for each specification
      * If a component description is updated its number position in the tumbler increments (and all nested components get a new tumbler ID).

    The second tumbler identifies each (sub)test, the same way as [2.0.2.1.1]_
      * There can be only one test with that specific description per component, and it applies to one or more versions of the component(s) under test.

  The `simple-testspec/0.0.1` package
    - contains spec.rst with a description of `specification (1)`; a general structure for human readable test specifications, and `tumbler (2)`; a two dimensional number to uniquely identify tests and suites of tests from such specification.


