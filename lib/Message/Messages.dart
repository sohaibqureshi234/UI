import 'package:flutter/material.dart';
import 'package:muslimdatingapp/constant/constant_widgets.dart';
import 'package:muslimdatingapp/utils/color_resources.dart';
import 'package:muslimdatingapp/utils/custom_themes.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
                padding: EdgeInsets.only(top: 10, bottom: 0),
                child: Image.asset("assets/images/png/back.png"))),
        shadowColor: Colors.white,
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Messages",
          style: ubuntuRegular.copyWith(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Messages",
              style: ubuntuRegular.copyWith(
                  fontWeight: FontWeight.w700, fontSize: 18),
            ),
            getChatlist(
                img: "assets/images/jpg/man.jfif",
                name: "Thomas Edison",
                time: "23 min",
                text: "how was your day?",
                count: ""),
            Divider(
              color: Colors.grey,
              height: 10,
              endIndent: 0,
              indent: 55,
            ),
            getChatlist(
                img: "assets/images/png/grace.png",
                name: "Elizabeth",
                time: "10 min",
                text: "Lets Have fun outside",
                count: ""),
            Divider(
              color: Colors.grey,
              height: 10,
              endIndent: 0,
              indent: 55,
            ),
            getChatlist(
                img: "assets/images/png/elizabeth.png",
                name: "Chleo",
                time: "Now",
                text: "where you live?",
                count: ""),
            Divider(
              color: Colors.grey,
              height: 10,
              endIndent: 0,
              indent: 55,
            ),
            getChatlist(
                function: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ChatPage();
                    },
                  ));
                },
                img: "assets/images/png/chatphoto.png",
                name: "Grace",
                time: "Now",
                text: "Typing...",
                count: ""),
            Divider(
              color: Colors.grey,
              height: 10,
              endIndent: 0,
              indent: 55,
            ),
          ],
        ),
      ),
    );
  }

  getChatlist({
    required String img,
    required String name,
    required String time,
    required String text,
    required String count,
    VoidCallback? function,
  }) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(img),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: ubuntuRegular.copyWith(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            text,
                            style: ubuntuRegular.copyWith(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          time,
                          style: ubuntuRegular.copyWith(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w300),
                        ),
                        Image.asset("assets/images/png/msgindicator.png"),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 10,right: 10),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Padding(
                                      padding:
                                          EdgeInsets.only(top: 10,left: 10, bottom:10),
                                      child: Image.asset(
                                          "assets/images/png/back.png"))),
                              SizedBox(
                                width: 30,
                              ),
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/png/grace.png"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Grace",
                                      style: ubuntuRegular.copyWith(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(height: 5,),

                                    Text(
                                      "Online",
                                      style: ubuntuRegular.copyWith(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w100),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Icon(Icons.more_vert)
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0xffB1B1B1),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Divider(
                                endIndent: 0,
                                thickness: 0,
                                color: Color(0xffB1B1B1),
                              ),
                            ),
                            Text(
                              "  Today  ",
                              style: ubuntuRegular.copyWith(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                            )
                            ,
                            Expanded(
                              child: Divider(
                                endIndent: 0,
                                thickness: 0,
                                color: Color(0xffB1B1B1),
                              ),
                            )
                          ],
                        ),
                      ),
                      ChatBox(true, "message"),
                      ChatBox(false, "message"),
                      ChatBox(true, "message")
                      // Expanded(child: ListView.builder(itemBuilder: (context, index) {
                      //   return ChatBox(true,"message");
                      // },))
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(

                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          // border: OutlinedBorder(side: 0),
                          prefixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "Your message",
                                  style: ubuntuRegular.copyWith(
                                    color: Colors.grey,
                                      fontSize: 14, fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                          suffixIcon: Align(
                            alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Image.asset("assets/images/png/sendmsg.png"),
                              )),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xffE8E6EA),
                              width: 1,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey, width: 1),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(right: 20),
                    width: 50,
                      height: 50,
                      decoration: BoxDecoration(

                        border: Border.all(color: Color(0xffE8E6EA))
                      ),
                      child: Image.asset("assets/images/png/voice.png"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget ChatBox(bool user, String message) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: user ? Alignment.topLeft : Alignment.topRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: user ? Color(0xff0E9A4CB) : Color(0xffF3F3F3),
                  borderRadius: user
                      ? BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))
                      : BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
              width: 250,
              height: 95,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    user
                        ? "Hi Jake, how are you? I saw on the app that we’ve crossed paths several times this week 😄"
                        : "Haha truly! Nice to meet you Grace! What about a cup of coffee today evening? ☕️ ",
                    style: ubuntuRegular.copyWith(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w100),
                  ),
                ),
              ),
            ),
            Container(
                child: Text(
              user ? "2:55 pm" : "3:00 pm",
              style: ubuntuRegular.copyWith(
                  fontWeight: FontWeight.w400, fontSize: 12),
            ))
          ],
        ),
      ),
    );
  }
}
