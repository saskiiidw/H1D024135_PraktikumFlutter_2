import 'package:flutter/material.dart';
import 'package:tugas_2_flutter/ui/produk_detail.dart';

class ProdukForm extends StatefulWidget {
  const ProdukForm({Key? key}) : super(key: key);

  @override
  _ProdukFormState createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  final _kodeProdukController = TextEditingController();
  final _namaProdukController = TextEditingController();
  final _hargaProdukController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Produk'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _textboxKodeProduk(),
            _textboxNamaProduk(),
            _textboxHargaProduk(),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  Widget _textboxKodeProduk() {
    return TextField(
      decoration: const InputDecoration(labelText: "Kode Produk"),
      controller: _kodeProdukController,
    );
  }

  Widget _textboxNamaProduk() {
    return TextField(
      decoration: const InputDecoration(labelText: "Nama Produk"),
      controller: _namaProdukController,
    );
  }

  Widget _textboxHargaProduk() {
    return TextField(
      decoration: const InputDecoration(labelText: "Harga"),
      controller: _hargaProdukController,
    );
  }

  Widget _tombolSimpan() {
    return ElevatedButton(
      child: const Text('Simpan'),
      onPressed: () {
        String kodeProduk = _kodeProdukController.text;
        String namaProduk = _namaProdukController.text;
        int harga = int.parse(_hargaProdukController.text);
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProdukDetail(
              kodeProduk: kodeProduk,
              namaProduk: namaProduk,
              harga: harga,
              hargaProduk: harga,
            ),
          ),
        );
      },
    );
  }
}
