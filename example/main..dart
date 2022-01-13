import 'package:username_validator/username_validator.dart';
import 'package:flutter/material.dart';

void main() {
  final _formKey = GlobalKey<FormState>();

  // Simple Username Validation
  // Requires minimum of 2 character and a maximum of 30
  // Accepted characters are: a-z A-Z 0-9 dot(.) underscore(_)
  // Allow "_" and "." in the middle or end of character
  // The dot (.) or underscore (_) must not be the first character.
  // Numbers must not be the first character
  // The dot (.) or underscore (_) can appear consecutively,
  // e.g., johnson..doe 0r james__doe etc [returns true]

  Form(
    key: _formKey,
    child: Column(children: [
      TextFormField(
        // Use UValidator.validateThis(username: 'James')
        validator: (value) {
          if (!UValidator.validateThis(username: value!)) {
            return 'Invalid username';
          }
          return null;
        },
      ),
    ]),
  );

  // Basic username Validation
  // Requires minimum of 3 character
  // Accepted characters are: a-z A-Z 0-9 dot(.) underscore(_)
  // Allow "_" and "." in the middle of character only
  // The dot (.) or underscore (_) must not be the first character.
  // Numbers must not be the first character
  // The dot (.) or underscore (_) can appear consecutively in the middle of
  // of two character, e.g., johnson..doe 0r james__doe etc. [returns true]
  Form(
    key: _formKey,
    child: Column(children: [
      TextFormField(
        // Use UValidator.validateThis(username: 'James')
        validator: (value) {
          if (!UValidator.validateThis(
              pattern: RegPattern.basic, username: value!)) {
            return 'Invalid username';
          }
          return null;
        },
      ),
    ]),
  );

  // Strict Username Validation
  // Requires minimum of 3 character and a maximum of 30
  // Accepted characters are: a-z A-Z 0-9 dot(.) underscore(_)
  // Allow "_" and "." in the middle of character only
  // Numbers must not be the first character
  // The dot (.) or underscore (_) must not be the first or last character.
  // The dot (.) or underscore (_) must not appear consecutively,
  // e.g., johnson..doe 0r james__doe  [returns false]
  Form(
    key: _formKey,
    child: Column(children: [
      TextFormField(
        // Use UValidator.validateThis(username: 'James')
        validator: (value) {
          if (!UValidator.validateThis(
              pattern: RegPattern.strict, username: value!)) {
            return 'Invalid username';
          }
          return null;
        },
      ),
    ]),
  );
}
