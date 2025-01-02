import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_st_ma_training/main.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  void onSubmitted(WidgetRef ref, String value){
    ref.read(userChangeNotifierProvider).updateNameC(value);
  }

  void onSubmittedAge(WidgetRef ref, String value){
    ref.read(userChangeNotifierProvider).updateAgeC(int.parse(value));
  }
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final name = ref.watch(nameProvider) ?? "";
    // final user = ref.watch(userController);
    final user = ref.watch(userChangeNotifierProvider).user;
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
        centerTitle: true,
        backgroundColor: Colors.amber[300],
      ),
      body: Column(
            children: [
              SizedBox(height: 20),
              TextField(
                onSubmitted: (value) => onSubmitted(ref, value)
              ),
              SizedBox(height: 20),
              TextField(
                  onSubmitted: (value) => onSubmittedAge(ref, value)
              ),
              SizedBox(height: 20),
              Center(
                  child: Text(user.age.toString())
              )
            ],
          ),
    );
  }
}
