import 'package:flutter/material.dart';
import 'package:login/Presentation/Screens/Counter/counter_functions_screens.dart';
import 'package:login/Presentation/Screens/Counter/counter_screen.dart';

class Home extends StatelessWidget {
  final String _title;
  const Home({Key? key, required String title})
      : _title = title,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        ),
      body: const Center(
        child: CounterScreen(),
      ),
    );
  }
}
