import 'package:flutter/material.dart';

class Active extends StatelessWidget {
  // const Active({super.key});
  final String name;

  const Active({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 15,
          ),
          SizedBox(
            height: 5,
          ),
          Text(name,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis)
        ],
      ),
    );
  }
}
