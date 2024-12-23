import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_st_ma_training/controllers/user_controller.dart';
import 'package:riverpod_st_ma_training/user.dart';

import 'home_page.dart';

//first method - with provider
// final nameProvider = Provider<String>((ref) {
//   return "Azizbek Yoqubov";
// });

//second method - with state provider for update
// final nameProvider = StateProvider<String?>((ref) => null);

//third method StateNotifier
final userController = StateNotifierProvider<UserNotifier, User>((ref) => UserNotifier(
  User(
      name: "",
      age: 0
  )
)
);


void main() {
  runApp(
      ProviderScope(
          child: const MyApp()
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
