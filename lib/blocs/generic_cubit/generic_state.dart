part of 'generic_cubit.dart';

// Abstract class representing a generic state for the GenericBloc.
// Extends Equatable to enable value-based comparison, allowing efficient state updates.
// It holds three fields: data, changed, and error.
abstract class GenericState<T> extends Equatable {
  // The main data of type T that this state holds.
  final T data;

  // A boolean to indicate if the state has changed, useful for triggering UI updates.
  final bool changed;

  // A string to store any error messages associated with the state.
  final String error;

  // Constructor to initialize the data, changed, and error values.
  const GenericState(this.data, this.changed, this.error);
}

// Represents the initial state of the GenericBloc when it is first created.
// The 'changed' value is set to false and 'error' is an empty string by default.
class GenericInitialState<T> extends GenericState<T> {
  const GenericInitialState(T data) : super(data, false, "");

  @override
  List<Object> get props => [changed];
}

// Represents a state where data has been updated.
// It retains the updated data, changed status, and any error message.
class GenericUpdateState<T> extends GenericState<T> {
  const GenericUpdateState(super.data, super.changed, super.error);

  @override
  List<Object> get props => [changed];
}

// Represents a state where an error has occurred while handling data.
// It retains the current data, changed status, and the error message.
class GenericFailedState<T> extends GenericState<T> {
  const GenericFailedState(super.data, super.changed, super.error);

  @override
  List<Object> get props => [changed, error];
}
