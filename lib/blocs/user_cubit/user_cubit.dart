import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../data/models/user_model.dart';

part 'user_state.dart';

// UserCubit class is responsible for managing the state of user data.
class UserCubit extends Cubit<UserState> {
  // Constructor for UserCubit.
  // It initializes the Cubit with the initial state as UserInitial.
  UserCubit() : super(UserInitial());

  // Method to update the user data.
  // It takes a UserModel object as a parameter, representing the new user data.
  // When called, it emits a new state called UserUpdated with the updated user details.
  onUpdateUser(UserModel user) {
    emit(UserUpdated(user));
  }
}
