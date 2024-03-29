import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => Navigator.of(context).pushNamed("/bloc"),
              child: const Text("BLoc"),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pushNamed("/cubit"),
              child: const Text("Cubit"),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pushNamed("/taskCubit"),
              child: const Text("Task Cubit"),
            ),
          ],
        ),
      ),
    );
  }
}
