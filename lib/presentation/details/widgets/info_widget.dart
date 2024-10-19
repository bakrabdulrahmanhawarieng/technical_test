part of 'widgets_imports.dart';

// user details widget

class InfoWidget extends StatelessWidget {
  final String title;
  final String value;
  final bool? hideField;
  const InfoWidget(
      {super.key,
      required this.title,
      required this.value,
      this.hideField = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.medium,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title, // detail label or title
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: AppColors.primaryColor),
            ),
            SizedBox(
              height: AppDimensions.smallHeight,
            ),
            Text(
              hideField == true ? "******" : value, // detail value
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
