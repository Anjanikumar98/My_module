import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BusinessCardController extends GetxController {
  var name = "abc".obs; // The 'obs' makes the variable observable
}

class BusinessCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BusinessCardController controller = Get.put(BusinessCardController());

    return Scaffold(
      appBar: AppBar(title: Text('Business Card')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  controller.name.value, // Dynamically updated name
                  style: GoogleFonts.poppins(fontSize: 24),
                )),
            ElevatedButton(
              onPressed: () {
                controller.name.value = "name"; // Change name dynamically
              },
              child: Text("Change Name"),
            ),
          ],
        ),
      ),
    );
  }
}