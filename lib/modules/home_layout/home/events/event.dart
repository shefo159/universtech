import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:universtech/shared/components/app_widget.dart';
import 'package:universtech/shared/components/colors.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = Get.height;
    double width = Get.width;
    return Column(
      children: [
        Container(
          padding: const EdgeInsetsDirectional.only(bottom: 5),
          decoration:  BoxDecoration(
              color: white,
              boxShadow: [BoxShadow(color: grey.withOpacity(0.7),blurRadius: 4,spreadRadius: 5)]
          ),
          child: Row(
            children: [
              Expanded(
                  flex: 4,
                  child: Image.asset(
                    'assets/chatbot.png',
                    height: height/20,
                  )),
              const Expanded(flex: 5, child: SizedBox()),
              const Expanded(
                flex: 4,
                child: Text(
                  'News',
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500, color: darkBlue),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 10,),
        Expanded(
          flex: 1,
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
                return const EventContainer();
              }, separatorBuilder:(context,index){
                return const SizedBox(height: 35,);
              }, itemCount: 10),
              const SizedBox(height: 40,)
            ],
          ),
        ),
      ],
    );
  }
}
