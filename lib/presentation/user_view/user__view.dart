import 'package:flutter/material.dart';
import 'package:project/data/network/user_service.dart';
import 'package:project/domain/model/api_users.dart';
import 'package:project/presentation/user_view/single_user.dart';
// import 'package:lec1/data/network/user_service.dart';
// import 'package:lec1/domain/model/api_users.dart';
// import 'package:lec1/data/network/user_service.dart';
// import 'package:lec1/presentation/users_view/single_user_widget.dart';

class UserView extends StatefulWidget {
  const UserView({super.key});

  @override
  State<UserView> createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  UsersService service = UsersService();
  List<UserFromApi> users = [];
  bool isLoad = true;
  userData() async {
    users = await service.getUsersData();
    print(users);
    isLoad = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    userData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Albums Page"),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: isLoad && users != []
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: double.infinity,
                child: ListView.separated(
                  itemCount: users.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return Container(
                      width: double.infinity,
                      height: 2,
                      color: Colors.black,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return SingleUser(
                      user: users[index],
                    );
                  },
                ),
              ),
            ),
    );
  }
}
