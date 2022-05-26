import 'package:flutter/material.dart';
import 'package:get/get.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 70, height: 30,
                color: Colors.amber,
              ),
              Container(
                width: 70, height: 30,
                color: Colors.lightGreenAccent,

              ),
RaisedButton(
  child: Text('PUSH'),
    onPressed: (){
  Get.toNamed("/");
})
            ],
          )
      ),
    );
  }
}
