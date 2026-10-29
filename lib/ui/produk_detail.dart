import 'package:flutter/material.dart';

class ProdukDetail extends StatelessWidget {
  final String? kodeProduk;
  final String? namaProduk;
  final int? harga;
  final int? hargaProduk;

  const ProdukDetail({
    Key? key,
    this.kodeProduk,
    this.namaProduk,
    this.harga,
    this.hargaProduk,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final displayHarga = hargaProduk ?? harga;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Produk'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Text("Kode Produk : $kodeProduk"),
          Text("Nama Produk : $namaProduk"),
          Text("Harga Produk : $displayHarga"),
        ],
      ),
    );
  }
}
