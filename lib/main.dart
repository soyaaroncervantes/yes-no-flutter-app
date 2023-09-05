import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no/presentation/providers/char_provider.dart';

import 'config/theme/app_theme.dart';
import 'presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ChatProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Yes No app',
        theme: AppTheme(selectedColorTheme: 6).theme(),
        home: const ChatScreen(),
      ),
    );
  }
}
