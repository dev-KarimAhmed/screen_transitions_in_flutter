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
              onTap: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              text: "Slide Transition",
              onTap: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              text: "Rotation Transition",
              onTap: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              text: "Normal effect",
              onTap: () {},
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
