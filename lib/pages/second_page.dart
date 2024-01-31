import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';

class SecondPage extends StatefulWidget {
  static const String id = "second_page";

  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Second page"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward,
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            const Text(
              "Hello World",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ).animate().fade(duration: 2000.ms).slideY(
                  curve: Curves.easeIn,
                ),
            const SizedBox(
              height: 40,
            ),
            Container(
                height: 300,
                width: 300,
                child: Lottie.asset('assets/lotties/animation.json')),
          ],
        ),
      ),
    );
  }
}
