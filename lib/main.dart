import 'package:flutter/material.dart';
import 'package:maybe_app/presentation/screens/chat/chat_screen.dart';
import 'package:maybe_app/presentation/theme/app_theme.dart';

void main(){
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: AppTheme(selectedColor: 0).theme(),
      home: const ChatScreen()
    );
  }
}