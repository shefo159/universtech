import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:universtech/shared/components/app_widget.dart';
import 'package:universtech/shared/components/colors.dart';

class CourseLecturesPage extends StatelessWidget {
  const CourseLecturesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsetsDirectional.only(bottom: 5),
          decoration:  const BoxDecoration(
              color: white,
              //boxShadow: [BoxShadow(color: grey.withOpacity(0.7),blurRadius: 4,spreadRadius: 5)]
          ),
          child: Row(
            children: [
              Expanded(
                  flex: 6,
                  child: Image.asset(
                    'assets/chatbot.png',
                    height: height/14,
                  )),
              const Expanded(flex: 7, child: SizedBox()),
              Expanded(
                flex: 6,
                child: SizedBox(
                  height: height/15,
                  width: 60,

                  child: Row(
                    children: [
                      Image.asset('assets/icons8-book-64.png',
                        height: 35,width: 35,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text('Courses',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: blue
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 20,),
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: [
              const SizedBox(height: 30,),
              const Padding(
                padding: EdgeInsets.only(left: 25,bottom: 9),
                child: Text('semester 1 - 2023 / 2024',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: grey
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25,bottom: 20),
                child: Text('Course name',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 20,
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    decoration: BoxDecoration(
                      color: darkBlue,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: const Center(
                      child: Text('code : IT2314',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 11
                      ),),
                    ),
                  ),
                  const SizedBox(width: 12,),
                  Container(
                    height: 20,
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: darkBlue)
                    ),
                    child: const Center(
                      child: Text('20% completed',style: TextStyle(
                        color: darkBlue,
                        fontWeight: FontWeight.w600,
                        fontSize: 11
                      ),),
                    ),
                  ),
                  const SizedBox(width: 12,),
                ],
              ),
              const SizedBox(height: 15,),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                    return const LectureContainer();
                  }, separatorBuilder:(context,index){
                return const SizedBox(height: 25,);
              }, itemCount: 10),
              const SizedBox(height: 40,)
            ],
          ),
        ),
      ],
    );
  }
}
