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