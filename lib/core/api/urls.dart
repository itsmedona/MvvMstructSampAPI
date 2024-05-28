// ignore_for_file: constant_identifier_names, non_constant_identifier_names

class ApiUrls {
  static String BASE_URL = "";

  ///get base url
  static const GET_BASE_URL = "/get_customer_link";

  ///auth
  static const LOGIN_URL = "/app_login";

  ///home
  static const UER_MENU_URL = "/user-permission-menus";
  static const CALENDAR_VIEW_URL = "/calendar_view";
  static const CALENDAR_VIEW_DETAILS_URL = "/attendance_date_details";

  ///profile
  static const PROFILE_URL = "/empl_profile";
  static const DOCUMENTS_URL = "/empl_documents";

  ///services
  static const GET_SERVICES_URL = "/get-service-details";
  static const DELETE_SERVICES_URL = "/delete-service-details";

  ///request
  static const POST_REQUEST_URL = "/add-request";
  static const ATTENDANCE_URL = "/check_in_out";
  static const ATTENDANCE_STATUS_URL = "/check_status";

  ///leave
  static const GET_LEAVE_TYPES_URL = "/get-leave-types";
}
