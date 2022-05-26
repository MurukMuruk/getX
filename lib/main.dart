import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/src/first.dart';

void main() => runApp(app());

class app extends StatelessWidget {
  const app({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: good(),
      initialRoute: "/",
      getPages: [
        GetPage(name: '/', page: ()=> const home()),
      ],
    );

  }
}


class good extends StatelessWidget {
  const good({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text('Hello, World!', style: TextStyle(fontSize: 30),),
            Container(
              width: 50,
              height: 50,
              color: Colors.yellow,
            ),
            SizedBox(height: 50,),
            Container(
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
            SizedBox(height: 50,),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.lightGreenAccent,
                ),
                SizedBox(width: 50,),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                ),
                SizedBox(width: 50,),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.indigo,
                )
              ],
            ),
            Container(
              child: Text("Hi Flutter!", style: TextStyle(fontSize: 30),),
            ),

            SizedBox(height: 50,),

            Container(
              child: Text("My Profile:",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            ),


            SizedBox(height: 50,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150, height: 150,
                  color: Colors.amber,
                ),
                SizedBox(width: 50,),
                Column(
                  children: [
                    Text('Name: choi Ho Yeon'),
                    Text('ID: @c.0h_y'),
                    Text('Age: 17'),
                    Text('Hobby: ___'),
                    Text('Favorite food: ___'),
                  ],
                )
              ],
            ),

            SizedBox(height: 50,),
            RaisedButton(child: Text('Go to Page'),
                onPressed: () {
                  Get.toNamed('/home');
                }
            ),
          ],
        ),
      ),
    );
  }
}

