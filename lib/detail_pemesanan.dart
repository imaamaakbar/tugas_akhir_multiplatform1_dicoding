import 'package:flutter/material.dart';
import 'package:kasir_project/pemesanan.dart';

class DetailPemesanan extends StatelessWidget {
  final String namaPesanan;
  final String hargaPesanan;
  final String imagePesanan;
  const DetailPemesanan(
      {super.key,
      required this.namaPesanan,
      required this.hargaPesanan,
      required this.imagePesanan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              Text(
                "Terima Kasih Telah Membeli",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              Container(
                padding: EdgeInsets.all(25),
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
                child: MediaQuery.of(context).size.width <= 600
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Detail Pesanan",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Image.asset("$imagePesanan", width: 200, height: 200),
                          SizedBox(
                            width: 30,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("$namaPesanan",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600)),
                                Text("Rp. $hargaPesanan",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500)),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Pemesanan();
                                  }));
                                },
                                child: Text("Kembali Ke Menu")),
                          )
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Detail Pesanan",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.asset("$imagePesanan",
                                  width: 200, height: 200, fit: BoxFit.contain),
                              SizedBox(
                                width: 30,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("$namaPesanan",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600)),
                                        Text("Rp. $hargaPesanan",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500)),
                                        SizedBox(
                                          height: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return Pemesanan();
                                          }));
                                        },
                                        child: Text("Kembali Ke Menu")),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
