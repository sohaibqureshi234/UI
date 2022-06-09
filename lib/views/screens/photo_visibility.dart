import 'package:flutter/material.dart';
import 'package:muslimdatingapp/constant/constant_widgets.dart';
import 'package:muslimdatingapp/utils/color_resources.dart';
import 'package:muslimdatingapp/views/screens/Edit%20Profile/Edit_Profile.dart';

class PhotoVisibility extends StatefulWidget {
  const PhotoVisibility({Key? key}) : super(key: key);

  @override
  State<PhotoVisibility> createState() => _PhotoVisibilityState();
}

class _PhotoVisibilityState extends State<PhotoVisibility> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appbarWidget(title: "Photo Visibility"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset("assets/images/jpg/vsible.jpg"),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Visible Photo",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          fontFamily: "Ubuntu"),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Image.asset("assets/images/jpg/blur.jpg"),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Blur Photo",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          fontFamily: "Ubuntu"),
                    ),
                  ),
                ],
              ),
            ],
          ),


          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20,top: 30,bottom: 30,right: 20),
                child: Text(
                  "if you choose to blur your photos, your profile will be seen by fewer peolpe",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      fontFamily: "Ubuntu"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Text(
                  "please tick the below to confirm you agree:",
                  style: TextStyle(
                      color: Color(0xffF03C67),
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      fontFamily: "Ubuntu"),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [

                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'I understand my profile will be seen less',
                            style: TextStyle(
                                color: Color(0xff6F6F6F),
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                                fontFamily: "Ubuntu"),
                          ),
                        ),
                        Radio(value: 1, groupValue: 'null', onChanged: (index) {}),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                              'I understand i will get fewer likes and matches',
                              style: TextStyle(
                                  color: Color(0xff6F6F6F),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                  fontFamily: "Ubuntu"),
                            )),
                        Radio(value: 1, groupValue: 'null', onChanged: (index) {}),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                              'I understand i am more likely to be unmatched',
                              style: TextStyle(
                                  color: Color(0xff6F6F6F),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14,
                                  fontFamily: "Ubuntu"),
                            )),
                        Radio(value: 1, groupValue: 'null', onChanged: (index) {}),
                      ],
                    ),
                  ],
                ),
              ),

            ],
          ),



          InkWell(onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EditProfile()));
          },
            child: Container(
              height: 50,
              width: 274,
              // margin: EdgeInsets.only(top: 20,right: 20,left: 20,bottom: 10),
              // padding: const EdgeInsets.symmetric(horizontal:80,vertical: 12 ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: ColorResources.CERISE,),
              child: Center(
                child: Text("Continue",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  fontFamily: "Ubuntu"
            ),),
              ),),
          )

        ],

      ),
    );
  }
}
