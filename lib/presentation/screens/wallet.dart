import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Wallet extends StatelessWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Center(
        child:Lottie.asset('assets/images/nodata.json'),
      ),
    );
  }
}
