import 'package:flutter/material.dart';

class Icooo extends StatelessWidget {
  const Icooo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: [
       const Padding(
         padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
         child: Text('Bmi Calculator',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 24),),
       ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 20),
          child: Container(
           height: 50,
           width: 50,
           child:FittedBox(
             child: Image.asset('lib/Images/imagespro.png')),
           ),
        )
         
     ],
    );
  }
}