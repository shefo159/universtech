import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:universtech/shared/components/colors.dart';

class EventView extends StatelessWidget {
  const EventView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0,
        leading: const BackButton(color: darkBlue),
        title: Image.asset(
          'assets/universtech-high-resolution-logo-transparent (4).png',
          height: 25,
          fit: BoxFit.fitHeight,
        ),
        bottom: const PreferredSize(
            preferredSize: Size.fromHeight(1.0),
            child: Divider(
              thickness: 1,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/event.png',height: height*0.3,)
              ),
            ),
            const Divider(thickness: 1,color: lightgrey,),
            const Center(child: Text('Event Name',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
            const Divider(thickness: 1,color: lightgrey,),
            const Center(child: Text('At 1 Jan,2022',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: grey),)),
            SizedBox(height: height*0.05,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Event Description------------------------------------------------------------------------------------------',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
            ),
          ],
        ),
      ),
    );
  }
}
