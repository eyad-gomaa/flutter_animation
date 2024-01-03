import 'package:flutter/material.dart';

class AnimatedAlignPage extends StatefulWidget {
  const AnimatedAlignPage({Key? key}) : super(key: key);

  @override
  State<AnimatedAlignPage> createState() => _PageState();
}

class _PageState extends State<AnimatedAlignPage> {
  int _jerryAlign = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          AnimatedAlign(alignment: getNextAlignment(_jerryAlign),
            duration: Duration(milliseconds: 400),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.transparent,
              child: Image.asset("assets/jerry.png"),
            ),
          ),
          AnimatedAlign(alignment: getNextAlignment(_jerryAlign+1),
            duration: Duration(milliseconds: 400),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.transparent,
              child: Image.asset("assets/tom.png"),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          _jerryAlign += 1;
        });
      },),
    );

  }
  Alignment getNextAlignment(int alignment){
    switch(alignment){
      case 1 :
        return Alignment.topCenter;
      case 2 :
        return Alignment.topRight;
      case 3 :
        return Alignment.centerLeft;
      case 4 :
        return Alignment.center;
      case 5 :
        return Alignment.centerRight;
      case 6 :
        return Alignment.bottomLeft;
      case 7 :
        return Alignment.bottomCenter;
      case 8 :
        return Alignment.topLeft;
      default:
        _jerryAlign = 0;
        return Alignment.centerLeft;
    }
  }
}
