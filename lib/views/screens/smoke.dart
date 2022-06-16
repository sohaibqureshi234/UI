import 'package:flutter/material.dart';
import 'package:muslimdatingapp/constant/constant_widgets.dart';
import 'package:muslimdatingapp/utils/color_resources.dart';
import 'package:muslimdatingapp/utils/custom_themes.dart';

class Smoke extends StatefulWidget {
  const Smoke({Key? key}) : super(key: key);

  @override
  State<Smoke> createState() => _SmokeState();
}

class _SmokeState extends State<Smoke> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PinkappbarWidget( context,title: "Smoke"),
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
                      child: Center(
                        child: Text(
                          "This helps us Conncet you to your ideal partner",
                          style: ubuntuRegular.copyWith(
                              fontWeight: FontWeight.w300, fontSize: 12),
                        ),
                      ),
                    ),
                    Image.asset("assets/images/png/Smoke.png"),
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
                      "Do you have Smoke ?",
                      style: ubuntuBold.copyWith(fontSize: 25),
                    ),
                    Column(
                    children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 50,bottom: 5),
                          child: GestureDetector(
                            onTap: () => setState(() => _value = 0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: _value == 0
                                      ? ColorResources.CERISE
                                      : Colors.transparent,
                                  borderRadius:
                                  BorderRadius.circular(16)),
                              height: 51,
                              width: 150,
                              child: Center(
                                  child: Text(
                                    "Yes",
                                    style: ubuntuRegular.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: _value == 0
                                          ? Colors.white
                                          : Color(0xff6F6F6F),
                                    ),
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
                                  color: _value == 1
                                      ? ColorResources.CERISE
                                      : Colors.transparent,
                                  borderRadius:
                                  BorderRadius.circular(16)),
                              height: 51,
                              width: 150,
                              child: Center(
                                  child: Text(
                                    "No",
                                    style: ubuntuBold.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: _value == 1
                                          ? Colors.white
                                          : Color(0xff6F6F6F),
                                    ),
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
