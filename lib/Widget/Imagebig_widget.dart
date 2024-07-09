import 'package:flutter/material.dart';

class Imagebig extends StatelessWidget {
  const Imagebig({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40,),
      child: Container(
       height: 500,
       width: 200,
       child: Image.asset('lib/Images/man.png',fit: BoxFit.fill,)),
    );
  }
}

