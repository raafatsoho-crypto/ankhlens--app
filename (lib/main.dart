import 'package:flutter/material.dart';

void main() {
  runApp(const AnkhlensApp());
}

class AnkhlensApp extends StatelessWidget {
  const AnkhlensApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ankhlens',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFD4AF37), // لون ذهبي يتناسب مع الطابع الفرعوني
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ankhlens - الهيروغليفية'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.temple_hindu, size: 80, color: Color(0xFFD4AF37)),
            const SizedBox(height: 16),
            const Text(
              'مرحباً بك في قاموس ومسح الهيروغليفية',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () {
                // الانتقال لشاشة الماسح أو القاموس لاحقاً
              },
              icon: const Icon(Icons.camera_alt),
              label: const Text('ابدأ المسح الضوئي'),
            ),
          ],
        ),
      ),
    );
  }
}
