import "package:flutter/material.dart";
import "package:kasir_project/detail_pemesanan.dart";

class Pemesanan extends StatefulWidget {
  const Pemesanan({super.key});

  @override
  State<Pemesanan> createState() => _PemesananState();
}

class _PemesananState extends State<Pemesanan> {
  String namaPesanan = "";
  String hargaPesanan = "";
  String imagePesanan = "";

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // Column is also a layout widget. It takes a list of children and
        // arranges them vertically. By default, it sizes itself to fit its
        // children horizontally, and tries to be as tall as its parent.
        //
        // Column has various properties to control how it sizes itself and
        // how it positions its children. Here we use mainAxisAlignment to
        // center the children vertically; the main axis here is the vertical
        // axis because Columns are vertical (the cross axis would be
        // horizontal).
        //
        // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
        // action in the IDE, or press "p" in the console), to see the
        // wireframe for each widget.
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Text(
              "Selamat Datang, ",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width >= 600 ? 200 : 300,
                child: Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.2), width: 0.2)),
                  child: MediaQuery.of(context).size.width >= 600
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "asset/images/cah_kangkung.jpg",
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Cah Kangkung",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600)),
                                Text("Rp. 20.000",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500)),
                                Spacer(),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      namaPesanan = "Cah Kangkung";
                                      hargaPesanan = "20.000";
                                      imagePesanan = "images/cah_kangkung.jpg";
                                    });
                                  },
                                  child: Text("Pesan Ini"),
                                )
                              ],
                            ))
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("asset/images/cah_kangkung.jpg",
                                width: 110, height: 110),
                            SizedBox(
                              width: 30,
                            ),
                            Text("Cah Kangkung",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600)),
                            Text("Rp. 20.000",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500)),
                            Spacer(),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  namaPesanan = "Cah Kangkung";
                                  hargaPesanan = "20.000";
                                  imagePesanan =
                                      "asset/images/cah_kangkung.jpg";
                                });
                              },
                              child: Text("Pesan Ini"),
                            )
                          ],
                        ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width >= 600 ? 200 : 300,
                child: Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.2), width: 0.2)),
                  child: MediaQuery.of(context).size.width >= 600
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("asset/images/cah_tauge.jpg",
                                width: 110, height: 110),
                            SizedBox(
                              width: 30,
                            ),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Cah Tauge",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600)),
                                Text("Rp. 15.000",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500)),
                                Spacer(),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      namaPesanan = "Cah Tauge";
                                      hargaPesanan = "15.000";
                                      imagePesanan = "images/cah_tauge.jpg";
                                    });
                                  },
                                  child: Text("Pesan Ini"),
                                )
                              ],
                            ))
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("asset/images/cah_tauge.jpg",
                                width: 110, height: 110),
                            SizedBox(
                              width: 30,
                            ),
                            Text("Cah Tauge",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600)),
                            Text("Rp. 15.000",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500)),
                            Spacer(),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  namaPesanan = "Cah Tauge";
                                  hargaPesanan = "15.000";
                                  imagePesanan = "asset/images/cah_tauge.jpg";
                                });
                              },
                              child: Text("Pesan Ini"),
                            )
                          ],
                        ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width >= 600 ? 200 : 300,
                child: Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.2), width: 0.2)),
                  child: MediaQuery.of(context).size.width >= 600
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("asset/images/kerang_bambu.jpg",
                                width: 110, height: 110),
                            SizedBox(
                              width: 30,
                            ),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Kerang Bambu",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600)),
                                Text("Rp. 70.000",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500)),
                                Spacer(),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      namaPesanan = "Kerang Bambu";
                                      hargaPesanan = "70.000";
                                      imagePesanan =
                                          "asset/images/kerang_bambujpg";
                                    });
                                  },
                                  child: Text("Pesan Ini"),
                                )
                              ],
                            ))
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("asset/images/kerang_bambu.jpg",
                                width: 110, height: 110),
                            SizedBox(
                              width: 30,
                            ),
                            Text("Kerang Bambu",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600)),
                            Text("Rp. 70.000",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500)),
                            Spacer(),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  namaPesanan = "Kerang Bambu";
                                  hargaPesanan = "70.000";
                                  imagePesanan =
                                      "asset/images/kerang_bambu.jpg";
                                });
                              },
                              child: Text("Pesan Ini"),
                            )
                          ],
                        ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width >= 600 ? 200 : 300,
                child: Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.2), width: 0.2)),
                  child: MediaQuery.of(context).size.width >= 600
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset("asset/images/tahu_goreng.jpg",
                                width: 110, height: 110),
                            SizedBox(
                              width: 30,
                            ),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Tahu Goreng",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600)),
                                Text("Rp. 5.000",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500)),
                                Spacer(),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      namaPesanan = "Tahu Goreng";
                                      hargaPesanan = "5.000";
                                      imagePesanan = "images/tahu_goreng.jpg";
                                    });
                                  },
                                  child: Text("Pesan Ini"),
                                )
                              ],
                            ))
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("asset/images/tahu_goreng.jpg",
                                width: 110, height: 110),
                            SizedBox(
                              width: 30,
                            ),
                            Text("Tahu Goreng",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600)),
                            Text("Rp. 5.000",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500)),
                            Spacer(),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  namaPesanan = "Tahu Goreng";
                                  hargaPesanan = "5.000";
                                  imagePesanan = "asset/images/tahu_goreng.jpg";
                                });
                              },
                              child: Text("Pesan Ini"),
                            )
                          ],
                        ),
                ),
              ),
            ],
          )),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 75,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent.withOpacity(0.3)),
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          namaPesanan == ""
                              ? "Pesanan Anda    : - "
                              : "Pesanan Anda    : $namaPesanan",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          hargaPesanan == ""
                              ? "Pembayaran Anda : Rp. 0"
                              : "Pembayaran Anda : Rp. $hargaPesanan ",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    )),
                    ElevatedButton(
                        onPressed: () {
                          if (namaPesanan == "") {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content:
                                    Text("Pilih Pesanan Anda terlebih dahulu!"),
                                duration: Duration(seconds: 1),
                              ),
                            );
                          } else {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return DetailPemesanan(
                                namaPesanan: namaPesanan,
                                hargaPesanan: hargaPesanan,
                                imagePesanan: imagePesanan,
                              );
                            }));
                          }
                        },
                        child: Text("Lanjutkan"))
                  ],
                ),
              ),
            ),
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
