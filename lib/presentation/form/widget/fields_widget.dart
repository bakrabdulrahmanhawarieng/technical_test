part of 'widgets_imports.dart';

class FieldsWidget extends StatefulWidget {
  final FormViewModel formViewModel;

  const FieldsWidget({super.key, required this.formViewModel});

  @override
  State<FieldsWidget> createState() => _FieldsWidgetState();
}

class _FieldsWidgetState extends State<FieldsWidget> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formViewModel.formKey,
      child: Column(
        children: [
          CustomTextField(
            label: AppStrings.fullName,
            hint: AppStrings.fullNameHint,
            controller: widget.formViewModel.fullNameController,
            validator: (value) => validateFullName(value),
          ),
          SizedBox(height: AppDimensions.mediumHeight),
          CustomTextField(
            label: AppStrings.emailAddress,
            hint: AppStrings.emailAddressHint,
            controller: widget.formViewModel.emailAddressController,
            textInputType: TextInputType.emailAddress,
            validator: (value) => validateEmailAddress(value),
          ),
          SizedBox(height: AppDimensions.mediumHeight),
          CustomTextField(
            label: AppStrings.phoneNumber,
            hint: AppStrings.phoneNumberHint,
            controller: widget.formViewModel.phoneNumberController,
            textInputType: TextInputType.phone,
            validator: (value) => validatePhoneNumber(value),
          ),
          SizedBox(height: AppDimensions.mediumHeight),
          CustomTextField(
            label: AppStrings.address,
            hint: AppStrings.addressHint,
            controller: widget.formViewModel.addressController,
            validator: (value) => validateAddress(value),
          ),
          SizedBox(height: AppDimensions.mediumHeight),
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
              bloc: widget.formViewModel.passwordVisibilityBloc,
              builder: (context, state) {
                bool visiblePassword = state.data;
                return CustomTextField(
                  label: AppStrings.password,
                  obecureText: visiblePassword
                      ? false
                      : true, // hiding or showing password value according to user selection
                  textInputType: TextInputType.visiblePassword,
                  controller: widget.formViewModel.passwordController,
                  textInputAction: TextInputAction.done,
                  suffixIcon: InkWell(
                    onTap: () =>
                        widget.formViewModel.changePasswordVisibility(),
                    child: Icon(
                      visiblePassword ? Icons.visibility : Icons.visibility_off,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  validator: (value) => validatePassword(value),
                );
              }),
        ],
      ),
    );
  }
}
