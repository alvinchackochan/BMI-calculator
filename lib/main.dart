import 'package:bmi_calculator/Pages/Cal.dart';
import 'package:bmi_calculator/Widget/GetWeight_widget.dart';
import 'package:bmi_calculator/Widget/Getdetail_widgrt.dart';
import 'package:bmi_calculator/Widget/Getheight_widget.dart';
import 'package:bmi_calculator/Widget/Icoo_widget.dart';
import 'package:bmi_calculator/Widget/Imagebig_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController heightController = TextEditingController();

  final TextEditingController weightController = TextEditingController();

  final TextEditingController ageController = TextEditingController();

  double bmi=0;

  @override
  Widget build(BuildContext context) {
    return 
     Scaffold(
      body:
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.lightBlue,Colors.greenAccent]
            ),
          ),
          child:   Column(
               children: [
       Icooo(),
       SizedBox(
           height:50
         ),
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
         SizedBox(
           height:200
         ),
         
         Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             // Getdetails(),
             // GetHeight(),
             CustomInput(controller: ageController,title: 'Age',),
            const  SizedBox(
               height: 50,
             ),
             CustomInput(controller: heightController,title: 'Height',),
            const  SizedBox(
               height: 50,
             ),
             CustomInput(controller: weightController,title: 'Weight',),
             Column(
               children: [
                const  SizedBox(
                   height: 50,
                 ),
                 ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                     onPressed: () {
                       setState(() {
                         double Weight = double.parse(weightController.text);
                        double Height = double.parse(heightController.text);
                        bmi = (Weight / (Height*Height)) * 10000;
                         
                       });
                       
                     },
                     child: const Text('Calculate',style: TextStyle(fontWeight: FontWeight.bold),)),
       
                   SizedBox(
                     height: 100,
                   ),
       
                   Text('BMI:'+ bmi.toStringAsFixed(2),style: TextStyle(fontWeight: FontWeight.w900,fontSize: 24),),
               ],
             ),
           ],
         ),
       ]),
               ],
             ),
    )
     );
       
  }
}

