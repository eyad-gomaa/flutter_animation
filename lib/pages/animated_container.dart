import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  Color _color = Colors.lightBlue;
  double _radius = 20.0;
  double _width = 100;
  double _height = 100;
  void setAnimationValues(){
     _color = Colors.orange;
     _radius = 20.0;
     _width = 200;
     _height = 200;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: GestureDetector(
          onTap: (){
            setState(() {
              setAnimationValues();
            });
          },
          child: AnimatedContainer(
            width: _width,
            height: _height,
            duration: const Duration(milliseconds: 500),
            child: Image.asset("assets/jerry.png"),
            decoration: BoxDecoration(
              color: _color,
              borderRadius: BorderRadius.circular(_radius)
            ),
          )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.animation),
        onPressed: () {
        setState(() {
           _color = Colors.lightBlue;
           _radius = 20.0;
           _width = 100;
           _height = 100;
        });
      },),
    );
  }
}
