# Tests
One approach to solving Exercism exercises is to access the website, and use the in-browser editor where you can edit and test your solution.

Alternatively, the exercises may be downloaded to your local computer where you use your own editor, and a set of tools, to create, test, and finally submit, your solution.

This involves use of the Exercism command-line interface, or CLI, an application that runs within a terminal or command-line window. Installation instructions may be found here: [Exercism CLI Documentation](https://exercism.org/docs/using/solving-exercises/working-locally).

## Testing Approach
Exercism assumes some experience with test-driven development. Each exercise consists of a _`stub file`_, a _`test file`_ containing a series pre-written tests, and a _`test script`_ used to execute the tests.

Solving an exercise requires the _`stub file`_ to be incrementally developed to contain code that will, eventually, pass all tests.

In practical terms this means that both the _`stub file`_ and _`test file`_ will be actively edited. Note the _`test file`_ is edited not to alter the test code, but to comment out failing tests.

Initially, all but one test will be commented out, then, as the _`stub file`_ is progressed towards a working solution, more tests are uncommented until all tests are run successfully.

## Testing Infrastructure
There is no need to install any additional software as the components of the test framework are included in the exercise download.

The test framework comprises three Rexx files which, at test time, are combined with the exercise solution to form the test code unit, which is then executed by the _`test script`_, and the test results printed on the terminal.

Please do not edit, or delete, the _`test script`_, or any other test framework file. If gremlins cause this to be, just re-download the exercise via the Exercism CLI, taking care to save any solution code.

## Running the Tests
Solving an exercise proceeds as follows:

1. Open a terminal
2. Download the selected exercise
3. Change into the exercise directory
4. Load stub file and test file into your editor
5. Iteratively,

    1. Execute the test script
    2. Write code in your stub file (slowly turning it into a solution file), and comment / uncomment tests in your test file

6. When all tests pass, submit the solution to Exercism
7. Close the terminal
8. Celebrate your success

A concrete example inside a Linux terminal using the `acronym` exercise (assume exercism workspace is:`/home/exercism`)

Download exercise:

`exercism download --track=rexx --exercise=acronym`

Change into exercise directory:

`cd /home/exercism/rexx/acronym`

From another window, perhaps a GUI, load `acronym.rexx` and `acronym-check.rexx`, the stub, and test, file respectively, into your editor.

Execute the test script: `./test-acronym`

and all tests should fail:

```bash
1..9
not ok 1 - basic Abbreviate("Portable Network Graphics")
not ok 2 - lowercase words Abbreviate("Ruby on Rails")
not ok 3 - punctuation Abbreviate("First In, First Out")
not ok 4 - all caps word Abbreviate("GNU Image Manipulation Program")
not ok 5 - punctuation without whitespace Abbreviate("Complementary metal-oxide semiconductor")
not ok 6 - very long abbreviation Abbreviate("Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me")
not ok 7 - consecutive delimiters Abbreviate("Something - I made up from thin air")
not ok 8 - apostrophes Abbreviate("Halley's Comet")
not ok 9 - underscore emphasis Abbreviate("The Road __Not__ Taken")
```

Comment out all but the first test in the `acronym-check.rexx` file, and re-run the test script; the following output should result:

```bash
1..1
not ok 1 - basic Abbreviate("Portable Network Graphics")
```

Rework `acronym.rexx` until it contains working code, and the output from executing the test script should eventually be:

```bash
1..1
ok 1 - basic Abbreviate("Portable Network Graphics")
```

Proceed to uncomment the other tests, re-execute the test script, and eventually the output should be:

```bash
1..9
ok 1 - basic Abbreviate("Portable Network Graphics")
ok 2 - lowercase words Abbreviate("Ruby on Rails")
ok 3 - punctuation Abbreviate("First In, First Out")
ok 4 - all caps word Abbreviate("GNU Image Manipulation Program")
ok 5 - punctuation without whitespace Abbreviate("Complementary metal-oxide semiconductor")
ok 6 - very long abbreviation Abbreviate("Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me")
ok 7 - consecutive delimiters Abbreviate("Something - I made up from thin air")
ok 8 - apostrophes Abbreviate("Halley's Comet")
ok 9 - underscore emphasis Abbreviate("The Road __Not__ Taken")
```

You may now submit your exercise solution:

`exercism submit acronym.rexx`

and collect another reputation point. Close the terminal when done.

The process for a MacOS user would be quite similar since it is a UNIX-derived operating system.

The process for Windows users is, broadly, similar, but there are some minor differences:

- The _Command Prompt_ window is the terminal
- Backslashes replace forward slashes in paths, so the working directory might be:

  `cd C:\Users\MyName\exercism\rexx\acronym`

- Test script execution is via:

  `test-acronym`  or  `test-acronym.bat`

Test output will be identical.
