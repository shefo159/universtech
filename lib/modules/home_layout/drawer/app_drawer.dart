import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:universtech/shared/components/colors.dart';
import 'package:universtech/shared/components/pages/routes.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
            color: white,
            borderRadius: BorderRadius.horizontal(left: Radius.circular(25))),
        width: width / 1.4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // close drawer
            Padding(
              padding: const EdgeInsets.only(top: 23, right: 12),
              child: Align(
                  alignment: Alignment.topRight,
                  child: Builder(builder: (context) {
                    return InkWell(
                      onTap: () => Scaffold.of(context).closeEndDrawer(),
                      child: Image.asset(
                        'assets/icons8-close-120.png',
                        height: width / 15,
                      ),
                    );
                  })),
            ),
            SizedBox(
              height: height / 17,
            ),
            Center(
                child: Image.asset(
              'assets/icons8-male-user-100.png',
              height: width / 3.3,
              width: width / 3.3,
              fit: BoxFit.cover,
            )),
            const SizedBox(
              height: 10,
            ),
            const Center(
                child: Text(
              'User Name',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 2,
              height: 10,
            ),
            const Divider(
              thickness: 2,
              height: 0,
            ),
            InkWell(
              onTap: (){
                Get.toNamed(Routes.EDIT_PROFILE);
              },
              child: ListTile(
                leading: Image.asset(
                  'assets/icons8-edit-128.png',
                  height: width / 12.5,
                ),
                title: const Text(
                  'Edit profile',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: darkBlue),
                ),
                trailing: Image.asset(
                  'assets/icons8-next-96 (1).png',
                  height: width / 12.5,
                ),
              ),
            ),
            const Divider(
              thickness: 2,
              height: 0,
            ),
            InkWell(
              child: ListTile(
                leading: Image.asset(
                  'assets/icons8-report-90.png',
                  height: width / 12.5,
                ),
                title: const Text(
                  'Reports',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: darkBlue),
                ),
                trailing: Image.asset(
                  'assets/icons8-next-96 (1).png',
                  height: width / 12.5,
                ),
              ),
            ),
            const Divider(
              thickness: 2,
              height: 0,
            ),
            InkWell(
              child: ListTile(
                leading: Image.asset(
                  'assets/icons8-grades-100.png',
                  height: width / 12.5,
                ),
                title: const Text(
                  'Grades',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: darkBlue),
                ),
                trailing: Image.asset(
                  'assets/icons8-next-96 (1).png',
                  height: width / 12.5,
                ),
              ),
            ),
            const Divider(
              thickness: 2,
              height: 0,
            ),
            InkWell(
              child: ListTile(
                leading: Image.asset(
                  'assets/icons8-terms-and-conditions-96.png',
                  height: width / 12.5,
                ),
                title: const Text(
                  'Submit Subjects',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: darkBlue),
                ),
                trailing: InkWell(
                    //todo click msg
                    child: Image.asset(
                  'assets/icons8-lock-52(-xhdpi).png',
                  height: width / 12.5,
                )),
              ),
            ),
            SizedBox(
              height: height / 6.8,
            ),
            InkWell(
              child: ListTile(
                leading: Image.asset(
                  'assets/icons8-setting-100.png',
                  height: width / 12.5,
                ),
                title: const Text(
                  'Settings',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: darkBlue),
                ),
                trailing: Image.asset(
                  'assets/icons8-next-96 (1).png',
                  height: width / 12.5,
                ),
              ),
            ),
            const Divider(
              thickness: 2,
              height: 0,
            ),
            InkWell(
              child: ListTile(
                leading: Image.asset(
                  'assets/icons8-call-90.png',
                  height: width / 12.5,
                ),
                title: const Text(
                  'Contact with us',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: darkBlue),
                ),
              ),
            ),
            SizedBox(height: height/30,),
            Center(
              child: SizedBox(
                width: width/2.5,
                child: ElevatedButton(
                    onPressed: () {
                      Get.offAllNamed(Routes.LOGIN);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: orange,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/icons8-log-out-96 (1).png',height: width/19,),
                        const SizedBox(width: 5,),
                        const Text(
                          'Log out',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600, color: white),
                        ),
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
