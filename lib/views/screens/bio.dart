import 'package:flutter/material.dart';
import 'package:muslimdatingapp/constant/constant_widgets.dart';
import 'package:muslimdatingapp/utils/color_resources.dart';
import 'package:muslimdatingapp/utils/custom_themes.dart';

class Bio extends StatefulWidget {
  const Bio({Key? key}) : super(key: key);

  @override
  State<Bio> createState() => _BioState();
}

class _BioState extends State<Bio> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          actions: [
            TextButton(
                onPressed: () {},
                child: Text("Done",
                    style: TextStyle(
                        color: Color(0xffF03C67),
                        fontWeight: FontWeight.w300,
                        fontSize: 20,
                        fontFamily: "Ubuntu")))
          ],
          centerTitle: true,
          elevation: 0,
          leading: Image.asset("assets/images/png/back.png"),
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(top: 30,bottom: 10),
            child: Text("Bio"),
          ),
          titleTextStyle: TextStyle(
              color: Color(0xffF03C67),
              fontWeight: FontWeight.w500,
              fontSize: 31,
              fontFamily: "Ubuntu")),
      body: Container(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 5,
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 30),
                      child: Text(
                        "In your  own words, tell us more about yourself and what your are looking for.",
                        style: ubuntuRegular.copyWith(
                            fontWeight: FontWeight.w300, fontSize: 12),
                      ),
                    ),
                    Text(
                      "Write your Bio",
                      style: ubuntuBold.copyWith(fontSize: 25),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 40),
                      child: TextField( textDirection: TextDirection.ltr,
                        // controller: complainEditingController,
                        maxLines: 20, maxLength: 500, //or null
                        decoration: InputDecoration.collapsed( border: InputBorder.none,
                            
                            filled: true,
                            hintText:
                                "Tell us about yourself, your hobbies & future plans !",
                            hintStyle: ubuntuRegular.copyWith(
                                fontWeight: FontWeight.w300, fontSize: 16)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
