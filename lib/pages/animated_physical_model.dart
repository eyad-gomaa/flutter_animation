import 'package:flutter/material.dart';

class AnimatedPhysicalModelPage extends StatefulWidget {
  const AnimatedPhysicalModelPage({Key? key}) : super(key: key);

  @override
  State<AnimatedPhysicalModelPage> createState() => _AnimatedPhysicalModelPageState();
}

class _AnimatedPhysicalModelPageState extends State<AnimatedPhysicalModelPage> {
  Color _color = Colors.lightBlue;
  bool _isPressed = false;
  double _width = 100;
  double _height = 100;
  void _toggleElevation(){
    _isPressed = !_isPressed;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: GestureDetector(
            onTap: (){
              setState(() {
                _toggleElevation();
              });
            },
            child: AnimatedPhysicalModel(
              duration: const Duration(milliseconds: 500),
              shape: BoxShape.rectangle,
              elevation: _isPressed ? 90 : 0,
              color: _color,
              shadowColor: _color,
              child: Container(
                width: _width,
                  height: _height,
                  child: Image.asset("assets/jerry.png")),
            )
        ),
      ),
    );
  }
}
