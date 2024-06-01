import 'package:flutter/material.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              "Oops!",
            ),
            Text(
              "Looks like this page is not implemented yet or is invalid.",
            ),
            Text(
              "Go to Home",
            ),
          ],
        ),
      ),
    );
  }
}
