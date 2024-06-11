import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:universtech/shared/components/colors.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = Get.height;
    final double width = Get.width;
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: Image.asset(
          'assets/universtech-high-resolution-logo-transparent (4).png',
          height: 25,
          fit: BoxFit.fitHeight,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Align(
              alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: ()=>Get.back(),
                  child: Image.asset(
              'assets/icons8-prev-96.png',
              height: 30,
              width: 30,
                    fit: BoxFit.cover,
            ),
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                child: Image.asset(
                  'assets/icons8-male-user-100.png',
                  width: width / 2,
                  fit: BoxFit.cover,
                ),
                backgroundColor: Colors.transparent,
                radius: width / 6,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'User Name',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'Student year',
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w400, color: grey),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
