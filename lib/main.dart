import 'package:flutter/material.dart';
import 'package:tugas_2_flutter/ui/produk_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Flutter Pertama',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),
      home: const ProdukPage(),
    );
  }
}
