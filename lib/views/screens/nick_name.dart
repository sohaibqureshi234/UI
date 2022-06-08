import 'package:flutter/material.dart';
import 'package:muslimdatingapp/constant/constant_widgets.dart';
import 'package:muslimdatingapp/utils/color_resources.dart';
import 'package:muslimdatingapp/utils/custom_themes.dart';

class NickName extends StatelessWidget {
  const NickName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PinkappbarWidget(title: "Nick Name"),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 30),
                    child: Text(
                      "you can only change your nick  name once every 6 months.",
                      style: ubuntuRegular.copyWith(
                          fontWeight: FontWeight.w300, fontSize: 12),
                    ),
                  ),
                  Image.asset("assets/images/png/NIck-name-icon.png"),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Container(
              child: Column(
                children: [
                  Text(
                    "What’s your nickname?",
                    style: ubuntuBold.copyWith(fontSize: 25),
                  ),
                  Theme(
                    data: new ThemeData(
                      primaryColor: ColorResources.CERISE,
                      primaryColorDark: Colors.red,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: TextField(
                        decoration: new InputDecoration(
                            border: new OutlineInputBorder(
                                // borderSide: new BorderSide(color: Colors.teal),

                                ),
                            hintText: 'Haya Anwar',
                            suffixStyle: const TextStyle(color: Colors.green)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 250),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 274,
                        // margin: EdgeInsets.only(top: 20,right: 20,left: 20,bottom: 10),
                        // padding: const EdgeInsets.symmetric(horizontal:80,vertical: 12 ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: ColorResources.CERISE,
                        ),
                        child: Center(
                          child: Text(
                            "Done",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                fontFamily: "Ubuntu"),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
