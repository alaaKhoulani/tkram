import 'package:flutter/material.dart';
import 'package:untitled3/screens/home_page.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
              height: 32,
            ),
            Container(
              width: 2 * MediaQuery.of(context).size.width / 3,
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(
                right: 24,
              ),
              child: Text(
                "مرحبا في تكرم قم بتسجيل الدخول",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                child: Expanded(
                  child: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            label: Text(
                              "الرقم الشخصي",
                              style: TextStyle(color: Color(0xffD1CFCF)),
                            ),
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffD1CFCF)),
                                borderRadius: BorderRadius.circular(6))),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            label: Text(
                              "البريد الالكتروني",
                              style: TextStyle(color: Color(0xffD1CFCF)),
                            ),
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffD1CFCF)),
                                borderRadius: BorderRadius.circular(6))),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            label: Text(
                              "كلمة السر",
                              style: TextStyle(color: Color(0xffD1CFCF)),
                            ),
                            border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffD1CFCF)),
                                borderRadius: BorderRadius.circular(6))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "تذكرني",
                            style: TextStyle(),
                          ),
                          Checkbox(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    color: Color(0xffA7A6A6), width: 0.5),
                                borderRadius: BorderRadius.circular(3.48),
                              ),
                              value: false,
                              onChanged: (val) {})
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        child: Container(
                          width: double.infinity,
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(top: 42),
                          padding: EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(
                              color: Colors.blue[500],
                              borderRadius: BorderRadius.circular(6)),
                          child: Text(
                            "التالي",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(bottom: 42),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("ليس لديك حساب؟ ",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          )),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "قم بإنشاء حساب",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.blue[600]),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
