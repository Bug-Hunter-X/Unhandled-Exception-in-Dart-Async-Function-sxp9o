# Unhandled Exception in Dart Async Function

This repository demonstrates a common error in Dart asynchronous programming and its solution. The initial code handles HTTP request exceptions but lacks specific handling for JSON decoding errors.  The solution improves error handling to catch and manage both types of errors, providing a more robust and reliable application.

## Bug

The `bug.dart` file contains Dart code that fetches data from a URL asynchronously. While it handles general HTTP errors, it doesn't specifically handle the possibility of a `json.decode` failure. This can lead to unhandled exceptions.

## Solution

The `bugSolution.dart` file provides an improved version that handles `FormatException` from `json.decode` separately. This more comprehensive error handling prevents unexpected crashes.
