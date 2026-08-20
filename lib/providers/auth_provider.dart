import 'package:ecomerce_flutter/models/user_model.dart';
import 'package:ecomerce_flutter/services/auth_service.dart';
import 'package:flutter/material.dart';
class AuthProvider with ChangeNotifier {
  UserModel? _user;

  UserModel? get user => _user;

  void setUser(UserModel? newUser) {
    _user = newUser;
    notifyListeners();
  }

  Future<bool> register({
    String? name, 
    String? username, 
    String? email, 
    String? password
    }) async {
    try{
      UserModel user = await AuthService().register(name: name, username: username, email: email, password: password);
      setUser(user);
      return true;
    }catch(e){
      return false;
    }
  }
}