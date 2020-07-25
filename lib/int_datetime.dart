library int_datetime;

extension datetime on int {
  DateTime get toDateTime => DateTime.fromMillisecondsSinceEpoch(this);
}

int dtNow() => DateTime.now().millisecondsSinceEpoch;

int dtDay() {
  final now = DateTime.now();

  return DateTime.utc(now.year, now.month, now.day).millisecondsSinceEpoch;
}

int dtMonth() {
  final now = DateTime.now();

  return DateTime.utc(now.year, now.month).millisecondsSinceEpoch;
}

int dtYear() {
  final now = DateTime.now();

  return DateTime.utc(now.year).millisecondsSinceEpoch;
}
