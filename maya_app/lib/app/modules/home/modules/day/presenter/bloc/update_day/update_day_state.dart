class UpdateDayState {
  const UpdateDayState();
}

class StateUpdateDayLoading implements UpdateDayState {
  const StateUpdateDayLoading();
}

class StateUpdateDayFinalize extends UpdateDayState {
  final String message;

  const StateUpdateDayFinalize({
    required this.message,
  });
}
