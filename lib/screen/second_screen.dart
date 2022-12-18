import 'package:flutter/material.dart';
import 'package:flutter_getx/getx_class/student_class.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Student student = Student();
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator Screen"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlinedButton(onPressed: () async{
            Get.back(result: "This is second screen data");
          }, child: Text("Back")),
          Obx(() => Text(student.name.value)),

          OutlinedButton(onPressed: () async{
          student.name.value = student.name.value.toUpperCase();
          }, child: Text("update")),

        ],
      ),
    );
  }
}
