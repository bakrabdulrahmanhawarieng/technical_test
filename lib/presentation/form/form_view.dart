part of 'form_imports.dart';

@RoutePage()
class FormView extends StatefulWidget {
  const FormView({super.key});

  @override
  State<FormView> createState() => _FormViewState();
}

class _FormViewState extends State<FormView> {
  FormViewModel formViewModel = FormViewModel();
  @override
  void dispose() {
    formViewModel.disposeControllers();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: [
          // The colored header which contains the gradient shape with sign up title
          FormHeaderWidget(),
          SizedBox(height: AppDimensions.largeHeight),

          // Textfields form widget
          FieldsWidget(
            formViewModel: formViewModel,
          ),
          SizedBox(
            height: AppDimensions.extraLargeHeight,
          ),
          Center(
            child: CustomGradientButton(
                text: AppStrings.submitButton,
                onPressed: () => formViewModel.onSubmitPressed(context)),
          ),
          SizedBox(
            height: AppDimensions.extraLargeHeight,
          ),
        ],
      ),
    );
  }
}
