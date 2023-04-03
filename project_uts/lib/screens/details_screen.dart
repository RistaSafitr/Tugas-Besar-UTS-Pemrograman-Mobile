import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatefulWidget {
  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  String data = "";
  // const DetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 154, 127, 127),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 154, 127, 127),
        elevation: 0,
        leading: IconButton(
          icon: Icon(CupertinoIcons.arrow_left),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              // height: size.height,
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(top: size.height * 0.12),
                    height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: ListView(
                      children: <Widget>[
                        Container(
                          child: Text(
                            "New Balance 2002RD Men's Sneakers- Grey",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.all(18.0),
                          child: Text(
                            "Sentuhan modern pada running desain tahun 2000-an, sneaker pria 2002R akan meningkatkan gaya Anda sehari-hari.Siluet throwback ini dibuat dengan suede premium dan mesh untuk tampilan yang membedakan Anda. Di bagian bawah, bantalan ABZORB, dan teknologi Stabilitas Web memberi Anda dukungan dan kenyamanan yang Anda butuhkan untuk menjalani hari Anda. \n\nMengenai Ukuran: \n\nSelisih 1-2 cm mungkin terjadi dikarenakan proses pengembangan dan produksi.",
                            style: TextStyle(
                              color: Colors.black45,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.justify
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(18.0),
                          child: Text(
                            "Mengenai Warna: \n\nWarna sesungguhnya mungkin dapat berbeda. Hal ini dikarenakan setiap layar memiliki kemampuan yang berbeda-beda untuk menampilkan warna, kami tidak dapat menjamin bahwa warna yang Anda lihat adalah warna akurat dari produk tersebut.",
                            style: TextStyle(
                              color: Colors.black45,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.justify
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 18.0, left: 18.0, bottom: 14.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(8),
                                height: 50,
                                width: 58,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  border: Border.all(
                                    color: Color.fromARGB(255, 154, 127, 127),
                                  )
                                ),
                                child: IconButton(
                                   icon: Icon(CupertinoIcons.heart_solid),
                                   onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: Text(
                                            "Favorit",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          content: Text(
                                            "Ingin Menghapus Produk Dari Favorit?",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12
                                            ),
                                            textAlign: TextAlign.center,
                                            ),
                                          actions: [
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.of(context).pop("Batalkan");
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Color.fromARGB(255, 154, 127, 127),
                                              ),
                                              child: Text(
                                                "Batalkan",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.of(context).pop("Hapus");
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Color.fromARGB(255, 154, 127, 127),
                                              ),
                                              child: Text(
                                                "Hapus",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    ).then((value) {
                                      setState(() {
                                        data = value;
                                      });
                                    });
                                   },
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: SizedBox(
                                  // width: 200,
                                  height: 50,
                                  child: TextButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: Color.fromARGB(255, 154, 127, 127),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18)
                                      ),
                                    ),
                                    onPressed: (){},
                                    child: Text(
                                      "GO TO WEB",
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Men Colection",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "New Balance Grey",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Price\n",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "\$220,39\n\n",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Image.asset(
                                "assets/images/NEW_BALANCE_GRY0.png",
                                height: size.height * .45,
                                width: size.width * .50,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}