import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tatwerassis/presentation/screens/chatscreen.dart';
//import 'package:expandable_bottom_sheet/expandable_bottom_sheet.dart';

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
          image: const AssetImage('assets/images/Group 4.png'),
          width: MediaQuery.of(context).size.width*.25,
        ),
        leading: const CircleAvatar(
          backgroundColor: Colors.white,
          child:Icon(Icons.person,color: Colors.black,size: 25,)
        ),
        actions:const [
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
                const Spacer(),
                const Icon(Icons.more_horiz_outlined , size: 22,color: Colors.black,)
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 0),
                        child: Image(image:const AssetImage('assets/images/man.png'),
                        width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height*.15,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children:  [
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            SizedBox(width: MediaQuery.of(context).size.height*.01,),
                            Expanded(
                              child: Text('(5.0)',
                                  style:GoogleFonts.poppins(
                                      color: HexColor('#C2C2C2'),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15
                                  )
                              ),
                            ),
                            const Icon(
                              Icons.favorite,
                              color: Colors.grey,
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0
                        ),
                        child: Text('Karem Adel',
                            style:GoogleFonts.poppins(
                                color: HexColor('#1C1E1E'),
                                fontWeight: FontWeight.w300,
                                fontSize: 16
                            )
                        ),
                      ),
                      const SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0
                        ),
                        child: Text('Supply Chain',
                            style:GoogleFonts.poppins(
                                color: HexColor('#C2C2C2'),
                                fontWeight: FontWeight.w300,
                                fontSize: 14
                            )
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(image:const AssetImage('assets/images/womav.png'),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height*.15,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children:  [
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            SizedBox(width: MediaQuery.of(context).size.height*.01,),
                            Expanded(
                              child: Text('(4.9)',
                                  style:GoogleFonts.poppins(
                                      color: HexColor('#C2C2C2'),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15
                                  )
                              ),
                            ),
                            const Icon(
                              Icons.favorite,
                              color: Colors.grey,
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0
                        ),
                        child: Text('Merna Adel',
                            style:GoogleFonts.poppins(
                                color: HexColor('#1C1E1E'),
                                fontWeight: FontWeight.w300,
                                fontSize: 16
                            )
                        ),
                      ),
                      const SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0
                        ),
                        child: Text('Supply Chain',
                            style:GoogleFonts.poppins(
                                color: HexColor('#C2C2C2'),
                                fontWeight: FontWeight.w300,
                                fontSize: 14
                            )
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Online Experts',
                    style:GoogleFonts.poppins(
                        color: HexColor('#00000'),
                        fontWeight: FontWeight.normal,
                        fontSize: 16
                    )
                ),
                const Spacer(),
                Icon(Icons.more_horiz_outlined , size: 22,color: HexColor('#C2C2C2'),)
              ],
            ),
          ),
          SizedBox(
            height: 100,
            width: double.infinity,
            child: ListView.separated(
               scrollDirection: Axis.horizontal,
               itemCount: 10,
               shrinkWrap: true,
               itemBuilder: (context,index){
                   return Padding(
                     padding: const EdgeInsets.symmetric(
                       horizontal: 10
                     ),
                     child: InkWell(
                       onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
                       },
                       child: Container(
                         child: Column(
                           children: [
                             Stack(
                               children:  [
                                 const Image(
                                   image: AssetImage('assets/images/Mask.png'),
                                 ),
                                 Positioned(
                                   child: Container(
                                     decoration: BoxDecoration(
                                       color: Colors.green,
                                       borderRadius: BorderRadius.circular(50)
                                     ),
                                     height: 10,
                                     width: 10,
                                   ),
                                   top: 0,
                                   right: 0,
                                 ),

                               ],
                             ),
                             const SizedBox(height: 10,),
                             Text('Lance',
                                 style:GoogleFonts.poppins(
                                     color: HexColor('#777D80'),
                                     fontWeight: FontWeight.w400,
                                     fontSize: 12
                                 )
                             ),
                           ],
                         ),
                       ),
                     ),
                   );
               },
               separatorBuilder: (context,index){
                  return const SizedBox(width: 0,);
               },
            ),
          ),

          // Spacer(),
          // Container(
          //   height: 150,
          //   child: ExpandableBottomSheet(
          //     enableToggle: true,
          //     background: Container(
          //       color: Colors.red,
          //       child: Center(
          //         child: Container(
          //            decoration: BoxDecoration(
          //              color: Colors.grey,
          //              borderRadius: BorderRadius.circular(10)
          //            ),
          //           height: 10,
          //           width: 30,
          //         ),
          //       ),
          //     ),
          //     persistentHeader: Container(
          //       height: 40,
          //       color: Colors.blue,
          //       child: const Center(
          //         child: Text('Header'),
          //       ),
          //     ),
          //     expandableContent: Container(
          //       height: 500,
          //       color: Colors.green,
          //       child: const Center(
          //         child: Text('Content'),
          //       ),
          //     ),
          //   ),
          // ),
          Spacer(),
          Container(
            height: 50,
            width: 50,
            decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey.shade300,
            ),
              child:IconButton(onPressed: (){
                showModalBottomSheet(context: context,
                    builder:(context)=> Container(
                      height: MediaQuery.of(context).size.height*1,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(height: 10,),
                            Padding(
                              padding:EdgeInsets.only(top: 5,right: 10,left: 10),
                              child: Container(
                                height: MediaQuery.of(context).size.height*.09,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color:Colors.grey.shade200,width: 2),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      child: Image(
                                        image: AssetImage('assets/images/Group 114.png'),
                                      ),
                                    ),
                                    SizedBox(width: 20,),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Information Technology',
                                              style:GoogleFonts.poppins(
                                                  color: HexColor('#00000'),
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 16
                                              )
                                          ),
                                          Text('23 Experts',
                                              style:GoogleFonts.poppins(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 16
                                              )
                                          ),
                                        ],
                                      ),
                                    ),
                                    Spacer(),
                                    Padding(padding: EdgeInsets.all(8).flipped,
                                      child: IconButton(
                                        onPressed: (){},
                                        icon: Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding:EdgeInsets.only(top: 5,right: 10,left: 10),
                              child: Container(
                                height: MediaQuery.of(context).size.height*.09,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color:Colors.grey.shade200,width: 2),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      child: Image(
                                        image: AssetImage('assets/images/Group 115.png'),
                                      ),
                                    ),
                                    SizedBox(width: 20,),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Supply Chain',
                                              style:GoogleFonts.poppins(
                                                  color: HexColor('#00000'),
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 16
                                              )
                                          ),
                                          Text('12 Experts',
                                              style:GoogleFonts.poppins(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 16
                                              )
                                          ),
                                        ],
                                      ),
                                    ),
                                    Spacer(),
                                    Padding(padding: EdgeInsets.all(8).flipped,
                                      child: IconButton(
                                        onPressed: (){},
                                        icon: Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding:EdgeInsets.only(top: 5,right: 10,left: 10),
                              child: Container(
                                height: MediaQuery.of(context).size.height*.09,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color:Colors.grey.shade200,width: 2),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      child: Image(
                                        image: AssetImage('assets/images/Group 116.png'),
                                      ),
                                    ),
                                    SizedBox(width: 20,),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Security',
                                              style:GoogleFonts.poppins(
                                                  color: HexColor('#00000'),
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 16
                                              )
                                          ),
                                          Text('14 Experts',
                                              style:GoogleFonts.poppins(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 16
                                              )
                                          ),
                                        ],
                                      ),
                                    ),
                                    Spacer(),
                                    Padding(padding: EdgeInsets.all(8).flipped,
                                      child: IconButton(
                                        onPressed: (){},
                                        icon: Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding:EdgeInsets.only(top: 5,right: 10,left: 10),
                              child: Container(
                                height: MediaQuery.of(context).size.height*.09,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color:Colors.grey.shade200,width: 2),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      child: Image(
                                        image: AssetImage('assets/images/Group 117.png'),
                                      ),
                                    ),
                                    SizedBox(width: 20,),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Human Resources',
                                              style:GoogleFonts.poppins(
                                                  color: HexColor('#00000'),
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 16
                                              )
                                          ),
                                          Text('8 Experts',
                                              style:GoogleFonts.poppins(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 16
                                              )
                                          ),
                                        ],
                                      ),
                                    ),
                                    Spacer(),
                                    Padding(padding: EdgeInsets.all(8).flipped,
                                      child: IconButton(
                                        onPressed: (){},
                                        icon: Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding:EdgeInsets.only(top: 5,right: 10,left: 10),
                              child: Container(
                                height: MediaQuery.of(context).size.height*.09,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color:Colors.grey.shade200,width: 2),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      child: Image(
                                        image: AssetImage('assets/images/Group 118.png'),
                                      ),
                                    ),
                                    SizedBox(width: 20,),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Immigiration',
                                              style:GoogleFonts.poppins(
                                                  color: HexColor('#00000'),
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 16
                                              )
                                          ),
                                          Text('18 Experts',
                                              style:GoogleFonts.poppins(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 16
                                              )
                                          ),
                                        ],
                                      ),
                                    ),
                                    Spacer(),
                                    Padding(padding: EdgeInsets.all(8).flipped,
                                      child: IconButton(
                                        onPressed: (){},
                                        icon: Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding:EdgeInsets.only(top: 5,right: 10,left: 10),
                              child: Container(
                                height: MediaQuery.of(context).size.height*.09,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color:Colors.grey.shade200,width: 2),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      child: Image(
                                        image: AssetImage('assets/images/Group 119.png'),
                                      ),
                                    ),
                                    SizedBox(width: 20,),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Translation',
                                              style:GoogleFonts.poppins(
                                                  color: HexColor('#00000'),
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 16
                                              )
                                          ),
                                          Text('8 Experts',
                                              style:GoogleFonts.poppins(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 16
                                              )
                                          ),
                                        ],
                                      ),
                                    ),
                                    Spacer(),
                                    Padding(padding: EdgeInsets.all(8).flipped,
                                      child: IconButton(
                                        onPressed: (){},
                                        icon: Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )

                );
              }, icon: Icon(Icons.arrow_upward_rounded),color: Colors.black,)
          )
        ],
      ),
    );
  }
}
