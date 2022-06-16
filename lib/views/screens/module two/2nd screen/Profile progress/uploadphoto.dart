import 'package:flutter/material.dart';
import 'package:muslimdatingapp/constant/constant_widgets.dart';
import 'package:muslimdatingapp/utils/color_resources.dart';
import 'package:muslimdatingapp/utils/custom_themes.dart';

class UploadPhoto extends StatefulWidget {
  const UploadPhoto({Key? key}) : super(key: key);

  @override
  State<UploadPhoto> createState() => _UploadPhotoState();
}

class _UploadPhotoState extends State<UploadPhoto> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: PinkappbarWidget(title: "Upload Photo"),
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
                          "Upload Your Photo",
                          style: ubuntuRegular.copyWith(
                              fontWeight: FontWeight.w700, fontSize: 15),
                        ),
                      ),
                    ),
                    Container(
                      width: 350,
                        height: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffFFE2E9),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/png/Upload.png"),
                            Text("Upload Photo",style: ubuntuRegular.copyWith(
                                fontWeight: FontWeight.w500, fontSize: 15),)
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 20,bottom: 20,left: 10),
                      child: Text(
                        "Only upload clear face photo,other wise the group photo and glasses is didn’t upload",
                        style: ubuntuRegular.copyWith(
                            fontWeight: FontWeight.w400, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: InkWell(
                        onTap: (){

                        },
                        child: Container(
                          height: 50,
                          width: 274,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: ColorResources.CERISE,
                          ),
                          child: Center(
                            child: Text(
                              "Create Profile ",
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
      ),
    );
  }
}
