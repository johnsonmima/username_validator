enum RegPattern { simple, basic, strict }

class Pattern {
  // simple pattern
  static String simple = r'^[a-zA-Z][a-zA-Z0-9_.]{1,30}$';

  // basic pattern
  static String basic = r'^[a-zA-Z][a-zA-Z0-9_.]+[a-zA-Z0-9]$';

  // strict pattern
  static String strict =
      r'^[a-zA-Z]([._](?![._])|[a-zA-Z0-9]){1,30}[a-zA-Z0-9]$';
}
