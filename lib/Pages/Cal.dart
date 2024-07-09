import 'package:flutter/material.dart';

class AnsRes extends StatefulWidget {
  const AnsRes({super.key,required this.en});

   final String en;

  @override
  State<AnsRes> createState() => _AnsResState();
}

class _AnsResState extends State<AnsRes> {
  final double _bmi=0;
  final String bmi_category='';
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}