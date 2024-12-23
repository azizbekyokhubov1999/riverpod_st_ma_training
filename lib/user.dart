import 'dart:convert';

class User {
  final String name;
  final int age;

  User({
    required this.name,
    required this.age,
  });

  // copyWith method
  User copyWith({
    String? name,
    int? age,
  }) {
    return User(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }

  // toMap method
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'age': age,
    };
  }

  // fromMap method
  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'] ?? '',
      age: map['age'] ?? 0,
    );
  }

  // toJson method
  String toJson() => json.encode(toMap());

  // fromJson method
  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  // equals operator
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.name == name &&
        other.age == age;
  }

  // hashCode
  @override
  int get hashCode => name.hashCode ^ age.hashCode;

  // toString method
  @override
  String toString() => 'User(name: $name, age: $age)';
}
