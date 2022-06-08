import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:muslimdatingapp/utils/color_resources.dart';

import 'package:muslimdatingapp/utils/custom_themes.dart';

class MartialStatus extends StatefulWidget {
  const MartialStatus({Key? key}) : super(key: key);

  @override
  State<MartialStatus> createState() => _MartialStatusState();
}

class _MartialStatusState extends State<MartialStatus> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            leading: Image.asset("assets/images/png/back.png"),
            backgroundColor: Colors.white,
            title: Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 15),
              child: Text("Martial Status"),
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
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30, bottom: 30),
                            child: Text(
                              "Tell us more about yourself to help us find you a partner who is perfect for you.",
                              style: ubuntuRegular.copyWith(
                                  fontWeight: FontWeight.w300, fontSize: 12),
                            ),
                          ),
                          Center(
                            child: Image.asset(
                              "assets/images/png/martialstatus.png",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 59, top: 20),
                            child: Text(
                              "What’s your marital status ?",
                              style: ubuntuBold.copyWith(fontSize: 25),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
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
                                      "Never Married",
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
                              SizedBox(height: 4),
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
                                      "Divroced",
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
                              SizedBox(height: 4),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: GestureDetector(
                                  onTap: () => setState(() => _value = 2),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: _value == 2
                                            ? ColorResources.CERISE
                                            : Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    height: 51,
                                    width: 150,
                                    child: Center(
                                        child: Text(
                                      "Separate",
                                      style: ubuntuBold.copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: _value == 2
                                            ? Colors.white
                                            : Color(0xff6F6F6F),
                                      ),
                                    )),
                                  ),
                                ),
                              ),
                              SizedBox(height: 4),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: GestureDetector(
                                  onTap: () => setState(() => _value = 3),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: _value == 3
                                            ? ColorResources.CERISE
                                            : Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    height: 51,
                                    width: 150,
                                    child: Center(
                                        child: Text(
                                      "Annulled",
                                      style: ubuntuBold.copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: _value == 3
                                            ? Colors.white
                                            : Color(0xff6F6F6F),
                                      ),
                                    )),
                                  ),
                                ),
                              ),
                              SizedBox(height: 4),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: GestureDetector(
                                  onTap: () => setState(() => _value = 4),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: _value == 4
                                            ? ColorResources.CERISE
                                            : Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    height: 51,
                                    width: 150,
                                    child: Center(
                                        child: Text(
                                      "Widowed",
                                      style: ubuntuBold.copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: _value == 4
                                            ? Colors.white
                                            : Color(0xff6F6F6F),
                                      ),
                                    )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]),
                      ))
                ])));
  }
}
