import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Image(
          image: AssetImage('assets/images/Group 4.png'),
          width: MediaQuery.of(context).size.width*.25,
        ),
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          child:Icon(Icons.person,color: Colors.black,size: 25,)
        ),
        actions: [
          InkWell(
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child:Image(
                image: AssetImage('assets/images/Search.png')
              )
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Recommended Experts',
                    style:GoogleFonts.poppins(
                        color: HexColor('#00000'),
                        fontWeight: FontWeight.normal,
                        fontSize: 16
                    )
                ),
                Spacer(),
                Icon(Icons.more_horiz_outlined , size: 22,color: Colors.black,)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*.45,
                  height: MediaQuery.of(context).size.height*.29,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade200,width: 1)
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 0),
                        child: Image(image:AssetImage('assets/images/man.png'),
                        width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height*.15,
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  width: MediaQuery.of(context).size.width*.45,
                  height: MediaQuery.of(context).size.height*.29,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade200,width: 1)
                  ),
                  child: Column(
                    children: [
                      Image(image:AssetImage('assets/images/womav.png'),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height*.15,
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
