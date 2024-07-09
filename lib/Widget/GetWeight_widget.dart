import 'package:bmi_calculator/Pages/Cal.dart';
import 'package:flutter/cupertino.dart';
import 'package:bmi_calculator/Widget/Getheight_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomInput extends StatefulWidget {
  const CustomInput({
    super.key, required this.controller, required this.title,
  });

  final String title;
  final TextEditingController controller;

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {

  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
      SizedBox(
        height: 60,
      ),
       Column(
         children: [
           Container(
             width: 200,
             child:  TextField(
              controller: widget.controller,
               decoration: InputDecoration(
                fillColor: Colors.amber,
                filled: true,
                 hintText: 'Enter the ${widget.title}',
                 focusedBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2),
                  borderSide: const BorderSide(width: 10,color: Colors.blue)
                 ),
                 suffixIcon:  IconButton(onPressed: (){
                    widget.controller.clear();
                 }, icon: Icon(Icons.clear)),
               ),
             ),
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(15),
            //   color: Color.fromARGB(255, 147, 138, 56)),
           ),
           
         ],
       ),
      
     ],
    );
  }
}

