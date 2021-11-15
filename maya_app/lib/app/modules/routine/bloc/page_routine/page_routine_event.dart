class PageRoutineEvent {
  const PageRoutineEvent();
}

// 1° sigla = E == event
// 2° sigla = className
// Event

class EPRChangePage extends PageRoutineEvent {
  final int page;

  const EPRChangePage({
    required this.page,
  });
}
