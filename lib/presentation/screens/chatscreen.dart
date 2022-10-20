import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController controller = TextEditingController();
  var formKey =GlobalKey<FormState>();
  List<String> messages=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
                width: MediaQuery.of(context).size.width*.9,
                height: MediaQuery.of(context).size.height*.92,
                child: ListView.builder(
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          decoration: BoxDecoration(
                              color: HexColor('#16919B'),
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20))
                          ),

                          width:200,
                          height: 35,
                          child: Text('${messages[index]}',
                              textAlign: TextAlign.center,
                              style:GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16
                              )
                          ),
                        ),
                      ),
                    ),
                  itemCount:messages.length,
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height*.07 ,
                      width: MediaQuery.of(context).size.width*.86,
                      color: Colors.grey.shade200,
                      child: TextFormField(

                        style: TextStyle(
                          color:Colors.black,

                        ),
                        keyboardType: TextInputType.text,
                        controller: controller,
                        onChanged: (value){
                          setState((){

                          });
                        },
                        decoration: InputDecoration(
                          focusColor: Colors.grey,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color:Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color:Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: '$Type some thing',
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          prefixIcon:  ImageIcon(
                            const AssetImage("assets/images/Path 8.png"),
                            color:Colors.black,
                          ),
                        ),
                        maxLines: 1,
                        validator: (value){
                          if(value!.isEmpty){
                            return'write your message';
                          }
                        },
                      ),
                    ),
                    IconButton(onPressed: (){
                      setState((){
                        messages.add(controller.text);
                        controller.text='';
                      });
                    }, icon: Icon(Icons.send,color: Colors.grey,))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
