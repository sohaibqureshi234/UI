import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:muslimdatingapp/utils/color_resources.dart';
import 'package:muslimdatingapp/utils/custom_themes.dart';
import 'package:muslimdatingapp/views/screens/Convert/Revert.dart';
import 'package:muslimdatingapp/views/screens/DOBpopup.dart';
import 'package:muslimdatingapp/views/screens/Education.dart';
import 'package:muslimdatingapp/views/screens/HalalFood.dart';
import 'package:muslimdatingapp/views/screens/Height.dart';
import 'package:muslimdatingapp/views/screens/Proffession.dart';
import 'package:muslimdatingapp/views/screens/Religious.dart';
import 'package:muslimdatingapp/views/screens/Sect.dart';
import 'package:muslimdatingapp/views/screens/alcohol.dart';
import 'package:muslimdatingapp/views/screens/bio.dart';
import 'package:muslimdatingapp/views/screens/children.dart';
import 'package:muslimdatingapp/views/screens/gender.dart';
import 'package:muslimdatingapp/views/screens/martial_status.dart';
import 'package:muslimdatingapp/views/screens/nick_name.dart';
import 'package:muslimdatingapp/views/screens/photo_visibility.dart';
import 'package:muslimdatingapp/views/screens/prayer.dart';
import 'package:muslimdatingapp/views/screens/relocation.dart';
import 'package:muslimdatingapp/views/screens/smoke.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool status = false;
  bool _showAppbar = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          shadowColor: Colors.white,
          elevation: 0,
          actions: [
            TextButton(
              onPressed: () {},
              child: Text(
                "Done",
                style: ubuntuRegular.copyWith(
                    color: ColorResources.CERISE, fontSize: 20),
              ),
            )
          ],
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Edit Profile",
            style: ubuntuRegular.copyWith(
                fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
          ),
        ),
        body: ListView(
          children: [
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/png/nav-browser.png",
                            height: 64,
                            width: 450,
                          ),
                          TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.photo,
                                color: ColorResources.CERISE,
                              )
                              // ImageIcon(AssetImage("assets/images/png/Photo.png",)
                              ,
                              label: Text(
                                "Photos",
                                style: ubuntuRegular.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff6F6F6F)),
                              )),
                          Image.asset("assets/images/jpg/EditPhoto.png"),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 20, top: 20, bottom: 0),
                          child: Text(
                            "Photo Visible",
                            style: ubuntuRegular.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff6F6F6F)),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(),
                              child: Text(
                                "Your profile photos are visible to\n all member",
                                style: ubuntuRegular.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff9B9B9B)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 100,
                              ),
                              child: Container(
                                child: FlutterSwitch(
                                  activeColor: ColorResources.CERISE,
                                  width: 50.0,
                                  height: 30.0,
                                  valueFontSize: 0,
                                  toggleSize: 25.0,
                                  value: status,
                                  borderRadius: 20.0,
                                  padding: 2.0,
                                  showOnOff: false,
                                  onToggle: (val) {
                                    setState(() {
                                      status = val;
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PhotoVisibility()));
                                    });
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 28, top: 20, bottom: 0),
                    child: TextButton.icon(
                        label: Text(
                          "Boost my profile",
                          style: ubuntuRegular.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff6F6F6F)),
                        ),
                        onPressed: () {},
                        icon: ImageIcon(
                          AssetImage(
                            "assets/images/png/Boost-normal.png",
                          ),
                          color: ColorResources.CERISE,
                        )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Your profile photos are visible to\n all member ",
                        style: ubuntuRegular.copyWith(
                            color: Color(0xff9B9B9B),
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: ColorResources.CERISE,
                      )
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 28, top: 20, bottom: 0),
                    child: TextButton.icon(
                        label: Text(
                          "Gold member badge",
                          style: ubuntuRegular.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff6F6F6F)),
                        ),
                        onPressed: () {},
                        icon: ImageIcon(
                          AssetImage(
                            "assets/images/png/Boost-normal.png",
                          ),
                          color: Colors.yellow,
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Your profile photos are visible to\n all member ",
                          style: ubuntuRegular.copyWith(
                              color: Color(0xff9B9B9B),
                              fontWeight: FontWeight.w400,
                              fontSize: 14),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: ColorResources.CERISE,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 20, top: 20, bottom: 0, right: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      "Basic Info",
                      style: ubuntuRegular.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                  ImageIcon(
                    AssetImage("assets/images/png/Basicinfo.png"),
                    color: ColorResources.CERISE,
                  )
                ],
              ),
            ),
            Column(
              children: [
                getListTiles(() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => NickName()));
                }, "Haya Anwar", "Nick Name"),
                getListTiles(() {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => DOB_PopScreen()));
                }, "May 15, 1995", "Date of Birth"),
                getListTiles(() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => Gender()));
                }, "Female", "Gender"),
                getListTiles(() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => Bio()));
                }, "None", "Your Bio"),
                getListTiles(() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => Height()));
                }, "152cm (5’0”)", "Height"),
                getListTiles(() {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => MartialStatus()));
                }, "Married", "Martial Status"),
                getListTiles(() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => Children()));
                }, "4", "Children"),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 20, top: 20, bottom: 0, right: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      "Education  & career",
                      style: ubuntuRegular.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                  ImageIcon(
                    AssetImage("assets/images/png/img_1.png"),
                    color: ColorResources.CERISE,
                  )
                ],
              ),
            ),
            Column(
              children: [
                getListTiles(() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => Education()));
                }, "Bachlor Degree", "Education"),
                getListTiles(() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => Proffession()));
                }, "Software Engineer", "Profession"),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 20, top: 20, bottom: 0, right: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      "Languages & ethnicity",
                      style: ubuntuRegular.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                  ImageIcon(
                    AssetImage("assets/images/png/img_2.png"),
                    color: ColorResources.CERISE,
                  )
                ],
              ),
            ),
            Column(
              children: [
                getListTiles(() {
                  // Navigator.of(context)
                  //     .push(MaterialPageRoute(builder: (ctx) => Language()));
                }, "pakistan", "Ethnic group"),
                getListTiles(() {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => DOB_PopScreen()));
                }, "pakistan", "Ethnic origan"),
                getListTiles(() {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => DOB_PopScreen()));
                }, "none", "Language"),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 20, top: 20, bottom: 0, right: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      "Islamic life style",
                      style: ubuntuRegular.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                  ImageIcon(
                    AssetImage("assets/images/png/img_3.png"),
                    color: ColorResources.CERISE,
                  )
                ],
              ),
            ),
            Column(
              children: [
                getListTiles(() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => Sect()));
                }, "Sunni", "Sect"),
                getListTiles(() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => Convert()));
                }, "No", "Convert / revert"),
                getListTiles(() {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => Religiousity()));
                }, "Practising", "Religiosity"),
                getListTiles(() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => Prayer()));
                }, "Usually pray", "Prayer"),
                getListTiles(() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => HalalFood()));
                }, "Yes", "Halal Food"),
                getListTiles(() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => Alcohol()));
                }, "No", "Alcohol"),
                getListTiles(() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => Smoke()));
                }, "No", "Smoking"),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 20, top: 20, bottom: 0, right: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      "Marriage  plane",
                      style: ubuntuRegular.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  ),
                  ImageIcon(
                    AssetImage("assets/images/png/img_4.png"),
                    color: ColorResources.CERISE,
                  )
                ],
              ),
            ),
            Column(
              children: [
                getListTiles(() {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) => MartialStatus()));
                }, "No", "Marriage horizon"),
                getListTiles(() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => Relocation()));
                }, "No", "Reloocation"),
              ],
            ),
          ],
        ));
  }

  Widget getListTiles(Function _function, String subTitle, String title) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text(
          title,
          style: ubuntuRegular.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xff595959)),
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text(subTitle,
            style: ubuntuRegular.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color(0xff9B9B9B))),
      ),
      onTap: () => _function(),
      trailing: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Icon(Icons.arrow_forward_ios_outlined),
      ),
    );
  }
}

