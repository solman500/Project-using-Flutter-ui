import 'package:flutter/material.dart';
import 'package:project/domain/model/api_users.dart';
import 'package:project/presentation/user_view/DetailsPage.dart';

class SingleUser extends StatelessWidget {
  const SingleUser({Key? key, required this.user}) : super(key: key);
  final UserFromApi user;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Navigate to another page when tapped
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsPage(user: user),
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 35,
              backgroundColor: Colors.teal,
              child: Text(
                "${user.userId}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${user.id}",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "${user.title}",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
