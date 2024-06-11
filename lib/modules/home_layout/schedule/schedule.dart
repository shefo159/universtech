import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:universtech/core/home.dart';
import 'package:universtech/core/inner/schedule.dart';
import 'package:universtech/modules/home_layout/schedule/show_schedule.dart';
import 'package:universtech/shared/components/colors.dart';

class SchedulePage extends GetView<ScheduleController> {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find<HomeController>();
    double height = Get.height;
    double width = Get.width;
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                width: width/1.75,
                child: ElevatedButton(onPressed: () {
                  homeController.showSchedule();
                  controller.dropdownValue=1;
                },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    backgroundColor: darkBlue
                  ),
                  child: const Text('First Year',
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
              SizedBox(height: height / 22,),
              SizedBox(
                height: 50,
                width: width/1.75,
                child: ElevatedButton(onPressed: () {
                  homeController.showSchedule();
                  controller.dropdownValue=2;
                },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      backgroundColor: darkBlue
                  ),
                  child: const Text('Second Year',
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
              SizedBox(height: height / 22,),
              SizedBox(
                height: 50,
                width: width/1.75,
                child: ElevatedButton(onPressed: () {
                  homeController.showSchedule();
                  controller.dropdownValue=3;
                },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      backgroundColor: darkBlue
                  ),
                  child: const Text('Third Year',
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                    ),
                  ),
                ),
              ),
              SizedBox(height: height / 22,),
              SizedBox(
                height: 50,
                width: width/1.75,
                child: ElevatedButton(onPressed: () {
                  homeController.showSchedule();
                  controller.dropdownValue=4;
                },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      backgroundColor: darkBlue
                  ),
                  child: const Text('Forth Year',
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
        Container(
          padding: const EdgeInsetsDirectional.only(bottom: 5),
          child: Row(
            children: [
              Expanded(
                  flex: 6,
                  child: Image.asset(
                    'assets/chatbot.png',
                    height: height / 20,
                  )),
              const Expanded(flex: 7, child: SizedBox()),
              Expanded(
                flex: 6,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/icons8-schedule-100.png',
                      height: height / 25,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'Schedule',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: darkBlue),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
