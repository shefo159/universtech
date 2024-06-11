import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:universtech/modules/home_layout/books/books.dart';
import 'package:universtech/modules/home_layout/books/course_lectures.dart';
import 'package:universtech/modules/home_layout/home/events/event.dart';
import 'package:universtech/modules/home_layout/home/home.dart';
import 'package:universtech/modules/home_layout/notifications/notifications.dart';
import 'package:universtech/modules/home_layout/schedule/schedule.dart';
import 'package:universtech/modules/home_layout/schedule/show_schedule.dart';
import 'package:universtech/shared/components/colors.dart';

class HomeController extends GetxController{
  int pageNum=0;
  Widget page= const HomePage();
  List<Widget> pagesList=[
    const HomePage(),
    const BooksPage(),
    const NotificationsPage()
  ];
  Color? itemSelected(int page){
    return (pageNum==page)? orange:null;
  }
  void navClicked(){
    page=pagesList[pageNum];
    update();
  }
  void moreNewsButton(){
    page=const EventPage();
    update();
  }
  void goSchedule(){
    Get.back();
    page=const SchedulePage();
    pageNum=3;
    update();
  }
  void showSchedule(){
    page=const ShowSchedulePage();
    pageNum=3;
    update();
  }
  void goForCourse(){
    page=const CourseLecturesPage();
    update();
  }
}