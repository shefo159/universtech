//assets/table.png
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:universtech/core/inner/schedule.dart';
import 'package:universtech/shared/components/colors.dart';

class ShowSchedulePage extends GetView<ScheduleController> {
  const ShowSchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = Get.height;
    double width = Get.width;

    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Column(
          children: [
            SizedBox(
              height: height / 10,
            ),
            Container(
              height: 35,
              width: width / 3.3,
              decoration: BoxDecoration(
                  color: white,
                  border: Border.all(color: darkBlue),
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12)),
                  boxShadow: const [
                    BoxShadow(
                        color: grey,
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(-2, 2))
                  ]),
              child: Center(
                child: GetBuilder<ScheduleController>(builder: (controller) {
                  return DropdownButton(
                    items: [
                      DropdownMenuItem(
                        value: 1,
                        child: Text(
                          'First Year',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: (controller.dropdownValue == 1)
                                  ? darkBlue
                                  : orange),
                        ),
                      ),
                      DropdownMenuItem(
                          value: 2,
                          child: Text(
                            'Second Year',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: (controller.dropdownValue == 2)
                                    ? darkBlue
                                    : orange),
                          )),
                      DropdownMenuItem(
                          value: 3,
                          child: Text(
                            'Third Year',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: (controller.dropdownValue == 3)
                                    ? darkBlue
                                    : orange),
                          )),
                      DropdownMenuItem(
                          value: 4,
                          child: Text(
                            'Fourth Year',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: (controller.dropdownValue == 4)
                                    ? darkBlue
                                    : orange),
                          ))
                    ],
                    onChanged: (value) {
                      controller.dropdownChange(value!);
                    },
                    value: controller.dropdownValue,
                    underline: const SizedBox(),
                  );
                }),
              ),
            )
          ],
        ),
        Container(
          padding: EdgeInsetsDirectional.only(bottom: 5),
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
