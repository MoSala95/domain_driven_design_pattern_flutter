class ApiRoutes {
  static const String BaseUrl = "https://write your own domain here.com";
  static const String api = BaseUrl + "/api/";
  static const String register = api + "register";
  static const String login = api + "login";
  static const String login_with_userName = api + "login?login_by_username";
  static const String logout = api + "logout";
  static const String check_username_availability = api + "check-username-availability";

  static const String resetPassword = api + "reset_password";
  static const String sendCodeResetPassword = api + "sendCodeResetPassword";
  static const String forgetPassword = api + "forgetPassword";

}