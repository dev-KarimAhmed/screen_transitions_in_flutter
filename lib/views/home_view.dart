import 'package:animated_screen_transition/core/page_transitions.dart';
import 'package:animated_screen_transition/second_screen.dart';
import 'package:flutter/material.dart';

class HomeViwe extends StatelessWidget {
  const HomeViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter animation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              text: "Scale Transition",
              onTap: () {
                Navigator.push(
                    context,
                    PageTransitions(
                      screen: const SecondScreen(),
                      transitionType: TransitionType.scale,
                    ));
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              text: "Slide Transition",
              onTap: () {
                Navigator.push(
                    context,
                    PageTransitions(
                      screen: const SecondScreen(),
                      transitionType: TransitionType.slide,
                    ));
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              text: "Rotation Transition",
              onTap: () {
                Navigator.push(
                    context,
                    PageTransitions(
                      screen: const SecondScreen(),
                      transitionType: TransitionType.rotation,
                    ));
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              text: "Normal effect",
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return SecondScreen();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
    required this.text,
  });
  final Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(16),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: onTap,
        child: Text(
          "$text >",
          style: const TextStyle(fontSize: 20),
        ));
  }
}
