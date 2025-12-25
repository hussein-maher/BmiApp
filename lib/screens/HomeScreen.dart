import 'dart:math';

import 'package:flutter/material.dart';
import '../widgets/CustomAppBar.dart';
import '../widgets/counter.dart';
import '../widgets/gender_box.dart';
import 'ResaultScreen.dart';


class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   bool isMale=true;
   double hight =150;
   int weight=75;
   int age=30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            spacing: 30,
            children: [
              //Gender Row
              Row(
                children: [
                  GenderBox(title: 'Male', icon: Icons.male,
                    isActive: isMale,
                    onTap: (){
                    setState(() {
                      isMale = true;
                    });
                    },
                  ),
                  SizedBox(width: 9),
                  GenderBox(title: 'Female', icon: Icons.female,
                    isActive: !isMale,
                    onTap: (){
                     setState(() {
                       isMale = false;
                     });
                    },
                  ),
                ],
              ),
          
              //Height Container
              Container(
                padding: EdgeInsets.symmetric(vertical: 30),
                decoration: BoxDecoration(
                  color: Color(0xff333244),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  spacing: 20,
                  children: [
                    Text("Hight",style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),),
                   Text.rich(TextSpan(
                     children: [
                       TextSpan(
                         text: hight.toStringAsFixed(1),style: TextStyle(
                         fontWeight: FontWeight.w700,
                         fontSize: 40,
                       ),
                       ),
                       TextSpan(
                         text: 'CM',style: TextStyle(
                         fontSize: 16,
                       ),
                       ),
                     ]
                   )),
                    Slider(max: 200,value: hight, onChanged: (value){
                      setState(() {
                        hight=value;
                      });
                    },
                        activeColor: Color(0xffE83D67),
                      inactiveColor: Colors.white,
                    ),
          
                  ],
                ),
              ),
          
              //Age & weight Row
              Row(
                children: [
                  CounterCountainer(title: 'Weight', value: weight,
                  increament: (){
                    setState(() {
                      weight++;
                    });
                  },
                    decreament: (){
                   if(weight>1){
                     setState(() {
                       weight--;
                     });
                   }
                    },
                  ),
                  SizedBox(width: 20,),
                  CounterCountainer(title: 'Age', value: age,
                    increament: (){
                      setState(() {
                        age++;
                      });
                    },
                    decreament: (){
                      if(age>1){
                        setState(() {
                          age--;
                        });
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ResaultScreen(
            bmiValue: weight/pow((hight/100), 2),
          )));
        },
        child: Container(
          color: Color(0xffE83D67),
          height: 100,
          alignment: Alignment.center,
          child: Text('Calculate',style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),),
        ),
      ),
    ) ;
  }
}


