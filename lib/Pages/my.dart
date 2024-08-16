import 'package:flutter/cupertino.dart';
class My{
   static push(BuildContext context, dynamic classObject) {
    return Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (BuildContext context) => classObject,
        ));
  }

  static pushReplaced(BuildContext context, dynamic classObject) {
    return Navigator.of(context).pushReplacement(CupertinoPageRoute(
      builder: (BuildContext context) => classObject,
    ));
  }
}