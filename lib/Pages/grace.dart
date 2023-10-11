import 'package:flutter/material.dart';

class Grace extends StatelessWidget {
  const Grace({super.key});
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Grace"),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 100.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://occ-0-420-114.1.nflxso.net/dnm/api/v6/LmEnxtiAuzezXBjYXPuDgfZ4zZQ/AAAABa4UAEx4vGcwwHQGJ4rLB3zaYiVdZZ7lgSdgv8OAWEb34BGXEFbNumHPKAupfLMmOiOD-DIsXy5DRklM_Qk9xwIape-S7O0u67l4BYO9Ghj-.png?r=74a'))),
                  ),
                )
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
