import 'dart:async';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Pages/login.dart';
import 'package:myapp/Pages/my.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    
    super.initState();
    startTime();
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Align(
        alignment: Alignment.center,
        child: SizedBox(
          height: 200,
          child: Column(
            children: [
              AvatarGlow(
                startDelay: const Duration(milliseconds: 1000),
                glowColor: const Color.fromARGB(221, 2, 102, 218),
                glowShape: BoxShape.circle,
                animate: true,
                curve: Curves.fastOutSlowIn,
                child: Image.asset('assets/images/icons8-copybook-94.png'),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                "iNotes",
                style: TextStyle(
                    fontSize: 28,
                    fontFamily: GoogleFonts.aladin().fontFamily,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 2, 102, 218)),
              )
            ],
          ),
        ),
      ),
    );
  }

  startTime() async {
    var duration = const Duration(seconds: 4);
    return Timer(duration, navigationPage);
  }

  Future<void> navigationPage() async {
    if (!mounted) return;
      My.pushReplaced(context, const Login());
  }
}
