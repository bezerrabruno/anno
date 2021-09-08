class Failure {
  const Failure();
}

class ConnectionFailure extends Failure {
  final message;

  const ConnectionFailure(
    this.message,
  );
}

class RepositoryFailure extends Failure {
  final message;

  const RepositoryFailure(
    this.message,
  );
}
