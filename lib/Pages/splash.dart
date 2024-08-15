import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Column(
        children: [

StreamBuilder<Object>(
  stream: null,
  builder: (context, snapshot) {
    return AvatarGlow(
      startDelay: const Duration(milliseconds: 1000),
      glowColor: Colors.white,
      glowShape: BoxShape.circle,
      curve: Curves.fastOutSlowIn,
      child: const Material(
        elevation: 8.0,
        shape: CircleBorder(),
        color: Colors.transparent,
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/icons8-note-pad-64.png'),
          radius: 50.0,
        ),
      ),
    );
  }
),

        ],
      ),
    );
  }
}