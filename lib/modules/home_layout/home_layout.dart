import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:universtech/core/home.dart';
import 'package:universtech/modules/home_layout/drawer/app_drawer.dart';
import 'package:universtech/shared/components/app_widget.dart';
import 'package:universtech/shared/components/colors.dart';

class HomeLayout extends GetView<HomeController> {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: white,
          elevation: 0,
          leading: const SizedBox(),
          title: Image.asset(
            'assets/universtech-high-resolution-logo-transparent (4).png',
            height: 25,
            fit: BoxFit.fitHeight,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Builder(
                builder: (context) {
                  return InkWell(
                    onTap: (){
                      Scaffold.of(context).openEndDrawer();
                    },
                      child: Image.asset(
                    'assets/icons8-male-user-100.png',
                    height: 30,
                  ));
                }
              ),
            )
          ],
          bottom: const PreferredSize(
              preferredSize: Size.fromHeight(1.0),
              child: Divider(
                thickness: 1,
              )),
        ),
        endDrawer: const AppDrawer(),
        bottomNavigationBar: Container(
          height: 60,
          width: width,
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 30),
          decoration: const BoxDecoration(
            border: Border(top: BorderSide(color: lightgrey))
          ),
          child: GetBuilder<HomeController>(builder: (controller) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                    onTap: (){
                      controller.pageNum=0;
                      controller.navClicked();
            } ,
                    child: Image.asset(
                      'assets/icons8-home-100.png',
                      height: 30,
                      width: 30,
                      color: controller.itemSelected(0),
                    )),
                InkWell(
                    onTap: () {
                      controller.pageNum=1;
                      controller.navClicked();
                    } ,
                    child: Image.asset(
                      'assets/icons8-book-64.png',
                      height: 30,
                      width: 30,
                      color: controller.itemSelected(1),
                    )),
                InkWell(
                    onTap: (){
                      controller.pageNum=2;
                      controller.navClicked();
                    } ,
                    child: Image.asset(
                      'assets/icons8-notification-96 (1).png',
                      height: 33,
                      width: 33,
                      color: controller.itemSelected(2),
                    )),
                InkWell(
                    onTap: ()=>Get.bottomSheet( const MoreBottomSheet()),
                    child: Image.asset(
                      'assets/icons8-more-100.png',
                      height: 30,
                      width: 30,
                      color: controller.itemSelected(3),
                    )),
              ],
            );
          }),
        ),
        body: GetBuilder<HomeController>(
          builder: (controller) {
            return controller.page;
          }
        )
    );
  }
}
