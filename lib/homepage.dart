import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thebatman/inappwebview.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isElevated = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2d030f),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      FadeIn(
                          delay: const Duration(milliseconds: 800),
                          duration: const Duration(milliseconds: 800),
                          child: Stack(clipBehavior: Clip.none, children: [
                            Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 50),
                                child: Image.network(
                                    'https://cdn.dribbble.com/users/508142/screenshots/17647970/media/6dcc2c9d7efaa4da63a0b3278d27ecbd.jpg',
                                    fit: BoxFit.cover,
                                    height: 400)),
                            Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 380),
                                child: Image.asset(
                                    'assets/images/logo-removebg.png',
                                    fit: BoxFit.cover,
                                    height: 400)),
                            Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 680),
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const InAppWebView()));
                                      setState(() {
                                        _isElevated = !_isElevated;
                                      });
                                    },
                                    child: AnimatedContainer(
                                      duration:
                                          const Duration(milliseconds: 200),
                                      height: 110,
                                      width: 110,
                                      child: Center(
                                        child: Text('?',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.specialElite(
                                              fontSize: 40,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            )),
                                      ),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF2d030f),
                                        borderRadius:
                                            BorderRadius.circular(240),
                                      ),
                                    )))
                          ])),
                    ],
                  ))
            ],
          )),
    );
  }
}
