# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in Dart: inadequate exception handling within asynchronous functions. The `bug.dart` file showcases code that makes a network request but fails to comprehensively manage potential exceptions. This can lead to app crashes or unexpected behavior.  The `bugSolution.dart` file provides a corrected version with improved exception handling.

## How to Reproduce

1. Clone this repository.
2. Run `bug.dart`.
3. Observe the output and the potential for unhandled exceptions.
4. Compare with the corrected code in `bugSolution.dart`.