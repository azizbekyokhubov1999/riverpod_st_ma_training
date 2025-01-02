import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../user.dart';

class UserNotifier extends StateNotifier<User>{
  UserNotifier(super.state);

void updateName(String n){
  state = state.copyWith(name: n);
}

void updateAge(int a){
  state = state.copyWith(age: a);
}

}

class UserChangeNotifier extends ChangeNotifier{
  User user = User(name: "", age: 0);

  void updateNameC(String n){
    user = user.copyWith(name: n);
    notifyListeners();
  }

  void updateAgeC(int a){
    user = user.copyWith(age: a);
    notifyListeners();
  }
}