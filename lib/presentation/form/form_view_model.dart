part of 'form_imports.dart';

class FormViewModel {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController emailAddressController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GenericBloc<bool> passwordVisibilityBloc = GenericBloc<bool>(false);
  final formKey = GlobalKey<FormState>(); // Form GlobalKey

  onSubmitPressed(BuildContext context) {
    // Validate the form fields
    if (formKey.currentState?.validate() ?? false) {
      // update the bloc value with the values user entered
      context.read<UserCubit>().onUpdateUser(UserModel(
          fullName: fullNameController.text,
          emailAddress: emailAddressController.text,
          address: addressController.text,
          phoneNumber: phoneNumberController.text,
          password: passwordController.text));
      // push to next screen and remove the previous route
      AutoRouter.of(context).replace(ConfirmationViewRoute());
    }
  }

// changing password visibility (hide or show)
  changePasswordVisibility() {
    passwordVisibilityBloc.onUpdateData(!passwordVisibilityBloc.state.data);
  }

// disposing text controllers
  disposeControllers() {
    addressController.dispose();
    emailAddressController.dispose();
    fullNameController.dispose();
    passwordController.dispose();
    phoneNumberController.dispose();
  }
}
