import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickcount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                clickcount.toString(),
                style: const TextStyle(
                    fontSize: 166.0, fontWeight: FontWeight.w100),
              ),
              Text(
                "Click${clickcount == 1 ? "" : "s"}",
                style: const TextStyle(fontSize: 25.0),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              clickcount++;
            });
          },
          child: const Icon(Icons.plus_one),
        ));
  }
}
