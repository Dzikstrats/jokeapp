import 'package:flutter/material.dart';

import 'package:jokeapp/joke.dart';

class HalamanAdaptive extends StatefulWidget {
  const HalamanAdaptive({Key? key}) : super(key: key);

  @override
  _HalamanAdaptiveState createState() => _HalamanAdaptiveState();
}

class _HalamanAdaptiveState extends State<HalamanAdaptive> {
  late Joke pilihanjoke;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Joke"),
      ),
      backgroundColor: Colors.blue,
    );
  }
}
