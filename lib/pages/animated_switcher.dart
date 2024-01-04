import 'package:flutter/material.dart';

class AnimatedSwitcherPage extends StatefulWidget {
  const AnimatedSwitcherPage({Key? key}) : super(key: key);

  @override
  State<AnimatedSwitcherPage> createState() => _AnimatedSwitcherPageState();
}

class _AnimatedSwitcherPageState extends State<AnimatedSwitcherPage> {
  bool _isFirstWidgetVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Center(
        child: AnimatedSwitcher(
          duration: Duration(milliseconds: 500),
          child: _isFirstWidgetVisible ? ElevatedButton(
            child: Text("SignIn"),
            onPressed: (){
              setState(() {
                _isFirstWidgetVisible = ! _isFirstWidgetVisible;
              });
            },
          ): CircularProgressIndicator()
        ),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              _isFirstWidgetVisible = ! _isFirstWidgetVisible;
            });
          },
          child: Icon(Icons.cancel_outlined),
        ),
    );
  }
}
