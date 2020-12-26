import 'package:flutter/foundation.dart';
import 'package:quiver/core.dart';

class LoginData {
  final String name;
  final String password;
  final String phoneNumber;
  final String firstName;
  final String lastName;

  LoginData({
    @required this.name,
    @required this.password,
    this.phoneNumber, 
    this.firstName,
    this.lastName
  });

  @override
  String toString() {
    return '$runtimeType($name, $password)';
  }

  bool operator ==(Object other) {
    if (other is LoginData) {
      return name == other.name && password == other.password;
    }
    return false;
  }

  int get hashCode => hash2(name, password);
}
