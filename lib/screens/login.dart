import 'package:flutter/material.dart';
import 'package:untitled3/data/test_data.dart';
import 'package:untitled3/screens/home_page.dart';
import 'package:untitled3/screens/signin.dart';
// import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            // mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: double.maxFinite,
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(right: 20, top: 51),
                child: Image.asset(
                  "assets/images/tkram.png",
                  width: 98,
                  height: 46,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: const Text(
                  "خدماتك أصبحت",
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text(
                  "عالمية .",
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                      // height: 32,
                      color: Colors.blue[500]),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20),
                // padding: EdgeInsets.fromLTRB(12, 10, 10, 10),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffD1CFCF),
                    ),
                    borderRadius: BorderRadius.circular(6)),
                child: ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  leading: Image.asset(
                    'assets/images/google.png',
                    width: 24,
                    height: 24,
                  ),
                  title: Text(
                    'انضم عبر غوغل بلاي',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: black1),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20),
                // padding: EdgeInsets.fromLTRB(12, 10, 10, 10),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffD1CFCF),
                    ),
                    borderRadius: BorderRadius.circular(6)),
                child: ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  leading: Image.asset(
                    'assets/images/mail.png',
                    width: 24,
                    height: 24,
                  ),
                  title: Text(
                    'انضم إلينا عبر بريدك الالكتروني',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: black1),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  "أو",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20),
                // padding: EdgeInsets.fromLTRB(12, 10, 10, 10),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffD1CFCF),
                    ),
                    borderRadius: BorderRadius.circular(6)),
                child: ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  title: Text(
                    'اكمل ك ضيف',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        color: Color(0xffD1CFCF)),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
          Image.asset(
            "assets/images/tkr2.png",
            width: 3 * MediaQuery.of(context).size.width / 4,
          )
        ],
      ),
    );
  }
}
