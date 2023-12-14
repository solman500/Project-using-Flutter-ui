import 'package:flutter/material.dart';
import 'package:project/domain/model/user_model.dart';
import 'package:project/presentation/messenger/active.dart';
import 'package:project/presentation/messenger/activeChat.dart';
// import 'package:project/main.dart';

class MessengerScreen extends StatefulWidget {
  const MessengerScreen({super.key});

  @override
  State<MessengerScreen> createState() => _MessengerScreenState();
}

class _MessengerScreenState extends State<MessengerScreen> {
  // Map user={"name":"hamza","massege":"كيف حالك","time":"12:00","timeLocation":"pm"};
  // UserModel user1=UserModel(userName: "mohamed", chat: "كيف حالك", time: "12:00", timeLocation: "pm");

  List<UserModel> users = [
    UserModel(
        userName: "mohamed ahmed",
        chat: "كيف حالك",
        time: "12:00",
        timeLocation: "pm"),
    UserModel(
        userName: "ali mohamed ",
        chat: "كيف حالك",
        time: "12:00",
        timeLocation: "pm"),
    UserModel(
        userName: "mahmoud soliman",
        chat: "كيف حالك",
        time: "12:00",
        timeLocation: "pm"),
    UserModel(
        userName: "nour soliman",
        chat: "كيف حالك",
        time: "12:00",
        timeLocation: "pm"),
        UserModel(
        userName: "mohamed hamza",
        chat: "كيف حالك",
        time: "12:00",
        timeLocation: "pm"),
    UserModel(
        userName: "ahmed hamza ",
        chat: "كيف حالك",
        time: "12:00",
        timeLocation: "pm"),
    UserModel(
        userName: "mahmoud soliman",
        chat: "كيف حالك",
        time: "12:00",
        timeLocation: "pm"),
    UserModel(
        userName: "soliman mahmoud",
        chat: "كيف حالك",
        time: "12:00",
        timeLocation: "pm"),
         UserModel(
        userName: "mohamed ali",
        chat: "كيف حالك",
        time: "12:00",
        timeLocation: "pm"),
    UserModel(
        userName: "mohamed gamal",
        chat: "كيف حالك",
        time: "12:00",
        timeLocation: "pm"),
    UserModel(
        userName: "fady shenoda]",
        chat: "كيف حالك",
        time: "12:00",
        timeLocation: "pm"),
         UserModel(
        userName: " salah gamal",
        chat: "كيف حالك",
        time: "12:00",
        timeLocation: "pm"),
    UserModel(
        userName: "abdallah hussin",
        chat: "كيف حالك",
        time: "12:00",
        timeLocation: "pm"),
    UserModel(
        userName: "mona omar",
        chat: "كيف حالك",
        time: "12:00",
        timeLocation: "pm"),
        UserModel(
        userName: "mona soliman",
        chat: "كيف حالك",
        time: "12:00",
        timeLocation: "pm"),
         UserModel(
        userName: "mohamed ali",
        chat: "كيف حالك",
        time: "12:00",
        timeLocation: "pm"),
    UserModel(
        userName: "mohamed gamal",
        chat: "كيف حالك",
        time: "12:00",
        timeLocation: "pm"),
    UserModel(
        userName: "fady shenoda",
        chat: "كيف حالك",
        time: "12:00",
        timeLocation: "pm"),
         UserModel(
        userName: "mohamed salah",
        chat: "كيف حالك",
        time: "12:00",
        timeLocation: "pm"),
    UserModel(
        userName: "abdallah hussin",
        chat: "كيف حالك",
        time: "12:00",
        timeLocation: "pm"),
    UserModel(
        userName: "mohamed omar",
        chat: "كيف حالك",
        time: "12:00",
        timeLocation: "pm"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Row(children: [
          CircleAvatar(
            radius: 20,
            // backgroundImage: AssetImage('assets/images/new.jpeg'),
            // backgroundImage: AssetImage('assets/images/new.jpeg'),

            child: Image(
              image: AssetImage('assets/images/new.jpeg'), width: double.infinity,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "chat",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )
        ]),
        actions: [
          CircleAvatar(
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
            ),
            backgroundColor: Colors.white,
          ),
          const SizedBox(
            width: 10,
          ),
          CircleAvatar(
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit_square),
            ),
            backgroundColor: Colors.white,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(top: 5, start: 5, end: 5),
        child: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(height: 15),
              Container(
                  // width: double.infinity,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(65),
                  ),
                  child: InkWell(
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(children: [
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.search),
                        SizedBox(
                          width: 5,
                        ),
                        Text("search")
                      ]),
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),

              Container(
                  height: 70,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: users.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Active(name: users[index].userName);
                      }))

              ,

              const SizedBox(
                height: 15,
              ),
     

              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return ActiveChat(user: users[index]);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 10,
                  );
                },
                itemCount: users.length,
              )
            ]),
          ),
        ),
      ),
    );
  }
}

// ------------------------------------------

