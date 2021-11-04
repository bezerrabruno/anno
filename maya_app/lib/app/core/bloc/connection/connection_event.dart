abstract class ConnectionEvent {}

class Connection extends ConnectionEvent {
  final dynamic connection;

  Connection(this.connection);
}
