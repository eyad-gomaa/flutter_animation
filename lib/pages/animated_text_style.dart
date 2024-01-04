import 'package:flutter/material.dart';

class AnimatedTextStylePage extends StatefulWidget {
  const AnimatedTextStylePage({Key? key}) : super(key: key);

  @override
  State<AnimatedTextStylePage> createState() => _AnimatedTextStylePageState();
}

class _AnimatedTextStylePageState extends State<AnimatedTextStylePage> {
  double _fontSize = 20;
  Color _color = Colors.black;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedDefaultTextStyle(
              child: Text("hello"),
              style: TextStyle(
                fontSize: _fontSize,
                color: _color,
              ),
              duration: const Duration(milliseconds: 500),
            curve: Curves.linear,

          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){
                setState(() {
                  _fontSize +=5;
                });
              }, icon: Icon(Icons.add)),
              IconButton(onPressed: (){
                setState(() {
                  _fontSize -=5;
                });
              }, icon: Icon(Icons.remove))
            ],
          )

        ],
      ),
    );
  }
}
