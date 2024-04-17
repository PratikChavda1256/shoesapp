import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:shoesapp/color/Colors.dart';
import 'package:shoesapp/customwidget/CustomeButton.dart';


class FirstStartedPage extends StatelessWidget {
  const FirstStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            const Image(image: AssetImage("assets/images/startpages/shoe1.png"),),
            const SizedBox(height: 20,),
            const Text("Start Journey With Nike",style:
            TextStyle(fontSize: 40,fontFamily: 'AirbnbCereal',fontWeight: FontWeight.bold),),
            const SizedBox(height: 10,),
            const Text("Smart, Gorgeous & Fashionable Collection",style:
            TextStyle(fontSize: 20,fontFamily: 'AirbnbCereal'),),
            const SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.only(left:20,right: 20),
              child: Row(
                children:[
                   const SizedBox(
                    width:60,
                    child: Divider(
                        thickness: 5,
                        height: 10,
                        indent : 10,
                        endIndent : 5,
                        color: ShoesColors.loginButtonColor
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipRRect(borderRadius: BorderRadius.circular(50),
                        child: Container(width:10, height: 10, color: Colors.grey,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipRRect(borderRadius: BorderRadius.circular(50),
                        child: Container(width:10, height: 10, color: Colors.grey,)),
                  ),
                  Expanded(child: Container()),
                  SizedBox(width: 150,child:CustomButton(btnText: "Get Started",
                      callback: () => Get.offNamed("/SecondStartedPage"))),
                ]
              ),
            )
          ],
        ),
      ),
    ) ;
  }
}
