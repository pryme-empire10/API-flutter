class DOB {
  final DateTime date;
  final int age;

  DOB({
    required this.date,
    required this.age,
  });

  factory DOB.fromMap(Map<String, dynamic> json) {
    return DOB(
      date: DateTime.parse(json['date']),
      age: json['age'],
    );
  }
}
