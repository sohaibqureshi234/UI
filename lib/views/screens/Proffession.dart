import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:muslimdatingapp/utils/color_resources.dart';

import 'package:muslimdatingapp/utils/custom_themes.dart';

class Proffession extends StatefulWidget {
  const Proffession({Key? key}) : super(key: key);

  @override
  State<Proffession> createState() => _ProffessionState();
}

class _ProffessionState extends State<Proffession> {
  int _value = 0;
  final List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "name": "Accountant", "age": 29},
    {"id": 2, "name": "Acting Professional", "age": 40},
    {"id": 3, "name": "Actor", "age": 5},
    {"id": 4, "name": "Administration  Empoloyee", "age": 35},
    {"id": 5, "name": "Administration  Professional", "age": 21},
    {"id": 6, "name": "Advertisting Professional", "age": 55},
    {"id": 7, "name": "Air Hostess", "age": 30},
    {"id": 8, "name": "Alim", "age": 14},
    {"id": 8, "name": " Actuary", "age": 14},
    {"id": 9, "name": "Caversky", "age": 100},
    {"id": 10, "name": "Aerospace Engineers", "age": 32},
    {"id": 10, "name": "Automotive Engineers", "age": 32},
  ];

  // List<String> _list
  //
  //  =[ "Accountant",
  //  " Acting Professional",
  //  " Actor",
  //  " Actuary",
  //  '   Administration  Empoloyee',
  //  "Administration  Professional",
  //  "Advertisting Professional",
  //  " Air Hostess",
  //  " Alim",
  //  ' Aerospace Engineers',
  //
  //  'Automotive Engineers'
  //
  //
  //
  //  ];

  List<Map<String, dynamic>> _foundUsers = [];

  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = _allUsers;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

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
              child: Text("Profession"),
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
                  Column(children: [
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
                        "assets/images/png/Profession.png",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 59, top: 20),
                      child: Text(
                        "What do you do for a living?",
                        style: ubuntuBold.copyWith(fontSize: 25),
                      ),
                    ),
                  ]),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30),
                    child: TextField(
                      onChanged: (value) => _runFilter(value),
                      decoration: const InputDecoration( border:  OutlineInputBorder(
                        // borderSide: new BorderSide(color: Colors.teal),

                      ),
                          labelText: 'Search', suffixIcon: Icon(Icons.search)),
                    ),
                  ),
                  _foundUsers.isNotEmpty
                      ? Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30,right: 30),
                            child: ListView.separated(
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      const SizedBox(
                                height: 24,
                              ),
                              itemCount: _allUsers.length,
                              itemBuilder: (context, index) => Text(
                                _foundUsers[index]['name'],
                                style: ubuntuRegular.copyWith(
                                color: Color(0xff575757),
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        )
                      : const Text(
                          'No results found',
                          style: TextStyle(fontSize: 24),
                        ),
                ])));
  }
}
