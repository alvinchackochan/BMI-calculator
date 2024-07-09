import 'package:bmi_calculator/Pages/Cal.dart';
import 'package:flutter/material.dart';

class Getdetails extends StatefulWidget {
  const Getdetails({
    super.key,
  });

  @override
  State<Getdetails> createState() => _GetdetailsState();
}

class _GetdetailsState extends State<Getdetails> {

 final _Agecollect = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
       Container(
         width: 150,
         child:  TextField(
          controller: _Agecollect,
           decoration: InputDecoration(
             hintText: 'Enter the age',
             border: OutlineInputBorder(),
             suffixIcon:  IconButton(onPressed: (){
                _Agecollect.clear();
             }, icon: Icon(Icons.clear)),
           ),
         ),
       ),

     ],
    );
  }
}

