import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:muslimdatingapp/utils/color_resources.dart';
import 'package:muslimdatingapp/utils/custom_themes.dart';
import 'package:muslimdatingapp/views/screens/Sect.dart';
import 'package:muslimdatingapp/views/screens/module%20two/2nd%20screen/Profile%20progress/createprofile.dart';
import 'package:muslimdatingapp/views/screens/module%20two/2nd%20screen/Profile%20progress/widgets/image_input.dart';

import 'package:muslimdatingapp/views/screens/nick_name.dart';


class ProfileProgress extends StatefulWidget {
  const ProfileProgress({Key? key}) : super(key: key);

  @override
  State<ProfileProgress> createState() => _ProfileProgressState();
}

class _ProfileProgressState extends State<ProfileProgress> {
  bool status = false;
  File? _pickedImage;
  void _selectImage(File pickedImage){
    _pickedImage = pickedImage;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50,left: 20),
              child: Row(

                children: [
                  UserImagePicker(_selectImage),

                  // Image.asset(
                  //   "assets/images/png/img.png",
                  //   width: 110,
                  //   height: 110,
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        Text(
                          "Name",
                          style: ubuntuRegular.copyWith(
                              fontWeight: FontWeight.w500, fontSize: 20),
                        ),
                        Text("Bio",style: ubuntuRegular.copyWith(
                            fontWeight: FontWeight.w300, fontSize: 15),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 25, left: 25, right: 25, bottom: 20),
              child: Divider(
                color: Colors.black,
              ),
            ),
            Container(
              height: 280,
              width: 380,
              child: Card(
                color: ColorResources.CERISE,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Profile Progress",
                      style: ubuntuRegular.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Center(
                                  child: Text(
                                "1",
                                style: ubuntuRegular.copyWith(
                                    color: ColorResources.CERISE),
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "New Features",
                                style: ubuntuRegular.copyWith(
                                    fontSize: 10, color: Colors.white),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                height: 40,
                                width: 40,
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Center(
                                    child: Text(
                                  "2",
                                  style: ubuntuRegular.copyWith(
                                      color: ColorResources.CERISE),
                                ))),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "Create Profile",
                                style: ubuntuRegular.copyWith(
                                    fontSize: 10, color: Colors.white),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Center(
                                  child: Text(
                                "3",
                                style: ubuntuRegular.copyWith(
                                    color: ColorResources.CERISE),
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "Verify Identity",
                                style: ubuntuRegular.copyWith(
                                    fontSize: 10, color: Colors.white),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Center(
                                  child: Text(
                                "4",
                                style: ubuntuRegular.copyWith(
                                    color: ColorResources.CERISE),
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "Profile Approved",
                                style: ubuntuRegular.copyWith(
                                    fontSize: 10, color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> CreateProfile()));
                        },
                        child: Container(
                          height: 50,
                          width: 274,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              "Create Profile ",
                              style: TextStyle(
                                  color: ColorResources.CERISE,
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
            Container(
              padding: const EdgeInsets.only(
                  left: 20, top: 20, bottom: 0, right: 35),
              child: Container(
                child: Text(
                  "Account Settings",
                  style: ubuntuRegular.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ),
            ),
            Column(
              children: [
                getListTiles(() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => NickName()));
                }, "assets/images/png/Vector (Stroke).png",
                    "Filters & Prefernces"),
                getListTiles(() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => NickName()));
                }, "assets/images/png/Profile-Edit.png",
                    "Edit Profile"),
                getListTiles(() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => NickName()));
                }, "assets/images/png/Vector.png",
                    "Settings"),  getListTiles(() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => NickName()));
                }, "assets/images/png/_.png",
                    "Need Help?"),getListTiles(() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (ctx) => NickName()));
                }, "assets/images/png/Vector-1.png",
                    "Log out"),
              ],
            ),
          ],
        ));
  }

  Widget getListTiles(Function _function, String _icon, String title) {
    return ListTile(
      title: Text(
        title,
        style: ubuntuRegular.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0xff323F4B)),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: ImageIcon(
          AssetImage(
            _icon,
          ),
          color: ColorResources.CERISE,
        ),
      ),
      onTap: () => _function(),
      trailing: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Icon(Icons.arrow_forward_ios_outlined),
      ),
    );
  }
}
