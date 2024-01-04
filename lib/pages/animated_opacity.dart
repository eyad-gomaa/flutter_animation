import 'package:flutter/material.dart';

class AnimatedOpacityPage extends StatefulWidget {
  const AnimatedOpacityPage({Key? key}) : super(key: key);

  @override
  State<AnimatedOpacityPage> createState() => _AnimatedOpacityPageState();
}

class _AnimatedOpacityPageState extends State<AnimatedOpacityPage> {
  bool _isVisible = true;
  Curve _curve = Curves.easeInOutCubicEmphasized;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
                opacity: _isVisible ? 1.0 : 0.0,
                duration: Duration(milliseconds: 500),
              curve: _curve,
              child: Text(
                "Tom and Jerry",
                style: TextStyle(fontSize: 30),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            AnimatedOpacity(
              opacity: _isVisible ? 1.0 : 0.0,
              duration: Duration(milliseconds: 1500),
              curve: _curve,
              child: Container(
                width: 100,
                  height: 100,
                  child: Image.asset("assets/jerry.png")),
            ),
            AnimatedOpacity(
                opacity: _isVisible ? 1.0 : 0.0,
                duration: Duration(milliseconds: 2500),
              curve: _curve,
              child: Container(
                  width: 100,
                  height: 100,
                  child: Image.asset("assets/tom.png")),
            ),
          ],
        ),
      ) ,
      floatingActionButton: FloatingActionButton(
        child: Icon(_isVisible ? Icons.visibility : Icons.visibility_off),
        onPressed: () {
          setState(() {
            _isVisible = !_isVisible;
          });
        },),
    );
  }
}
