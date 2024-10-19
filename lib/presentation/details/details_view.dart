part of 'details_imports.dart';

@RoutePage()
class DetailsView extends StatefulWidget {
  const DetailsView({super.key});

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  DetailsViewModel detailsViewModel = DetailsViewModel();
  @override
  void initState() {
    super.initState();
    detailsViewModel.initFields(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              AppStrings.userDetailsTitle,
              style: Theme.of(context).textTheme.titleLarge!,
            ),
          ),
          SizedBox(
            height: AppDimensions.mediumHeight,
          ),
          CircleAvatar(
            backgroundColor: AppColors.lightGreyColor,
            radius: 60.r,
            child: Text(
              detailsViewModel.getInitials(),
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: AppColors.primaryColor),
            ),
          ),
          SizedBox(
            height: AppDimensions.largeHeight,
          ),

          // full name
          InfoWidget(
            title: AppStrings.fullName,
            value: detailsViewModel.user.fullName!,
          ),

          // email address
          InfoWidget(
            title: AppStrings.emailAddress,
            value: detailsViewModel.user.emailAddress!,
          ),

          // Address
          InfoWidget(
            title: AppStrings.address,
            value: detailsViewModel.user.address!,
          ),

          // phone number
          InfoWidget(
            title: AppStrings.phoneNumber,
            value: detailsViewModel.user.phoneNumber!,
          ),

          // password
          InfoWidget(
            title: AppStrings.password,
            hideField: true, // For hiding the password value
            value: detailsViewModel.user.password!,
          ),
        ],
      ),
    );
  }
}
