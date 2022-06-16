import 'package:flutter/material.dart';
import 'package:muslimdatingapp/utils/color_resources.dart';
import 'package:muslimdatingapp/utils/custom_themes.dart';

class DOB_PopScreen extends StatelessWidget {
  const DOB_PopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:
         ColorResources.CERISE,),

        width: 370,height: 280,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("assets/images/png/warning.png"),
            Text(
                "Can’t edit",
                style: ubuntuRegular.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                    color: Colors.white),
              ),
            Text(
                "You can only change your Date of birthonce",
                style: ubuntuRegular.copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Colors.white),
              ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 50,
                  width: 274,
                  // margin: EdgeInsets.only(top: 20,right: 20,left: 20,bottom: 10),
                  // padding: const EdgeInsets.symmetric(horizontal:80,vertical: 12 ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      "ok",
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

    );

  }
}
