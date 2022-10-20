import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:Lottie.asset('assets/images/nodata.json'),
      ),
    );
  }
}
