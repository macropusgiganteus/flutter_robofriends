// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class Robot extends Equatable {
  final int _id;
  final String _name;
  final String _email;

  int get id => _id;
  String get name => _name;
  String get email => _email;

  const Robot({
    required id,
    required name,
    required email,
  })  : _id = id,
        _name = name,
        _email = email;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': _id,
      'name': _name,
      'email': _email,
    };
  }

  factory Robot.fromMap(Map<String, dynamic> map) {
    return Robot(
      id: map['id'] as int,
      name: map['name'] as String,
      email: map['email'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Robot.fromJson(String source) =>
      Robot.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  List<Object> get props => [_id, _name, _email];
}
