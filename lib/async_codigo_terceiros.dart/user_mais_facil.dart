import 'dart:convert';
import 'package:dart_poo/async_codigo_terceiros.dart/user_types.dart';

class UserMaisFacil {
  final String id;
  final String name;
  final String username;
  final List<UserTypes> userTypes;
  UserMaisFacil({
    required this.id,
    required this.name,
    required this.username,
    required this.userTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'username': username,
      'userTypes': userTypes.map((x) => x.toMap()).toList(),
    };
  }

  factory UserMaisFacil.fromMap(Map<String, dynamic> map) {
    return UserMaisFacil(
      id: map['id'] as String,
      name: map['name'] as String,
      username: map['username'] as String,
      userTypes: List<UserTypes>.from(
        (map['userTypes'] as List<int>).map<UserTypes>(
          (x) => UserTypes.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserMaisFacil.fromJson(String source) =>
      UserMaisFacil.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserMaisFacil(id: $id, name: $name, username: $username, userTypes: $userTypes)';
  }
}
