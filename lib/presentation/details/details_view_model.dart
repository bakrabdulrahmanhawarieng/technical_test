part of 'details_imports.dart';

class DetailsViewModel {
  late UserModel user;

  // initiating user object which contains the details that user add it using the form
  initFields(BuildContext context) {
    // Retrieve the current user object from the UserCubit.
    // This reads the updated value of the user state, which was previously modified in the UserCubit.
    user = context.read<UserCubit>().state.user;
  }

// function to show first letter of user first and last name
  String getInitials() {
    List<String> nameParts = user.fullName!.trim().split(' ');
    String initials =
        nameParts.map((e) => e.isNotEmpty ? e[0] : '').take(2).join();

    return initials.toUpperCase();
  }
}
