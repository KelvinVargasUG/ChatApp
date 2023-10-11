import 'package:flutter/material.dart';
import 'package:login/Config/Theme/app_theme.dart';
import 'package:login/Pages/CHAT/Providers/chat_provider.dart';
import 'package:login/Pages/CHAT/chat.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppTheme(selectedColorTheme: 4).theme(),
        routes: {
          '/': (context) => const Chat(title: 'Chat'),
        },
      ),
    );
  }
}