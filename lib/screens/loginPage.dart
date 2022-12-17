import 'package:btk_bulut_login/screens/homePage.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class btkLoginPage extends StatefulWidget {
  const btkLoginPage({
    Key? key,
  }) : super(key: key);

  @override
  State<btkLoginPage> createState() => _btkLoginPageState();
}

final TextEditingController adminAd = TextEditingController();
final TextEditingController adminSifre = TextEditingController();

class _btkLoginPageState extends State<btkLoginPage> {
  var kullaniciAd = "fatmanur";
  var kullaniciSifre = "123456";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            SizedBox(
              height: context.dynamicHeight(0.02),
            ),
            Padding(
              padding: context.paddingMedium,
              child: Align(
                alignment: Alignment.topRight,
                child: FloatingActionButton(
                  onPressed: () {
                    print("icona tıklandı");
                  },
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.question_mark,
                    color: Colors.blue,
                    size: context.dynamicHeight(0.05),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: context.dynamicHeight(0.001),
            ),
            SizedBox(
                width: context.dynamicWidth(0.7),
                child: Image.asset("assets/images/LoginLogo.png")),
            SizedBox(
              height: context.dynamicHeight(0.05),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
                child: TextField(
                  controller: adminAd,
                  decoration: InputDecoration(
                      hintText: "Kullanıcı Adınız",
                      hintStyle: TextStyle(color: Colors.black26),
                      prefixIcon: Icon(
                        Icons.account_circle_rounded,
                        color: Colors.blue,
                        size: 25,
                      )),
                )),
            SizedBox(
              height: context.dynamicHeight(0.01),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
                child: TextField(
                  controller: adminSifre,
                  decoration: InputDecoration(
                      hintText: "Şifre",
                      hintStyle: TextStyle(color: Colors.black26),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.blue,
                        size: 20,
                      )),
                )),
            SizedBox(
              height: context.dynamicWidth(0.1),
            ),
            SizedBox(
                height: context.dynamicHeight(0.06),
                width: context.dynamicWidth(0.79),
                child: ElevatedButton(
                    onPressed: () {
                      if (kullaniciAd == adminAd.text &&
                          kullaniciSifre == adminSifre.text) {
                        print("diğer sayfaya geçti");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    HomePage(isim: adminAd.text)));
                      } else {
                        print("hata");
                      }
                    },
                    child: Text("GİRİŞ"))),
            SizedBox(
              height: context.dynamicHeight(0.34),
            ),
            SizedBox(
                width: context.dynamicWidth(0.5),
                child: Image.asset("assets/images/altResim.png"))
          ],
        )),
      ),
    );
  }
}
