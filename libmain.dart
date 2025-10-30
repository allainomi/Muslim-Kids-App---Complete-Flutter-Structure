import 'package:flutter/material.dart';
import 'package:muslim_kids_app/core/themes/app_theme.dart';
import 'package:muslim_kids_app/presentation/providers/theme_provider.dart';
import 'package:muslim_kids_app/presentation/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Muslim Kids - ????? ???????',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: context.watch<ThemeProvider>().themeMode,
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}