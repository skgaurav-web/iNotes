import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Pages/dashboard.dart';
import 'package:myapp/Pages/my.dart';

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
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Image.asset(
                "assets/images/undraw_Mobile_login_re_9ntv.png",
                height: 200,
                width: double.maxFinite,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Login",
                style: TextStyle(
                    fontSize: 28,
                    fontFamily: GoogleFonts.aladin().fontFamily,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 2, 102, 218)),
              ),
              const SizedBox(
                height: 20,
              ),
               const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your email address',
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.email)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
               const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your password',
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
                child: Container(
                  width: double.maxFinite,
                  height: 55,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 2, 102, 218),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.robotoMono().fontFamily),
                  )),
                ),
              ),
              const Text("or"),
              InkWell(
                onTap: () {
                  My.push(context, const Dashboard());
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
                  child: Container(
                    width: double.maxFinite,
                    height: 55,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 218, 2, 6),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      "Continue with Google",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.robotoMono().fontFamily),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
