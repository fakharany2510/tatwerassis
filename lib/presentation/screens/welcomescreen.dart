import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tatwerassis/presentation/Layouts/home_layout.dart';
import 'package:tatwerassis/presentation/widgets/defaultbutton.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.1,
                left:MediaQuery.of(context).size.width*.2 ),
            child:Stack(
              children: [
                Image(image: AssetImage('assets/images/Path 107.png')),
                Positioned(
                  right: MediaQuery.of(context).size.width*.08,
                  top: MediaQuery.of(context).size.height*.02,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Text('Hi,My name is',
                              style:GoogleFonts.poppins(
                                  color: HexColor('#00000'),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16
                              )
                          ),
                          Text(' Oranobor',
                              style:GoogleFonts.poppins(
                                  color: HexColor('#00000'),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17
                              )
                          ),
                        ],
                      ),
                      Text('I will always be thwew to \nhelp and assist you.',
                          style:GoogleFonts.poppins(
                              color: HexColor('#00000'),
                              fontWeight: FontWeight.normal,
                              fontSize: 16
                          )
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Text('Say',
                              style:GoogleFonts.poppins(
                                  color: HexColor('#00000'),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 17
                              )
                          ),
                          Text(' Start',
                              style:GoogleFonts.poppins(
                                  color: HexColor('#00000'),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16
                              )
                          ),
                          Text(' To go to next',
                              style:GoogleFonts.poppins(
                                  color: HexColor('#00000'),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16
                              )
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
           Align(
             alignment: Alignment.center,
               child: Image(image: AssetImage('assets/images/boot.png'))),
            SizedBox(height: 25,),
            defaultButton(
                width: MediaQuery.of(context).size.width*.5,
                height: MediaQuery.of(context).size.width*.16,
                textColor: Colors.white,
                buttonColor: HexColor('#16919B'),
                buttonText: 'Next',
                function: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeLayout()));
                },
                fontSize: 18,
                raduis: 10
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height*.07,
                left: MediaQuery.of(context).size.width*.38,
              ),
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
