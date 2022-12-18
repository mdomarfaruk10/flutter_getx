import 'package:flutter/material.dart';
import 'package:flutter_getx/screen/second_screen.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx tutorial"),
        centerTitle: true,
      ),
      body: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment:MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [

          /// getx TOP Snackber
          OutlinedButton(
            onPressed: () {
              Get.snackbar(
                  "This is a Snackber",
                  "This is a Snackber message",
                  colorText: Colors.red,
                duration: Duration(seconds: 1),
                instantInit: false,
                snackPosition: SnackPosition.TOP,

              );
            },
            child: Text("Snackber")),
          ///getx Alert Dialog
          OutlinedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "Alert",
                  middleText: "This is a Alert Dialog",
                  textCancel: "Cancel",
                  textConfirm: "Confirm",
                  onCancel: (){},
                  onConfirm: (){},

                );
              },
              child: Text("Alert Dialog")),
          /// Getx Navigation
          OutlinedButton(
              onPressed: () async{
                var data= await Get.to(
                SecondScreen()
                );
                print(data);
              },
              child: Text("Getx Navigator")),
          OutlinedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "Alert",
                  middleText: "This is a Alert Dialog",
                  textCancel: "Cancel",
                  textConfirm: "Confirm",
                  onCancel: (){},
                  onConfirm: (){},

                );
              },
              child: Text("Alert Dialog")),



        ],
      ),
    );
  }
}
