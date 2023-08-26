import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:wm_hotel/screens/home_screen.dart';

void main() async {
  await Supabase.initialize(
    url: 'https://zeogakefcqlwrwbjupmi.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inplb2dha2VmY3Fsd3J3Ymp1cG1pIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTI4NjQyMzcsImV4cCI6MjAwODQ0MDIzN30._PegnOT0YjfnLuJuPzHDXf44lAC_IRA1klIG9rcN0rE',
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
