## 270 C++ Template

## Commands

1. Execute without debugging

    * Open a Terminal session
    * Make sure you are in the directory where the Makefile is located
    * Type the command <b>make</b>.
    * Run the program:

      ```
      ./bin/main.exe
      ```

2. Debug

    * Set a break point in your program
    * In the VS Code Activity Bar, select the Debug option (triangle)
    * Select the RUN AND DEBUG lldb - debug option

3. Valgrind (memory check)

    * From the **TERMINAL**, run:

      ```
      make valgrind
      ```

4. Print PDF

    * Open task bar with Ctrl+Shift+P (PC) or Command+Shift+P (Mac)
    * Type <b>Run Task</b> in the task bar
    * Select printToPDF
    * The pdf will be created in the pdfs directory
    * If the PDF opens as text, right-click the PDF and choose **Open With...** then select a PDF viewer extension.

5. Run GoogleTest (all unit tests)

    * From the **TERMINAL**, run:

      ```
      make runTests
      ```

    * This will configure CMake, build the tests, and run them.
    * Students add new test files in the <b>test</b> directory; all tests run every time you run <b>make runTests</b>.
