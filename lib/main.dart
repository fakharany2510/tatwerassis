import 'package:flutter/material.dart';
import 'package:tatwerassis/business_logic/bloc/bloc_observer.dart';
import 'package:tatwerassis/presentation/screens/start_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StartScreen()
    );
  }
}

