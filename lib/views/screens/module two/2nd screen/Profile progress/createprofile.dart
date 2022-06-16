import 'package:flutter/material.dart';
import 'package:linear_step_indicator/linear_step_indicator.dart';
import 'package:muslimdatingapp/constant/constant_widgets.dart';
import 'package:muslimdatingapp/utils/color_resources.dart';
import 'package:muslimdatingapp/utils/custom_themes.dart';
import 'package:muslimdatingapp/views/screens/Education.dart';
import 'package:muslimdatingapp/views/screens/HalalFood.dart';
import 'package:muslimdatingapp/views/screens/Proffession.dart';
import 'package:muslimdatingapp/views/screens/Sect.dart';
import 'package:muslimdatingapp/views/screens/gender.dart';
import 'package:muslimdatingapp/views/screens/module%20two/2nd%20screen/Profile%20progress/uploadphoto.dart';

class CreateProfile extends StatefulWidget {
  const CreateProfile({Key? key}) : super(key: key);

  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  int _value = 0;
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //     centerTitle: true,
      //     elevation: 0,
      //     leading: Image.asset("assets/images/png/back.png"),
      //     backgroundColor: Colors.white,
      //     title: Padding(
      //       padding: const EdgeInsets.only(top: 30, bottom: 15),
      //       child: Text("Sect"),
      //     ),
      //     titleTextStyle: TextStyle(
      //         color: Color(0xffF03C67),
      //         fontWeight: FontWeight.w500,
      //         fontSize: 31,
      //         fontFamily: "Ubuntu")),
      body: Column(
        children: [
          Expanded(
            child: StepIndicatorPageView(activeLineColor: ColorResources.CERISE,
              inActiveBorderColor: Colors.grey,iconColor: ColorResources.CERISE,activeNodeColor: ColorResources.CERISE,
              steps: 4,activeBorderColor: ColorResources.CERISE,
              indicatorPosition: IndicatorPosition.top,
              labels: List<String>.generate(4, (index) => ""),
              controller: _pageController,
              complete: () {
                //typically, you'd want to put logic that returns true when all the steps
                //are completed here
                return Future.value(true);
              },
              children: [
                Gender(),
                Proffession(),
                Education(),
                UploadPhoto(),
              ],
            ),
          ),
        ],
      ),


    );
  }
}
