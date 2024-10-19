import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'generic_state.dart';

// A generic BLoC class for managing state of any type T.
// This allows for a reusable way to handle state updates, errors, and resets across different parts of the app.
class GenericBloc<T> extends Cubit<GenericState<T>> {
  // Constructor that initializes the BLoC with a GenericInitialState containing the provided data.
  GenericBloc(T data) : super(GenericInitialState<T>(data));

  // Method to update the data in the state.
  onUpdateData(T data) {
    emit(GenericUpdateState<T>(data, !state.changed, state.error));
  }

  // Method to emit a failed response state.
  onFailedResponse({String error = ""}) {
    emit(GenericFailedState<T>(state.data, !state.changed, error));
  }

  // Method to reset the state to the initial state with new data.
  onUpdateToInitState(T data) {
    emit(GenericInitialState<T>(data));
  }
}
