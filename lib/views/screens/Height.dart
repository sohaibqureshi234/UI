import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:muslimdatingapp/constant/constant_widgets.dart';
import 'package:muslimdatingapp/utils/color_resources.dart';
import 'package:muslimdatingapp/utils/custom_themes.dart';

class Height extends StatefulWidget {
  const Height({Key? key}) : super(key: key);

  @override
  State<Height> createState() => _HeightState();
}

class _HeightState extends State<Height> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            actions: [
              // TextButton(
              //     onPressed: () {},
              //     child: Text("Done",
              //         style: TextStyle(
              //             color: Color(0xffF03C67),
              //             fontWeight: FontWeight.w300,
              //             fontSize: 20,
              //             fontFamily: "Ubuntu")))
            ],
            centerTitle: true,
            elevation: 0,
            leading: InkWell(
                onTap:(){Navigator.pop(context);},child: Image.asset("assets/images/png/back.png")),
            backgroundColor: Colors.white,
            title: Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 15),
              child: Text("Height"),
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
                              "This helps us Conncet you to your ideal partner",
                              style: ubuntuRegular.copyWith(
                                  fontWeight: FontWeight.w300, fontSize: 12),
                            ),
                          ),
                          Image.asset(
                            "assets/images/png/height.png",
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 59, top: 20),
                            child: Text(
                              "Do you only eats halal ?",
                              style: ubuntuBold.copyWith(fontSize: 25),
                            ),
                          ),
                          CupertinoPickerSample()
                        ]),
                      ))
                ])));
  }
}

class CupertinoPickerSample extends StatefulWidget {
  const CupertinoPickerSample({Key? key}) : super(key: key);

  @override
  State<CupertinoPickerSample> createState() => _CupertinoPickerSampleState();
}

class _CupertinoPickerSampleState extends State<CupertinoPickerSample> {
  int _selectedFruit = 0;

  double _kItemExtent = 32.0;
  List<String> _fruitNames = <String>[
    '142cm (4’8”)',
    '145cm (4’9”)',
    '147cm (4’10”)',
    '150cm (4’ 11”)',
    '152cm (5’0”)',
    '155cm (5’1”)',
    '157cm (5’2”)',
  ];

  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) => Container(
              height: 216,
              padding: const EdgeInsets.only(top: 6.0),
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              color: CupertinoColors.systemBackground.resolveFrom(context),
              child: SafeArea(
                top: false,
                child: child,
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: ColorResources.CERISE,
      child: DefaultTextStyle(
        style: TextStyle(
          color: CupertinoColors.label.resolveFrom(context),
          fontSize: 22.0,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () => _showDialog(
                  CupertinoPicker(
                    backgroundColor: Colors.white,
                    magnification: 1.22,
                    squeeze: 1.2,
                    useMagnifier: true,
                    itemExtent: _kItemExtent,
                    onSelectedItemChanged: (int selectedItem) {
                      setState(() {
                        _selectedFruit = selectedItem;
                      });
                    },
                    children:
                        List<Widget>.generate(_fruitNames.length, (int index) {
                      return Center(
                        child: Text(
                          _fruitNames[index],
                          style: ubuntuSemiBold.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: ColorResources.CERISE),
                        ),
                      );
                    }),
                  ),
                ),
                child: Text(_fruitNames[_selectedFruit],
                    style: ubuntuSemiBold.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
