import 'package:flutter/material.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({Key? key}) : super(key: key);

  @override
  _ProdukPageState createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Data Produk'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: const [
          ItemProduk(
            namaProduk: 'Kulkas',
            harga: 30000,
          ),
          ItemProduk(
            namaProduk: 'Playstation',
            harga: 30000,
          ),
          ItemProduk(
            namaProduk: 'Radio',
            harga: 30000,
          ),
        ],
      ),
    );
  }
}

class ItemProduk extends StatelessWidget {
  final String? namaProduk;
  final int? harga;

  const ItemProduk({Key? key, this.namaProduk, this.harga}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(namaProduk ?? ''),
        subtitle: Text(harga.toString()),
      ),
    );
  }
}
