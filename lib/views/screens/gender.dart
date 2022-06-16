import 'package:flutter/material.dart';
import 'package:muslimdatingapp/constant/constant_widgets.dart';
import 'package:muslimdatingapp/utils/color_resources.dart';
import 'package:muslimdatingapp/utils/custom_themes.dart';

class Gender extends StatefulWidget {
  const Gender({Key? key}) : super(key: key);

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PinkappbarWidget( context,title: "Gender"),
      body: Container(
         padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
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
                        "you can only change your Gender once, no expcetions are made.",
                        style: ubuntuRegular.copyWith(
                            fontWeight: FontWeight.w300, fontSize: 12),
                      ),
                    ),
                    Image.asset("assets/images/png/gender.png"),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "What’s your Gender?",
                      style: ubuntuBold.copyWith(fontSize: 25),
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 24),
                          child: GestureDetector(
                            onTap: () => setState(() => _value = 0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: _value == 0
                                      ? ColorResources.CERISE
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(16)),
                              height: 51,
                              width: 150,
                              child: Center(
                                  child: Text(
                                "Male",
                                style: ubuntuBold.copyWith(
                                    fontWeight: FontWeight.w500, fontSize: 18),
                              )),
                            ),
                          ),
                        ),
                        SizedBox(width: 4),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: GestureDetector(
                            onTap: () => setState(() => _value = 1),
                            child: Container(
                              decoration: BoxDecoration(
                                color: _value == 1 ? ColorResources.CERISE : Colors.transparent,
                                  borderRadius: BorderRadius.circular(16)
                              ),
                              height: 51,
                              width: 150,

                              child: Center(
                                  child: Text(
                                "Female",
                                style: ubuntuBold.copyWith(
                                    fontWeight: FontWeight.w500, fontSize: 18),
                              )),
                            ),
                          ),
                        ),
                      ],
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
