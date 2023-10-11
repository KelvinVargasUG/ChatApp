// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  final String _title;

  const CounterFunctionsScreen({Key? key, required String title})
      : _title = title,
        super(key: key);

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickcount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget._title),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    clickcount = 0;
                  });
                },
                icon: const Icon(Icons.refresh_rounded)),
          ],
        ),
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
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButton(
              icon: Icons.plus_one,
              onPressed: () {
                setState(() {
                  clickcount++;
                });
              },
              color: Colors.green,
            ),
            const SizedBox(
              height: 10.0,
            ),
            CustomButton(
              icon: Icons.exposure_minus_1_sharp,
              onPressed: () {
                if (clickcount == 0) return;
                setState(() {
                  clickcount--;
                });
              },
              color: Colors.red,
            ),
            const SizedBox(
              height: 10.0,
            ),
            CustomButton(
              icon: Icons.refresh,
              onPressed: () {
                setState(() {
                  clickcount = 0;
                });
              },
              color: Colors.blue,
            ),
          ],
        ));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final MaterialColor color;
  const CustomButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      enableFeedback: true,
      elevation: 10,
      shape: const CircleBorder(),
      backgroundColor: color,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