// class AnimatedToggle extends StatefulWidget {
//   final List<String> values;
//   final ValueChanged onToggleCallback;
//   final Color backgroundColor;
//   final Color buttonColor;
//   final Color textColor;
//   final List<BoxShadow> shadows;
//
//   AnimatedToggle({
//     @required this.values,
//     @required this.onToggleCallback,
//     this.backgroundColor = const Color(0xFFe7e7e8),
//     this.buttonColor = const Color(0xFFFFFFFF),
//     this.textColor = const Color(0xFF000000),
//     this.shadows = const [
//       BoxShadow(
//         color: const Color(0xFFd8d7da),
//         spreadRadius: 5,
//         blurRadius: 10,
//         offset: Offset(0, 5),
//       ),
//     ],
//   });
//   @override
//   _AnimatedToggleState createState() => _AnimatedToggleState();
// }
//
// class _AnimatedToggleState extends State<AnimatedToggle> {
//   bool initialPosition = true;
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     return Container(
//       width: width * 0.7,
//       height: width * 0.13,
//       margin: EdgeInsets.all(20),
//       child: Stack(
//         children: <Widget>[
//           GestureDetector(
//             onTap: () {
//               initialPosition = !initialPosition;
//               var index = 0;
//               if (!initialPosition) {
//                 index = 1;
//               }
//               widget.onToggleCallback(index);
//               setState(() {});
//             },
//             child: Container(
//               width: width * 0.7,
//               height: width * 0.13,
//               decoration: ShapeDecoration(
//                 color: widget.backgroundColor,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(width * 0.1),
//                 ),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: List.generate(
//                   widget.values.length,
//                       (index) => Padding(
//                     padding: EdgeInsets.symmetric(horizontal: width * 0.1),
//                     child: Text(
//                       widget.values[index],
//                       style: TextStyle(
//                         fontFamily: 'Rubik',
//                         fontSize: width * 0.05,
//                         fontWeight: FontWeight.bold,
//                         color: const Color(0xFF918f95),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           AnimatedAlign(
//             duration: const Duration(milliseconds: 250),
//             curve: Curves.decelerate,
//             alignment:
//             initialPosition ? Alignment.centerLeft : Alignment.centerRight,
//             child: Container(
//               width: width * 0.35,
//               height: width * 0.13,
//               decoration: ShapeDecoration(
//                 color: widget.buttonColor,
//                 shadows: widget.shadows,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(width * 0.1),
//                 ),
//               ),
//               child: Text(
//                 initialPosition ? widget.values[0] : widget.values[1],
//                 style: TextStyle(
//                   fontFamily: 'Rubik',
//                   fontSize: width * 0.045,
//                   color: widget.textColor,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               alignment: Alignment.center,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
