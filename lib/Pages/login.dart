import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Pages/dashboard.dart';
import 'package:myapp/Pages/my.dart';
import 'package:myapp/Pages/services/auth_services.dart';

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
      body: SafeArea(
          child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // Suggested code may be subject to a license. Learn more: ~LicenseLog:3407964297.
                border: Border.all(
                    width: 2, color: const Color.fromARGB(255, 156, 156, 156)),
                shape: BoxShape.rectangle,
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  IconButton(
                    onPressed: () async {
                      var cred = await signInWithGoogle();

                      print("this is detail ${cred}");
                      if (cred != null) {
                        My.pushReplaced(context, const Dashboard());
                      }

                      //My.push(context, const Dashboard());
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.google,
                      color: Color.fromARGB(255, 227, 15, 0),
                      size: 30,
                    ),
                  ),
                  Text(
                    "Google",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.robotoMono().fontFamily),
                  )
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
