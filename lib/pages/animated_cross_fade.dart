import 'package:flutter/material.dart';

class AnimatedCrossFadePage extends StatefulWidget {
  const AnimatedCrossFadePage({Key? key}) : super(key: key);

  @override
  State<AnimatedCrossFadePage> createState() => _AnimatedCrossFadePageState();
}

class _AnimatedCrossFadePageState extends State<AnimatedCrossFadePage> {
  Color _color = Colors.lightBlue;
  bool _isPressed = false;
  double _width = 200;
  double _height = 200;
  bool _isFistWidgetVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: GestureDetector(
            onTap: (){
              setState(() {
                _isFistWidgetVisible = !_isFistWidgetVisible;
              });
            },
            child: AnimatedCrossFade(
              firstCurve: Curves.linear,
              secondCurve: Curves.linear,
              duration: const Duration(milliseconds: 500),
              firstChild: Container(
                  width: _width,
                  height: _height,
                  child: Image.asset("assets/tom.png")),
              secondChild: Container(
                  width: _width,
                  height: _height,
                  child: Image.asset("assets/jerry.png")),
              crossFadeState: _isFistWidgetVisible? CrossFadeState.showFirst : CrossFadeState.showSecond,
            )
        ),
      ),
    );
  }
}
