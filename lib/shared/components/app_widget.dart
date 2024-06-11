import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:universtech/core/home.dart';
import 'package:universtech/modules/home_layout/books/course_lectures.dart';
import 'package:universtech/modules/home_layout/schedule/schedule.dart';
import 'package:universtech/shared/components/colors.dart';
import 'package:universtech/shared/components/pages/routes.dart';

class LoginTextFormField extends StatelessWidget {

  final TextEditingController controller;
  final TextInputType textType;
  final bool? obscureText;

  const LoginTextFormField({super.key,required this.controller,required this.textType,this.obscureText});

  @override
  Widget build(BuildContext context) {
    final height=Get.height;
    final width = Get.width;
    return Container(
      height: height/20,
      width: width/1.6,
      child: TextFormField(
        controller:controller ,
        keyboardType: textType,
        obscureText: obscureText??false,
        decoration: const InputDecoration(
          fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
        ),
        cursorHeight: 18,
        maxLines: 1,
      ),
    );
  }
}

class EventContainer extends StatelessWidget {
  const EventContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double height=Get.height;
    double width=Get.width;
    return InkWell(
      onTap: ()=>Get.toNamed(Routes.EVENT),
      child: Container(
        width: width,
        padding: const EdgeInsets.symmetric(vertical: 10),
        margin:
        const EdgeInsetsDirectional.symmetric(horizontal: 30),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: darkBlue, width: 1.5),
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [BoxShadow(
                color: grey,
                spreadRadius: -6,
                blurRadius: 3,
                offset:Offset(-8, 8)
            )]
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('EVENT NAME',style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              wordSpacing: 2,
            ),),
            SizedBox(height:10,),
            ClipRRect(borderRadius: BorderRadius.circular(5),child: Image.asset('assets/event.png',width:width/2 ,)),
            SizedBox(height:10,),
            Image.asset('assets/icons8-down-button-64.png',height: 30,fit: BoxFit.fitHeight,)
          ],
        ),
      ),
    );
  }
}

class CourseContainer extends StatelessWidget {
  const CourseContainer({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller=Get.find<HomeController>();
    double height=Get.height;
    double width=Get.width;
    return InkWell(
      onTap: ()=>controller.goForCourse(),
      child: Container(
        width: width,
        margin:
         EdgeInsetsDirectional.symmetric(horizontal: width/18),
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: darkBlue, width: 1.5),
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [BoxShadow(
                color: grey,
                spreadRadius: -6,
                blurRadius: 3,
                offset:Offset(-8, 8)
            )]
        ),
        child:  Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: height/12.5,
              width: height/12.5,
              margin: const EdgeInsetsDirectional.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(15)
              ),
            ),
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsetsDirectional.only(start: 10,bottom: 10,top: 15),
                  child: Text('COURSE NAME',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),),
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 30,
                      width: width/2,
                      child: LinearPercentIndicator(
                        lineHeight: 8,
                        barRadius: const Radius.circular(15),
                        percent: 0.4,
                        progressColor: orange,
                        backgroundColor: orange.withOpacity(0.3),
                      ),
                    ),
                    const Text('20%')
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class LectureContainer extends StatelessWidget {
  const LectureContainer({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller=Get.find<HomeController>();
    double height=Get.height;
    double width=Get.width;
    return InkWell(
      onTap: ()=>null,
      child: Container(
        height: height / 10,
        width: width,
        margin:
        EdgeInsetsDirectional.symmetric(horizontal: width/18),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: grey, width: 1.5),
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            boxShadow: const [BoxShadow(
                color: grey,
                spreadRadius: -4,
                blurRadius: 3,
                offset:Offset(-2, 8)
            )]
        ),
        child:  Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: height/13.5,
                width: height/15,
                margin: const EdgeInsetsDirectional.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: white,
                  border: Border.all(color: darkCyan,width: 1.5)
                ),
                child: Image.asset('assets/icons8-file-360(-xxhdpi).png'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text('Lecture (1)',style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),),
            )
          ],
        ),
      ),
    );
  }
}

class NotificationContainer extends StatelessWidget {
  const NotificationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double height=Get.height;
    double width=Get.width;
    return Container(
      margin:
       EdgeInsetsDirectional.symmetric(horizontal: width/18),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: darkBlue, width: 1.5),
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [BoxShadow(
              color: grey,
              spreadRadius: -6,
              blurRadius: 3,
              offset:Offset(-8, 8)
          )]
      ),
      child:  Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 15),
            child: Image.asset('assets/universtech-high-resolution-logo-transparent (5).png',
              height: 45,
              width: 72,

            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 8,top: 5),
                child: Text(
                    '9:00 AM',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 13,
                    color: grey
                  ),
                ),
              ),
              SizedBox(
                width: width/1.78,
                child: const Padding(
                  padding: EdgeInsetsDirectional.only(start: 10,bottom: 10),
                  child: Text('Dear Student,\n----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------',style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),maxLines: 20,
                  ),
                ),
              ),
            ],
          ),


        ],
      ),
    );
  }
}

class MoreBottomSheet extends StatelessWidget {
  const MoreBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    double height=Get.height;
    double width=Get.width;
    HomeController controller=Get.find<HomeController>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Material(
        color: white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        child: SizedBox(
          height: height/2.8,
          child:  Column(
            children: [
              Container(
                height: 9,
                width: width,
                margin: EdgeInsetsDirectional.symmetric(horizontal: width/4,vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)
                ),
              ),
              InkWell(
                //todo go to calendar
                onTap: ()=>Get.back(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 34,vertical: 10),
                  child: Row(
                    children: [
                      Image.asset('assets/icons8-calendar-96.png',
                        height:40 ,
                        width: 40,
                      ),
                      const SizedBox(width: 10,),
                      const Text('Calendar',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: darkBlue
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                      Image.asset('assets/icons8-next-96 (1).png',
                        height: 25,
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                //todo go to schedule
                onTap: ()=>controller.goSchedule(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 34,vertical: 10),
                  child: Row(
                    children: [
                      Image.asset('assets/icons8-calendar-100.png',
                        height:40 ,
                        width: 40,
                      ),
                      const SizedBox(width: 10,),
                      const Text('Schedule',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: darkBlue
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                      Image.asset('assets/icons8-next-96 (1).png',
                        height: 25,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


