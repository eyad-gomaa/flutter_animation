
import 'package:flutter/material.dart';

class AnimatedPositionedPage extends StatefulWidget {
  const AnimatedPositionedPage({Key? key}) : super(key: key);

  @override
  State<AnimatedPositionedPage> createState() => _AnimatedPositionedPageState();
}

class _AnimatedPositionedPageState extends State<AnimatedPositionedPage> {
  bool _startEating = true;
  Curve _curve = Curves.easeInOutCirc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        fit: StackFit.expand,
        children: [
          AnimatedPositioned(
            top: 0,
            left: 0,
            curve: _curve,
            duration: Duration(milliseconds: 300),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.transparent,
              child: Image.asset("assets/cheese.png"),
            ),
          ),
          AnimatedPositioned(
            top: 0,
            left: _startEating ? MediaQuery.sizeOf(context).width - 150 : 0,
            curve: _curve,
            duration: Duration(milliseconds: 400),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.transparent,
              child: Image.asset("assets/jerry.png"),
            ),
          ),
          AnimatedPositioned(
            top: _startEating ? MediaQuery.sizeOf(context).width / 2 : 0,
            left: _startEating ? MediaQuery.sizeOf(context).width / 2 : 0,
            curve: _curve,
            duration: Duration(milliseconds: 500),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.transparent,
              child: Image.asset("assets/dog.png"),
            ),
          ),
          AnimatedPositioned(
            top: _startEating ? MediaQuery.sizeOf(context).height - 200 : 0,
            left: 10,
            curve: _curve,
            duration: Duration(milliseconds: 200),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.transparent,
              child: Image.asset("assets/tom.png"),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.place),
        onPressed: () {
        setState(() {
          _startEating = !_startEating;
        });
      },),
    );
  }
}
