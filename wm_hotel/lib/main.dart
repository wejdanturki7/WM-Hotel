import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wm_hotel/screens/auth/log_in_screen.dart';
import 'package:wm_hotel/screens/main_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:wm_hotel/services/supabase.dart';

void main() async {
  await Supabase.initialize(
    url: 'https://zeogakefcqlwrwbjupmi.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inplb2dha2VmY3Fsd3J3Ymp1cG1pIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTI4NjQyMzcsImV4cCI6MjAwODQ0MDIzN30._PegnOT0YjfnLuJuPzHDXf44lAC_IRA1klIG9rcN0rE',
  );
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool canGoHome = false;
  StreamSubscription? listen;

  @override
  void initState() {
    SupabaseService.supabase.auth.onAuthStateChange.listen((data) {
      final AuthChangeEvent event = data.event;
      if (event == AuthChangeEvent.signedIn) {
        canGoHome = true;
        setState(() {});
      }

      if (event == AuthChangeEvent.signedOut) {
        canGoHome = false;
        setState(() {});
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: canGoHome ? const MainScreen() : LogInScreen(),
    );
  }
}
