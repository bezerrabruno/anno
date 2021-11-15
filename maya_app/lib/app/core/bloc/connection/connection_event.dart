abstract class ConnectionEvent {
  const ConnectionEvent();
}

// 1° sigla = E == event
// 2° sigla = className
// Event

class ECEConnection extends ConnectionEvent {
  final dynamic connection;

  const ECEConnection(this.connection);
}
