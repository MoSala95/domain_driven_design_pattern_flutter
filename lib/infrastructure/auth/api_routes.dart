class ApiRoutes {
  static const String BaseUrl = "https://write your own domain here.com";
  static const String api = BaseUrl + "/api/";
  static const String register = api + "register";
  static const String login = api + "login";
  static const String login_with_userName = api + "login?login_by_username";
  static const String general = api + "general";
  static const String notifications = api + "notifications";
  static const String sendNotificationViaSms = notifications + "/send-via/sms";

  static const String logout = api + "logout";
  static const String profile = api + "profile";
  static const String updateProfile = profile + "/update";
  static const String user_plans_categories = profile + "/categories";
  static const String update_user_plans_categories = updateProfile + "/categories";
  static const String all_plans_categories = api + "categories";

  static const String accept_orders = profile + "/update/accept_orders";

  static const String updateProfilePic = updateProfile + "/logo";

  static const String check_username_availability = api + "check-username-availability";

  static const String resetPassword = api + "reset_password";
  static const String sendCodeResetPassword = api + "sendCodeResetPassword";
  static const String forgetPassword = api + "forgetPassword";
  static const String editProfile = api + "edit_profile";
  static const String countries = api + "countries";

}