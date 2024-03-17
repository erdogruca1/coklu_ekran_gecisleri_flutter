import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odev/sonuc_ekrani.dart';
import 'kisiler.dart';


class OyunEkrani extends StatefulWidget {
  Kisiler kisi;
  OyunEkrani({required this.kisi});

  @override
  State<OyunEkrani> createState() => _OyunEkraniState();
}

class _OyunEkraniState extends State<OyunEkrani> {

  Future<bool> geriDonusTusu(BuildContext context)async{
    print("Navvigation geri tuşu seçildi");
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Oyun Ekranı"),
        leading: IconButton(onPressed: (){
          print("Appbar geri tuşu seçildi");
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: WillPopScope(
        onWillPop:  () => geriDonusTusu(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("${widget.kisi.ad} - ${widget.kisi.yas} - ${widget.kisi.boy} - ${widget.kisi.bekar}"),
              ElevatedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SonucEkrani()));
              }, child: const Text("Bitti")),
            ],
          ),
        ),
      ),
    );
  }
}
