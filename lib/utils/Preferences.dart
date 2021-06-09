import 'package:shared_preferences/shared_preferences.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class Preferences{
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  void setToken(String token) async {
    SharedPreferences prefs = await this._prefs;
    prefs.setString("token", token);
  }

  Future<String> getToken() async {
    SharedPreferences prefs = await this._prefs;
    return prefs.get("token");
  }

  Future<Map<String, dynamic>> getUser() async {
    SharedPreferences prefs = await this._prefs;

    String token =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6Ikd1c3Rhdm8iLCJpYXQiOjE1MTYyMzkwMjIsImV4cCI6NDczNDYxNTg1OH0.hh-TTBPS8z-UxdmfXWn7AwW2y_Lq3aPnlIQdqV2KEC4";

  /* decode() method will decode your token's payload */
  Map<String, dynamic> decodedToken = JwtDecoder.decode(token);

    return prefs.get("token");
  }

}