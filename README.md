<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

## **Username validator**

A straightforward flutter username validator that provides common validation options.

### Usage

1. Add dependency to your package's pubspec.yaml file:

`dependencies:
username_validator: ^0.0.1 # change to latest version`

2. Run from the command line:

`$ pub get`

Alternatively, your editor might support pub. Check the docs for your editor to learn more.

3. Import in your Dart code:

`import 'package:username_validator/username_validator.dart';`


## **Example**

`bool simple = UValidator.validateThis(username: "jam_s")`

`bool basic = UValidator.validateThis(pattern:RegPattern.basic,username: "jam_s")
`

`bool strict = UValidator.validateThis(pattern:RegPattern.strict,username: "jam_s")
`

## **Pattern**

`RegPattern.simple`
`RegPattern.basic`
`RegPattern.strict`

