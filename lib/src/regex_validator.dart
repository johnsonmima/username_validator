import 'package:username_validator/src/pattern.dart';

class UValidator {
  // Returns true if theres a match or false if theres no match in the [input].
  static bool validateThis(
      {RegPattern pattern = RegPattern.simple, required String username}) {
    // check if string is empty
    if (username.isEmpty) return false;

    // BASIC
    // Requires minimum of 3 character
    // Accepted characters are: a-z A-Z 0-9 dot(.) underscore(_)
    // Allow "_" and "." in the middle of character only
    // The dot (.) or underscore (_) must not be the first character.
    // Numbers must not be the first character
    // The dot (.) or underscore (_) can appear consecutively in the middle of
    // of two character, e.g., johnson..mima 0r james__doe etc.
    if (pattern == RegPattern.basic) {
      return RegExp(Pattern.basic).hasMatch(username);
    }
    // STRICT
    // Requires minimum of 3 character and a maximum of 30
    // Accepted characters are: a-z A-Z 0-9 dot(.) underscore(_)
    // Allow "_" and "." in the middle of character only
    // Numbers must not be the first character
    // The dot (.) or underscore (_) must not be the first or last character.
    // The dot (.) or underscore (_) must not appear consecutively,
    // e.g., johnson..mima 0r james__doe

    else if (pattern == RegPattern.strict) {
      return RegExp(Pattern.strict).hasMatch(username);
    }

    // SIMPLE
    // Requires minimum of 2 character and a maximum of 30
    // Accepted characters are: a-z A-Z 0-9 dot(.) underscore(_)
    // Allow "_" and "." in the middle or end of character
    // The dot (.) or underscore (_) must not be the first character.
    // Numbers must not be the first character
    // The dot (.) or underscore (_) can appear consecutively,
    // e.g., johnson..mima 0r james__doe etc.
    return RegExp(Pattern.simple).hasMatch(username);
  }
}
