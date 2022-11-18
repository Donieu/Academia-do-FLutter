// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'user_types.dart';

class User {
  final String id;
  final String name;
  final String username;
  final List<UserTypes> userTypes;
  User({
    required this.id,
    required this.name,
    required this.username,
    required this.userTypes,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    // recebe um map e transforma em um usuário
    return User(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      username: map['username'] ?? '',
      userTypes: map['user_Types']?.map<UserTypes>((type) {
            // esse objeto type nada mais é que um mapa,então type = Map<String, dynamic>
            return UserTypes.fromMap(type);
          }).toList() ?? <UserTypes>[],
    );
  }

  factory User.fromJson(String source) => User.fromMap(jsonDecode(source)); // fromJson pegar o mapa asource e transforma num mapa de chave:valor pois ele chama o user.fromMap

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'userId': username,
      'user_Types': userTypes.map((e) => e.toMap).toList()
    };
  }

  String toJson() => jsonEncode(toMap());

  @override
  String toString() {
    return 'User(id: $id, name: $name, username: $username, userTypes: $userTypes)';
  }
}



// id: '1',
// name: 'daniel breno',
// username: 'donieu',
// user_types[
//   id: '12',
//   userId: '1',
//   name: 'Chupa cu'
// ]