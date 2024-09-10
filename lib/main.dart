import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; 
import 'modules/home/view/home_screen.dart';
import 'utils/theme.dart';

void main() {
  runApp(ProviderScope(child: OpenArtApp())); 
}

class OpenArtApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Best Practices App',
      theme: AppTheme.lightTheme,
      home: HomeScreen(),
    );
  }
}