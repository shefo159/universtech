import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:universtech/shared/components/app_widget.dart';
import 'package:universtech/shared/components/colors.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = Get.height;
    final width = Get.width;
    return Column(
      children: [
        Container(
          padding: EdgeInsetsDirectional.only(bottom: 5),
          decoration:  BoxDecoration(
              color: white,
              boxShadow: [BoxShadow(color: grey.withOpacity(0.7),blurRadius: 4,spreadRadius: 5)]
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
                       SizedBox(
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
        const SizedBox(height: 10,),
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        color: darkBlue,
                      ),
                      hintText: 'Search',
                      contentPadding: EdgeInsets.zero,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                            color: darkBlue,
                            width: 2
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          color: darkBlue,
                          width: 2.0,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white
                  ),
                ),
              ),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                    return const CourseContainer();
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
