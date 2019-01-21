import 'app_config.dart';

class ApiConfig {
  // 第三方接口
  static const Map OEPN_API =  {
    // 
    "": AppConfig.AppVersion + "/",
  };

  // APP接口
  static const Map APP_API =  {
    // 用户登录
    "LOGIN_URL": AppConfig.AppUrl + "/login",
    // 用户详情
    "USER_INFO_URL": AppConfig.AppUrl  + "/user/info"
  };
}