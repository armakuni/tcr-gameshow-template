# How to add a new language

1. Create a new subfolder for the language in the root directory
1. Set up a basic hello world with unit test starter for the language
1. Create two bash scripts in the language folder:
    1. `test`, the contents of this file should be the command to run the tests for the given language. Example:

        ```bash
        # test
        #!/bin/bash
        python -m pytest
        ```

    2. `coverage`, the contents of  this file should be the command to run test coverage for the given language. Example:

        ```bash
        # coverage
        #!/bin/bash
        python run coverage report main.py
        ```

1. Ensure the two files are executable

    ```
    chmod +x test
    chmod +x coverage
    ```

1. **Commit your changes (VERY IMPORTANT FOR THE NEXT STEP)**

1. Test that it works! Run `tcr` in the root of the repository

    ```bash
    $ export TCR_LANG=[your language]
    $ tcr
    ```

    Write a failing test and test it again, and then write some untested code and test it again to check if the coverage part is working.

    The result we want to see is that `tcr` will wipe the changes if there is a failing test or untested code (i.e. coverage is not 100%)