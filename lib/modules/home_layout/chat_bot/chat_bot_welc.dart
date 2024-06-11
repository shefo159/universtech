import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:universtech/shared/components/colors.dart';

class ChatBotWelcomePage extends StatelessWidget {
  const ChatBotWelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final height=Get.height;
    final width=Get.width;
    return  Scaffold(

      backgroundColor: darkBlue,
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
           Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: height/16),
              const Divider(color: Colors.white,thickness: 2,height: 0,),
              SizedBox(height: height*0.27,),
              const Text('Your ChatBot is here! ♥',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 30,),
              CircleAvatar(
                radius: width/6,
                backgroundColor: cyan,
                child: Image.asset('assets/chatbot.png',
                  height: width/4,
                  width: width/4,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: height*0.12,),
              const Text('Best Assistant',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: white,
                ),
              ),
              const SizedBox(height: 16,),
              SizedBox(
                height: 35,
                width: width*0.35,
                child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                    backgroundColor: white
                  ), child: const Center(
                  child: Text('Get Started',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),),
                ),
              )
            ],
          ),
          Container(
            height: height/16,
            width: height/16,
            color: Colors.white,
          ),
          InkWell(
            onTap: ()=>Get.back(),
            child: ClipPath(
              clipper: _Triangle(),
              child: Container(
                height: height/15,
                width: height/12,
                color: white,
              ),
            ),
          ),
          InkWell(
            onTap: ()=>Get.back(),
            child: Padding(
              padding:  EdgeInsets.only(left: height/30,top: height/40),
              child: Image.asset('assets/icons8-close-120.png',height: 30,width: 30,fit: BoxFit.scaleDown,),
            ),
          ),
        ],
      ),
    );
  }
}

class _Triangle extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    final path =Path();
    path.lineTo(size.width/1.35, 0);
    path.lineTo(0, size.height/1.1);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width/1.35, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper)=>false;
  
}
