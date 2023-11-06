part of 'user_bloc.dart';

abstract class UserEvent {}

class AddUser extends UserEvent {}

class UpdateUser extends UserEvent {}

class DeleteUser extends UserEvent {}
