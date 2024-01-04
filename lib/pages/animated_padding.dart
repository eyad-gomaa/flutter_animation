import 'package:flutter/material.dart';

class AnimatedPaddingPage extends StatefulWidget {
  const AnimatedPaddingPage({Key? key}) : super(key: key);

  @override
  State<AnimatedPaddingPage> createState() => _AnimatedPaddingPageState();
}

class _AnimatedPaddingPageState extends State<AnimatedPaddingPage> {
  List<String> _characters = ["jerry","tom","cheese","dog"];
  bool addPadding = false;
  double _padding = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: List.generate(4, (index) => AnimatedPadding(
          duration: Duration(milliseconds: 500),
          padding: EdgeInsets.all(_padding),
          child: Container(
              color: Colors.red,
              child: Image.asset("assets/${_characters[index]}.png")),
        ),)
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(addPadding ? Icons.expand : Icons.expand_less),
        onPressed: () {
          setState(() {
            addPadding ? _padding = 0 : _padding = 30;
            addPadding = !addPadding;
          });
        },),
    );
  }
}
