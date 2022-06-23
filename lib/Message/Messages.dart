import 'package:flutter/material.dart';
import 'package:muslimdatingapp/constant/constant_widgets.dart';
import 'package:muslimdatingapp/utils/color_resources.dart';
import 'package:muslimdatingapp/utils/custom_themes.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
                padding: EdgeInsets.only(top: 10, bottom: 0),
                child: Image.asset("assets/images/png/back.png"))),
        shadowColor: Colors.white,
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Messages",
          style: ubuntuRegular.copyWith(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Messages",
              style: ubuntuRegular.copyWith(
                  fontWeight: FontWeight.w700, fontSize: 18),
            ),
            getChatlist(
                img:"assets/images/jpg/man.jfif",
                name: "Thomas Edison",
                time: "23 min",
                text: "how was your day?",
                count:"" ),
            Divider(color: Colors.grey,height: 10,endIndent: 0,indent: 55,), getChatlist(
                img:"assets/images/png/grace.png",
                name: "Elizabeth",
                time: "10 min",
                text: "Lets Have fun outside",
                count:"" ),
            Divider(color: Colors.grey,height: 10,endIndent: 0,indent: 55,), getChatlist(
                img:"assets/images/png/elizabeth.png",
                name: "Chleo",
                time: "Now",
                text: "where you live?",
                count:"" ),
            Divider(color: Colors.grey,height: 10,endIndent: 0,indent: 55,), getChatlist(
                img:"assets/images/png/chatphoto.png",
                name: "Grace",
                time: "Now",
                text: "Typing...",
                count:"" ),
            Divider(color: Colors.grey,height: 10,endIndent: 0,indent: 55,),
          ],
        ),
      ),
    );
  }

  getChatlist(
      {required String img,
      required String name,
      required String time,
      required String text,
      required String count}) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              CircleAvatar(backgroundImage: AssetImage(img),),
              Expanded(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(name,style: ubuntuRegular.copyWith(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w700),),
                      Text(text,style: ubuntuRegular.copyWith(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w300),),
                    ],
                    ),
                  ),
                  Column(children: [
                    Text(time,style: ubuntuRegular.copyWith(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w300),),
                    Image.asset("assets/images/png/msgindicator.png"),

                  ],)
                ],),
              ),

            ],
          ),
        ),
      ],
    );
  }
}
