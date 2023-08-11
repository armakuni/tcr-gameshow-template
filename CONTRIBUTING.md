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