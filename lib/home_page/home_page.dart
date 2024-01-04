import 'package:animation/pages/animated_positioned.dart';
import 'package:flutter/material.dart';
import '../pages/animated_align.dart';
import '../pages/animated_container.dart';
import '../pages/animated_cross_fade.dart';
import '../pages/animated_opacity.dart';
import '../pages/animated_padding.dart';
import '../pages/animated_physical_model.dart';
import '../pages/animated_positioned_directional.dart';
import '../pages/animated_switcher.dart';
import '../pages/animated_text_style.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animations",style: TextStyle(color: Colors.red,fontSize: 20),),
        centerTitle: true,
        elevation: 0.2,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
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
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => const AnimatedOpacityPage()));
                  }, child: const Text("Animated Opacity")),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => const AnimatedPaddingPage()));
                  }, child: const Text("Animated Padding")),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => const AnimatedPhysicalModelPage()));
                  }, child: const Text("Animated Physical ModelPag")),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => const AnimatedPositionedPage()));
                  }, child: const Text("Animated Positioned")),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => const AnimatedPositionedDirectionalPage()));
                  }, child: const Text("Animated Positioned Directional")),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => const AnimatedCrossFadePage()));
                  }, child: const Text("Animated Cross Fade")),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => const AnimatedSwitcherPage()));
                  }, child: const Text("Animated Switcher")),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => const AnimatedSwitcherPage()));
                  }, child: const Text("Animated Switcher")),
            ],
          ),
        ),
      ),
    );
  }
}
