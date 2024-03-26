import 'package:flutter/material.dart';

class ProdukDetail extends StatefulWidget {
final String? nama;
final int? nomorTelepon;

const ProdukDetail({Key? key, this.nama, this.nomorTelepon})
: super(key: key);

@override
_ProdukDetailState createState() => _ProdukDetailState();
}

class _ProdukDetailState extends State<ProdukDetail> {
@override
Widget build(BuildContext context) {
return Scaffold(

appBar: AppBar(
title: const Text('Detail Produk'),
),
body: Column(
children: [
Text("Nama : ${widget.nama}"),
Text("Nomor Telepon : ${widget.nomorTelepon}")
],
),
);
}
}
