// user model which contains the fields entered by user in the form
class UserModel {
  final String? fullName;
  final String? address;
  final String? emailAddress;
  final String? phoneNumber;
  final String? password;
  UserModel(
      {this.fullName,
      this.address,
      this.emailAddress,
      this.phoneNumber,
      this.password});
}
