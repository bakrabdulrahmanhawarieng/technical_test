part of 'widgets_imports.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: 250.h,
      decoration: BoxDecoration(
        gradient: AppColors.appMainGradient,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.r),
            bottomRight: Radius.circular(40.r)),
      ),
      child: Center(
        child: Padding(
          padding: AppPaddings.largeTopPadding,
          child: Text(
            AppStrings.formTitle,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
