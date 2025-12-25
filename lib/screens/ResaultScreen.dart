import 'package:bmi_new/widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';

class ResaultScreen extends StatelessWidget {
  final double bmiValue;
  const ResaultScreen({super.key,required this.bmiValue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Your Result",style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(vertical: 40),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xff333244),
              ),
              child: Column(
                spacing: 20,
                children: [
                  Text(status(),style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.yellow,
                  ),),
                  Text(bmiValue.toStringAsFixed(2),style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 64,
                    color: Colors.white,
                  ),),
                  Text(disc(),style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.white,
                  ),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  String status(){
    if(bmiValue<=18.4){
     return "Under Weight";
    } else if(bmiValue>18.5&&bmiValue<=24.9){
      return "Normal";
    }else if(bmiValue>25&&bmiValue<=39.9){
      return "Over Weight";
    }else {
      return "Obese";
    }
  }
  String disc(){
    if(bmiValue<=18.4){
      return "tour weight is under weight ";
    } else if(bmiValue>18.5&&bmiValue<=24.9){
      return "your weight is Normal";
    }else if(bmiValue>25&&bmiValue<=39.9){
      return "your weight is Over Weight";
    }else {
      return "your weight is Obese";
    }
  }
}


