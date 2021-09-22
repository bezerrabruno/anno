class Failure {
  const Failure();
}

class ConnectionFailure extends Failure {
  final String message;

  const ConnectionFailure(
    this.message,
  );
}

class RepositoryFailure extends Failure {
  final String message;

  const RepositoryFailure(
    this.message,
  );
}
