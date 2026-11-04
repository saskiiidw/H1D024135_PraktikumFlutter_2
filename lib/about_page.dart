import 'package:flutter/material.dart';
import 'package:tugas_2_flutter/sidemenu.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Page'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text('Ini adalah halaman About'),
      ),
      drawer: const Sidemenu(),
    );
  }
}
