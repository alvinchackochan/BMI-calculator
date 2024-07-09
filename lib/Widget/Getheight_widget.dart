import 'package:bmi_calculator/Pages/Cal.dart';
import 'package:flutter/material.dart';

class GetHeight extends StatefulWidget {
  const GetHeight({
    super.key,
  });

  @override
  State<GetHeight> createState() => _GetHeightState();
}

class _GetHeightState extends State<GetHeight> {

 final _Heightcollect = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
      SizedBox(
        height: 150,
      ),
       Container(
         width: 200,
         child:  TextField(
          controller: _Heightcollect,
           decoration: InputDecoration(
             hintText: 'Enter the Height',
             border: OutlineInputBorder(),
             suffixIcon:  IconButton(onPressed: (){
                _Heightcollect.clear();
             }, icon: Icon(Icons.clear)),
           ),
         ),
       ),

     ],
    );
  }
}

