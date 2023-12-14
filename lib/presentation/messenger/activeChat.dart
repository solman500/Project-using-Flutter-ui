import 'package:flutter/material.dart';
import 'package:project/domain/model/user_model.dart';

class ActiveChat extends StatefulWidget {
//  final String userName;
final UserModel user;
    ActiveChat({super.key,required this.user});

  @override
  State<ActiveChat> createState() => _ActiveChatState();
}

class _ActiveChatState extends State<ActiveChat> {
  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const CircleAvatar(),
        const SizedBox(
          width: 10,
        ),


               Expanded(
          child: Column(
             
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              Text(widget.user.userName),
              SizedBox(height: 5),
              Text("السلام عليكم كيف حالك ي صديقى ", overflow: TextOverflow.ellipsis,)
            ],
           
          ),
        ),
        Row(
          children: [
            Text("am"),
            Container(
              width: 5,
              height: 5,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
            ),
            Text("5:00"),
          ],
        )
      ],
    );
  }
}
