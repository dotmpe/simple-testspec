Taking a more abstract approach in spec.rst

Testing. Some concepts.

- Skipping or conditional tests.
- Parametrized tests.
- Paralellization.
- Isolation. And gathering results.
- Timing. And Limiting execution time.
- Assertions. An assertion toolkit suited to the environment.
- Naming. Identifying tests or the subject of test.
- Grouping. Referencing other tests, inclusion, building suites, dynamic sets.

All of the above would make some nice test framework.

..

I want something simple and portable, and in my world that means it runs on a
popular GNU/Linux. So have a look at what Google gives us for shell script 
test runners.


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

----

bats looks the nicest, and it can handle (install) itself.
So focus can be on writing, or generating, a bats file.

using node and js-yaml since those are installed,


