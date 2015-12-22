

Background
-----------
The objective is to provide for an abstract structure with
uniquely identified tests and components under tests, io.
to use these identifiers in test scripts and test reports,
and possibly to generate both from a common, canonical specification.

Such structure should be used within a versioned project to provide
for a level of confidence in the accuracy or stability for a given
version. See semver_ for more.

Detailed and structured test definitions and results are expected to
aid in the processing, and to relieve testing efforts iot leave with time
for actual management, and improvement in architecture; both regarding the tests
as well the product itself.


.. _semver: http://semver.org


Goals
-----

- Keep documentation bodies separate from source code (including tests).

- Provide a versioned referencing system to refer to documentation,
  keeping a version for each subject and testcase.

- Language independent artefacts. With support implementation per language,
  and user shell-based harnass and tooling.

- Use common and/or accessible format for test definition and test-results.

- Among the tooling, provide a simple runner and reporter.
  Maybe a simple rule engine to grade the results given the specs extracted.


Plan
-----
- GIT does versioning. Bourne shell works across many devices.
  TAP is a well established test-result format.

- Get a text-parser going somehow.
- Implement a plumbing command for storage and retrieval with ids and
  checksums.
- Can try Haskell and pandoc. And/or Python. Later.
  First do a simple Bash version, nevermind it will be somewhat limited and
  maybe even buggy.


Implementation
---------------
Getting the texts from the document with bash will be somewhat challenging.
The texts are Id' their checksum.

This current project assumes only one or a few specification documents
with shared some tens or hundreds of specs. Not expecting much more,
look at software unit testing.

So maybe one subject/testcase index file per document.
Or, what if each ID and checksum accompanies a file path, for the testcases.
Specs (or subjects) will just be an index. Testcases is different.

Initially the bash version will not do much cross referencing etc,
just provide the paragraph numbers as it where.


Progress
---------
Conceptual only. Some research.
One dive-in using rST in spec.rst



..

I want something simple and portable, and in my world that means it runs on a
popular GNU/Linux. So have a look at what Google gives us for shell script
test runners.

BATS looks nice. But someting custom might not be that difficutl to implement
if required. It just would be nice to be interoperable with existing work.


..

using node and js-yaml since those are installed, and natively

..

I made more preliminaries in note/testing, and basic requirements of:

1. document artefacts tied to tests
2. report artefacts tied to test instances

This all hinges on some literal style, or rather a API to deal with a specific documentation structure, ie. a microformat maybe.

Maybe here an existing solution like pandoc may help.


