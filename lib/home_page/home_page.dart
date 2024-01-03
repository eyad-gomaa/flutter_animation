import 'package:flutter/material.dart';
import '../pages/animated_align.dart';
import '../pages/animated_container.dart';
import '../pages/animated_text_style.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            ElevatedButton(
                onPressed: (){
              Navigator.push(
                  context, MaterialPageRoute(
                  builder: (context) => const AnimatedAlignPage()));
            }, child: const Text("Animated Align")),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => const AnimatedContainerPage()));
                }, child: const Text("Animated Container")),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => const AnimatedTextStylePage()));
                }, child: const Text("Animated TextStyle")),
          ],
        ),
      ),
    );
  }
}
