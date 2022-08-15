import 'package:assignmentui/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';


class userscreen extends StatelessWidget {
  const userscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white54,
          elevation: 0,
          title: Center(
            child: Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                FaIcon(
                  FontAwesomeIcons.locationDot,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 1,
                ),
                Text(
                  "Title",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          centerTitle: true,
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FaIcon(
                FontAwesomeIcons.bagShopping,
                color: Colors.red,
              ),
            ),
            SizedBox(
              width: 9,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Expanded(
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 155,
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 50,
                            child: FaIcon(
                              FontAwesomeIcons.user,
                              size: 40,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Amit Kilambu",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('98-xxxxxxxx'),
                              Text('|'),
                              Text('amitkilambu8@gmail.com'),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 242, 239, 240),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "ACCOUNT",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ListTile(
                              style: ListTileStyle.list,
                              title: Text(
                                'Profile',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              leading: Icon(Icons.people),
                            ),
                            Divider(
                              thickness: 1,
                            ),
                            ListTile(
                              title: Text(
                                'Saved Address',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              leading: Icon(Icons.star),
                            ),
                            Divider(
                              thickness: 1,
                            ),
                            ListTile(
                              title: Text(
                                'Notifications',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              leading: Icon(Icons.notification_add),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 242, 239, 240),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "OFFERS",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ListTile(
                              style: ListTileStyle.list,
                              title: Text(
                                'Promos',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              leading: Icon(Icons.people),
                            ),
                            Divider(
                              thickness: 1,
                            ),
                            ListTile(
                              title: Text(
                                'Get Discounts',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              leading: Icon(Icons.star),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 242, 239, 240),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "SETTINGS",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ListTile(
                              style: ListTileStyle.list,
                              title: Text(
                                'Themes',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              leading: Icon(Icons.people),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: false,
          unselectedLabelStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.w100),
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          items: [
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Get.to(
                    () => mainScreen(),
                    transition: Transition.fadeIn,
                  );
                },
                child: FaIcon(
                  FontAwesomeIcons.home,
                  color: Colors.black,
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.heartCircleBolt,
                color: Colors.black,
              ),
              label: 'Favourites',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Get.to(
                    () => userscreen(),
                    transition: Transition.fade,
                  );
                },
                child: FaIcon(
                  FontAwesomeIcons.userAstronaut,
                  color: Colors.red,
                ),
              ),
              label: 'Account',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.gear,
                color: Colors.black,
              ),
              label: 'Setting',
            ),
          ],
        ),
      ),
    );
  }
}