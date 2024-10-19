part of 'user_cubit.dart';

// Abstract class representing the different states of UserCubit.
// Extends Equatable to make state comparison easier, ensuring state updates only when necessary.
abstract class UserState extends Equatable {
  // Holds the user data for each state.
  final UserModel user;
  // Constructor for the UserState, requiring a UserModel instance.
  const UserState(this.user);
}

// Represents the initial state of the UserCubit when it is first created.
// Contains default or empty user data.
class UserInitial extends UserState {
  // Constructor that initializes the UserModel with default values.
  UserInitial() : super(UserModel());

  // Equatable's props method ensures that only significant changes trigger a state update.
  // Here, it checks changes to the 'user' field.
  @override
  List<Object> get props => [user];
}

// Represents the state when user data is updated in the UserCubit.
// Contains the updated UserModel data.
class UserUpdated extends UserState {
  // Constructor that takes the updated UserModel and passes it to the superclass.
  const UserUpdated(super.user);

  // Equatable's props method to compare the updated user data for state changes.
  @override
  List<Object> get props => [user];
}
