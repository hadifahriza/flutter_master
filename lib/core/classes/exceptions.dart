class ServerExceptions implements Exception {
  final String message;

  ServerExceptions(this.message);
}

class CacheExceptions implements Exception {
  final String message;

  CacheExceptions(this.message);
}

class DatabaseException implements Exception {
  final String message;

  DatabaseException(this.message);
}

class FormatException implements Exception {
  final String message;

  FormatException(this.message);
}
