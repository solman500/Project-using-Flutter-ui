import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

    title: TextButton( onPressed:(){Navigator.pop(context);},child: const Text("Screen"), ),

      ),
    );
  }
}