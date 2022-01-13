import 'package:flutter_test/flutter_test.dart';
import 'package:username_validator/username_validator.dart';

void main() {
  // Simple validation test case
  test('Simple validation test case', () {
    expect(UValidator.validateThis(username: 'james'), true);
    expect(UValidator.validateThis(username: 'j'), false);
    expect(UValidator.validateThis(username: 'ja'), true);
    expect(UValidator.validateThis(username: 'j_'), true);
    expect(UValidator.validateThis(username: '_james'), false);
    expect(UValidator.validateThis(username: '1james'), false);
    expect(UValidator.validateThis(username: '.james'), false);
    expect(UValidator.validateThis(username: 'jam__s'), true);
    expect(UValidator.validateThis(username: 'james_a'), true);
  });
// Basic Validation test case
  test('Basic validation Test case', () {
    expect(
        UValidator.validateThis(pattern: RegPattern.basic, username: 'james'),
        true);
    expect(UValidator.validateThis(pattern: RegPattern.basic, username: 'j'),
        false);
    expect(UValidator.validateThis(pattern: RegPattern.basic, username: 'jam'),
        true);
    expect(UValidator.validateThis(pattern: RegPattern.basic, username: 'ja'),
        false);
    expect(
        UValidator.validateThis(pattern: RegPattern.basic, username: '1james'),
        false);
    expect(
        UValidator.validateThis(pattern: RegPattern.basic, username: 'james_'),
        false);
    expect(
        UValidator.validateThis(pattern: RegPattern.basic, username: '_james'),
        false);
    expect(
        UValidator.validateThis(pattern: RegPattern.basic, username: '.james'),
        false);
    expect(
        UValidator.validateThis(pattern: RegPattern.basic, username: 'jam_es'),
        true);
    expect(
        UValidator.validateThis(pattern: RegPattern.basic, username: 'jam.es'),
        true);
    expect(
        UValidator.validateThis(pattern: RegPattern.basic, username: 'jam..es'),
        true);
    expect(
        UValidator.validateThis(pattern: RegPattern.basic, username: 'jam__es'),
        true);
    expect(
        UValidator.validateThis(pattern: RegPattern.basic, username: 'jam_.es'),
        true);
    expect(
        UValidator.validateThis(pattern: RegPattern.basic, username: 'jam._es'),
        true);
    expect(
        UValidator.validateThis(pattern: RegPattern.basic, username: 'jam@es'),
        false);
  });

  // Strict validation test
  test('Strict validation Test case', () {
    expect(
        UValidator.validateThis(pattern: RegPattern.strict, username: 'james'),
        true);
    expect(UValidator.validateThis(pattern: RegPattern.strict, username: 'j'),
        false);
    expect(UValidator.validateThis(pattern: RegPattern.strict, username: 'jam'),
        true);
    expect(UValidator.validateThis(pattern: RegPattern.strict, username: 'ja'),
        false);
    expect(
        UValidator.validateThis(pattern: RegPattern.strict, username: '1james'),
        false);
    expect(
        UValidator.validateThis(pattern: RegPattern.strict, username: 'james_'),
        false);
    expect(
        UValidator.validateThis(pattern: RegPattern.strict, username: '_james'),
        false);
    expect(
        UValidator.validateThis(pattern: RegPattern.strict, username: '.james'),
        false);
    expect(
        UValidator.validateThis(pattern: RegPattern.strict, username: 'jam_es'),
        true);
    expect(
        UValidator.validateThis(pattern: RegPattern.strict, username: 'jam.es'),
        true);
    expect(
        UValidator.validateThis(
            pattern: RegPattern.strict, username: 'jam..es'),
        false);
    expect(
        UValidator.validateThis(
            pattern: RegPattern.strict, username: 'jam__es'),
        false);
    expect(
        UValidator.validateThis(
            pattern: RegPattern.strict, username: 'jam_.es'),
        false);
    expect(
        UValidator.validateThis(
            pattern: RegPattern.strict, username: 'jam._es'),
        false);
    expect(
        UValidator.validateThis(pattern: RegPattern.strict, username: 'jam@es'),
        false);
    expect(
        UValidator.validateThis(
            pattern: RegPattern.strict, username: 'ja_m_es'),
        true);
    expect(
        UValidator.validateThis(
            pattern: RegPattern.strict, username: 'ja.m.es'),
        true);
  });
}
