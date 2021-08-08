class ItemsCardDay {
  String? title, task1, task2, task3;

  ItemsCardDay({
    this.title,
    this.task1,
    this.task2,
    this.task3,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'task1': task1,
      'task2': task2,
      'task3': task3,
    };
  }

  List<ItemsCardDay> toList(result) {
    final List<ItemsCardDay> _dias = [];
    for (Map<String, dynamic> row in result) {
      final ItemsCardDay _card = ItemsCardDay(
        title: row['title'],
        task1: row['task1'],
        task2: row['task2'],
        task3: row['task3'],
      );
      _dias.add(_card);
    }
    return _dias;
  }
}
