import 'package:flutter/material.dart';

class AnimatedPositionedDirectionalPage extends StatefulWidget {
  const AnimatedPositionedDirectionalPage({Key? key}) : super(key: key);

  @override
  State<AnimatedPositionedDirectionalPage> createState() => _AnimatedPositionedDirectionalPageState();
}

class _AnimatedPositionedDirectionalPageState extends State<AnimatedPositionedDirectionalPage> {
  Curve _curve = Curves.easeInOutCirc;
  double _start = 0;
  double _top = 0;
  void _moveUp(){
    setState(() {
      _top-=50;
      if (_top < 0){
        _top = 0;
      }
    });
  }
  void _moveDown(){
    setState(() {
      _top+=50;
      if (_top > MediaQuery.sizeOf(context).height - 200){
        _top = MediaQuery.sizeOf(context).height - 200;
      }
    });
  }
  void _moveRight(){
    setState(() {
      _start+=50;
      if (_start > MediaQuery.sizeOf(context).width - 100){
        _start = MediaQuery.sizeOf(context).width - 100;
      }
    });
  }
  void _moveLeft(){
    setState(() {
      _start-=50;
      if (_start < 0){
        _start = 0;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        fit: StackFit.expand,
        children: [
          AnimatedPositionedDirectional(
            start: _start,
            top: _top,
            curve: _curve,
            duration: const Duration(milliseconds: 300),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.transparent,
              child: Image.asset("assets/cheese.png"),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: (){
                      _moveUp();
                    },
                    child: const Icon(Icons.arrow_circle_up)),
                ElevatedButton(
                    onPressed: (){
                      _moveDown();
                    },
                    child: const Icon(Icons.arrow_circle_down)),
                ElevatedButton(
                    onPressed: (){
                      _moveLeft();
                    },
                    child: const Icon(Icons.arrow_circle_left_outlined)),
                ElevatedButton(
                    onPressed: (){
                      _moveRight();
                    },
                    child: const Icon(Icons.arrow_circle_right_outlined)),
              ],
            ),
          )
        ],
      ),

    );
  }
}
