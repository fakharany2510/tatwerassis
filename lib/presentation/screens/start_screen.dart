import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tatwerassis/presentation/screens/welcomescreen.dart';
import 'package:tatwerassis/presentation/widgets/defaultbutton.dart';


class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child:Image(
                image: AssetImage('assets/images/start.png'),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height*.45,
              left: MediaQuery.of(context).size.width*.29,
              child: Image(
                image: AssetImage('assets/images/Group 4.png'),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height*.52,
              left: MediaQuery.of(context).size.width*.23,
              child: Text('Expert From Every Planet',
              style:GoogleFonts.poppins(
                color: HexColor('#5F5F5F'),
                fontWeight: FontWeight.w600,
                fontSize: 18
              )
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height*.84,
              left: MediaQuery.of(context).size.width*.05,
              child: defaultButton(
                width: MediaQuery.of(context).size.width*.9,
                height: MediaQuery.of(context).size.width*.16,
                textColor: Colors.white,
                buttonColor: HexColor('#16919B'),
                buttonText: 'Get Started',
                function: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()));
                },
                fontSize: 18,
                raduis: 10
              )
            ),
            Positioned(
              top: MediaQuery.of(context).size.height*.91,
              left: MediaQuery.of(context).size.width*.16,
              child: Row(
                children: [
                  Text('Don\'t have an account ? ',
              style:GoogleFonts.poppins(
                  color: HexColor('#5F5F5F'),
                fontWeight: FontWeight.normal,
                fontSize: 15
            )
                  ),
                  TextButton(onPressed: (){}, child:  Text('SignUp',
                      style:GoogleFonts.poppins(
                          color: HexColor('#16919B'),
                          fontWeight: FontWeight.normal,
                          fontSize: 15
                      )
                  ),)
                ],
              )
            ),
            Positioned(
                top: MediaQuery.of(context).size.height*.96,
                left: MediaQuery.of(context).size.width*.38,
                child: Row(
                  children: [
                    Image(image:AssetImage('assets/images/Path 8.png')),
                    Text(' English',
                        style:GoogleFonts.poppins(
                            color: HexColor('#5F5F5F'),
                            fontWeight: FontWeight.normal,
                            fontSize: 15
                        )
                    )
                  ],
                )
            ),


          ],
        ),
      ),
    );
  }
}
