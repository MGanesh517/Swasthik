import 'package:shared_preferences/shared_preferences.dart';

class SessionManager {
  static Future setAccessToken(String? accessToken) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('accessToken', accessToken!);
  }

  static Future getAccessToken() async {
    final prefs = await SharedPreferences.getInstance();
    final accessToken = prefs.getString('accessToken');
    if (accessToken == null) {
      return '';
    } else {
      return accessToken;
    }
  }

  static Future setRefreshToken(String? refreshToken) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('refreshToken', refreshToken!);
  }

  static Future getRefreshToken() async {
    final prefs = await SharedPreferences.getInstance();
    final refreshToken = prefs.getString('refreshToken');
    if (refreshToken == null) {
      return '';
    } else {
      return refreshToken;
    }
  }

  static Future setEmpCode(String empCode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('empCode', empCode);
  }

  static Future getEmpCode() async {
    final prefs = await SharedPreferences.getInstance();
    final empCode = prefs.getString('empCode');
    if (empCode == null) {
      return '';
    } else {
      return empCode;
    }
  }

  static Future setPassword(String password) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('password', password);
  }

  static Future getPassword() async {
    final prefs = await SharedPreferences.getInstance();
    final mobile = prefs.getString('password');
    if (mobile == null) {
      return '';
    } else {
      return mobile;
    }
  }

  static Future setUserType(int? userType) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('userType', userType!);
  }

  static Future getUserType() async {
    final prefs = await SharedPreferences.getInstance();
    final userType = prefs.getInt('userType');
    if (userType == null) {
      return 0;
    } else {
      return userType;
    }
  }

  // static Future setUserDepartment(int? department) async {
  //   final prefs = await SharedPreferences.getInstance();
  //   await prefs.setInt('department', department!);
  // }

  // static Future getUserDepartment() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final department = prefs.getInt('department');
  //   if (department == null) {
  //     return 0;
  //   } else {
  //     return department;
  //   }
  // }

  static Future setMobile(String mobile) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('mobile', mobile);
  }

  static Future getMobile() async {
    final prefs = await SharedPreferences.getInstance();
    final mobile = prefs.getString('mobile');
    if (mobile == null) {
      return '';
    } else {
      return mobile;
    }
  }

  static Future setDepartments(List<String> departments) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('departments', departments);
  }

  static Future getDepartments() async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getStringList('departments') != null) {
      final departments = prefs.getStringList('departments');
      return departments;
    } else {
      final departments = [''];
      return departments;
    }
  }

  static Future setRememberMe(bool rememberMe) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('rememberMe', rememberMe);
  }

  static Future getRememberMe() async {
    final prefs = await SharedPreferences.getInstance();
    final rememberMe = prefs.getBool('rememberMe');
    if (rememberMe == null) {
      return false;
    } else {
      return rememberMe;
    }
  }
}
