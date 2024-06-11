import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:universtech/core/home.dart';
import 'package:universtech/modules/home_layout/chat_bot/chat_bot_welc.dart';
import 'package:universtech/shared/components/colors.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        ListView(
          shrinkWrap: true,
          children: [
            SizedBox(
              height: height / 11,
            ),
            Container(
              height: height / 3.4,
              width: width,
              margin:
              const EdgeInsetsDirectional.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                  color: white,
                  border: Border.all(color: grey, width: 1.5),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [BoxShadow(
                      color: grey,
                      spreadRadius: -5,
                      blurRadius: 5,
                      offset:Offset(5, 8)
                  )]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 25,
                    width: 100,
                    margin: const EdgeInsetsDirectional.symmetric(
                        vertical: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: darkBlue, width: 1.8),
                        borderRadius: BorderRadius.circular(8)),
                    child: const Center(
                      child: Text(
                        'Feeds',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: darkBlue),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 25,),
            const Center(
              child: Text('Quick Facts',style: TextStyle(
                  fontSize:16,
                  color: darkBlue,
                  fontWeight: FontWeight.w500
              ),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset('assets/icons8-books-64.png',height: 60,),
                    const SizedBox(height: 5,),
                    const Text('3',style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: darkBlue
                    ),),

                    const Text('Departments',style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: darkBlue
                    ),)
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(height: 13,),
                    Image.asset('assets/icons8-university-100.png',height: 50,),
                    const SizedBox(height: 5,),
                    const Text('20',style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: darkBlue
                    ),),
                    const Text('Professors',style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: darkBlue
                    ),)
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(height: 13,),
                    Image.asset('assets/icons8-student-100.png',height: 55,),
                    const SizedBox(height: 3,),
                    const Text('1000',style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: darkBlue
                    ),),
                    const Text('Students',style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: darkBlue
                    ),)
                  ],
                ),
              ],
            ),
            Container(
              height: height / 8,
              width: width,
              margin: const EdgeInsetsDirectional.symmetric(horizontal: 30,vertical: 30),
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 10,vertical: 3),
              decoration: BoxDecoration(
                  color: white,
                  border: Border.all(color: grey, width: 1.5),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [BoxShadow(
                      color: grey,
                      spreadRadius: -5,
                      blurRadius: 5,
                      offset:Offset(5, 8)
                  )]
              ),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Recently courses',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: darkBlue
                  ),),
                  Expanded(
                    child: SizedBox(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //todo back index in listview.builder
                          InkWell(child: Image.asset('assets/icons8-prev-96.png',height: 30,width: 30,fit: BoxFit.cover,)),
                          Expanded(
                            child: ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index){
                                return Image.asset('assets/icons8-teacher-100.png',color: (index%2==0)?null:Colors.red,height: context.height/3,);
                              }, separatorBuilder:(context,index){
                              return const SizedBox(width: 20,);
                            },itemCount:150,
                            ),
                          ),
                          //todo forward index in listview.builder
                          InkWell(child: Image.asset('assets/icons8-next-96.png',height: 30,width: 30,fit: BoxFit.cover,))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: height / 3.4,
              width: width,
              margin:
              const EdgeInsetsDirectional.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                  color: white,
                  border: Border.all(color: grey, width: 1.5),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [BoxShadow(
                      color: grey,
                      spreadRadius: -5,
                      blurRadius: 5,
                      offset:Offset(5, 8)
                  )]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 25,
                    width: 100,
                    margin: const EdgeInsetsDirectional.symmetric(
                        vertical: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: darkBlue, width: 1.8),
                      borderRadius: BorderRadius.circular(8),

                    ),
                    child: const Center(
                      child: Text(
                        'News',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: darkBlue),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsetsDirectional.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        border: Border.all(color: darkBlue, width: 1.25),
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(15),bottom: Radius.circular(2.5)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,bottom: 5),
                    //todo go event page list
                    child: InkWell(onTap: ()=> controller.moreNewsButton()
                    ,child: Image.asset('assets/icons8-down-button-64.png',height: 35,)),
                  )
                ],
              ),
            ),
            const SizedBox(height: 30,)
          ],
        ),
        Container(
          padding: const EdgeInsetsDirectional.only(bottom: 5),
          decoration:  BoxDecoration(
              color: white,
              boxShadow: [BoxShadow(color: grey.withOpacity(0.7),blurRadius: 4,spreadRadius: 5)]
          ),
          child: Row(
            children: [
              Expanded(
                  flex: 6,
                  child: InkWell(
                    onTap: ()=>Get.to(const ChatBotWelcomePage()),
                    child: Image.asset(
                      'assets/chatbot.png',
                      height: height/20,
                    ),
                  )),
              const Expanded(flex: 7, child: SizedBox()),
              Expanded(
                flex: 6,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/icons8-home-100.png',
                      height: height/25,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'HOME',
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
