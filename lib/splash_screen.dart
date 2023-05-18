import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
   const SplashScreen(this.startQuiz,{super.key});

   final void Function() startQuiz;

  // void navigateToQuizPage() {
    
  // }
  @override
  Widget build(context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          "assets/images/quiz-logo.png",
          height: 200,
          color: const Color.fromARGB(128, 255, 255, 255),
        ),
        // Opacity(
        //   opacity: 0.7,
        //   child: Image.asset(
        //     "assets/images/quiz-logo.png",
        //     height: 200,
        //   ),
        // ),
        const SizedBox(
          height: 16,
        ),
        const Text(
          "Learn flutter the fun way",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text(
            "Start quiz",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        )
      ]),
    );
  }
}
