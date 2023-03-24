import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String? uid;
  final String? username;
  final String? name;
  final String? bio;
  final String? email;

  const UserEntity({
    this.uid,
    this.username,
    this.name,
    this.bio,
    this.email,
  });

  @override
  List<Object?> get props => [
        uid,
        username,
        name,
        bio,
        email,
      ];
}
