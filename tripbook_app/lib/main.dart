import 'package:flutter/material.dart';

import 'pages/home.dart';
import 'pages/login.dart';
import 'pages/my_trips.dart';
import 'pages/new_trip.dart';
import 'pages/profile.dart';
import 'pages/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TripBook',
      home: const HomePage(),

      debugShowCheckedModeBanner: false,

      routes: {
        '/home': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/profile': (context) => const ProfilePage(),
        '/new-trip': (context) => const NewTripPage(),
        '/my-trips': (context) => const MyTripsPage(),
      },

      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Quicksand',
        colorScheme: const ColorScheme.light().copyWith(
          background: Colors.white,
          primary: const Color.fromARGB(255, 123, 208, 255),
          secondary: Colors.white,
          onPrimary: Colors.white,
          onSecondary: Colors.black,
          // Adicione outras cores aqui
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Quicksand',
        colorScheme: const ColorScheme.dark().copyWith(
          background: const Color.fromARGB(255, 40, 40, 48),
          primary: const Color.fromARGB(255, 123, 208, 255),
          secondary: Colors.black,
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          // Adicione outras cores aqui
        ),
      ), // Define o tema escuro aqui
      themeMode: ThemeMode
          .dark, // Escolha ThemeMode.system para seguir as configurações do sistema
    );
  }
}
