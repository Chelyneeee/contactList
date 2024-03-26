import 'package:aplikasi/ui/contact_list.dart';
import 'package:flutter/material.dart';

class ProdukForm extends StatefulWidget {
  const ProdukForm({Key? key}) : super(key: key);

@override
  _ProdukFormState createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  final _namaTextboxController = TextEditingController(); 
  final _nomorTeleponTextboxController = TextEditingController();

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Produk'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
          _textboxnama(),
          _textboxnomorTelepon(),
          _tombolSimpan()
        ],
      ),
    ),
  );
}

_textboxnama() {
return TextField(
  decoration: const InputDecoration(labelText: "Nama"),
  controller: _namaTextboxController,
  );
}

_textboxnomorTelepon() {
return TextField(
  decoration: const InputDecoration(labelText: "Nomor Telepon"),
  controller: _nomorTeleponTextboxController,
  );
}

_tombolSimpan() {
  return ElevatedButton(
    onPressed: () {
      String nama = _namaTextboxController.text;
      int nomorTelepon= int.parse(
        _nomorTeleponTextboxController.text); //parsing dari String ke int// pindah ke halaman Produk Detail dan mengirim data
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ProdukDetail(
          nama: nama,
          nomorTelepon: nomorTelepon,
        )));
    }, 
    child: const Text('Simpan'));
}
}