import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
  try {
    String userData = await fetchUserData();

    Map<String, dynamic> user = jsonDecode(userData);

    return 'Hello ${user['username']}';
  } catch (error) {
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    bool isLoggedIn = await checkCredentials();

    print('There is a user: $isLoggedIn');

    if (isLoggedIn) {
      return await greetUser();
    } else {
      return 'Wrong credentials';
    }
  } catch (error) {
    return 'error caught: $error';
  }
}