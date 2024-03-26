import 'package:aplikasi/ui/contact_list.dart';
import 'package:aplikasi/ui/produk_form.dart';
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
        title: const Text("Contact List"), 
      actions: [ 
        GestureDetector( 
        // menampilkan icon +
        child: const Icon(Icons.add), 
        //pada saat icon + di tap 
        onTap: () async { 
        //berpindah ke halaman ProdukForm 
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProdukForm())); 
        }) 
      ], 
    ),
    body: ListView(
      children: const [
        // List 1
        ItemProduk(
          nama: "Frans",
          nomorTelepon: 085637981700,
        ),
        // List 2
        ItemProduk(
          nama: "Chelyne",
          nomorTelepon: 085161240920,
        ),
        // List 3
        ItemProduk(
          nama: "Manda",
          nomorTelepon: 085072409273,
        ),
      ],
    ),
  );
}
}

class ItemProduk extends StatelessWidget { 
  final String? nama; 
  final int? nomorTelepon;
 
 const ItemProduk({Key? key, this.nama, this.nomorTelepon}) 
      : super(key: key);
 
 @override 
 Widget build(BuildContext context) { 
  return GestureDetector(
    child: Card( 
      child: ListTile( 
        title: Text(nama.toString()), 
      subtitle: Text(nomorTelepon.toString()), 
      ), 
    ),
   onTap: () {
    Navigator.push(
        context,
      MaterialPageRoute(
        builder: (context) => ProdukDetail (
          nama: nama,
          nomorTelepon: nomorTelepon,
        )));
    },
  ); 
 } 
}