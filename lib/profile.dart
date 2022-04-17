import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30.0,
                ),
                Center(
                  child: const Text(
                    'Profile Saya',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
                SizedBox(
                  height: 90.0,
                ),
                Container(
                  height: 490.0,
                  width: 320,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.black12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Nama Lengkap
                      Container(
                        padding: EdgeInsets.only(top: 120.0, left: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nama Lengkap',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Aladino Zulmar Abadi',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black45,
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Alamat
                      Container(
                        padding: EdgeInsets.only(top: 30.0, left: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Alamat',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Pati, Jawa Tengah',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black45,
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Email
                      Container(
                        padding: EdgeInsets.only(top: 30.0, left: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Email',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'aladino@gmail.com',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black45,
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Button Logout
                      Container(
                        padding:
                            EdgeInsets.only(top: 70.0, left: 30.0, right: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 270,
                              child: ElevatedButton(
                                child: Center(
                                  child: Text(
                                    'Logout',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            //circle image
            Positioned(
              top: 80,
              left: MediaQuery.of(context).size.width / 2 - 70,
              child: Center(
                child: Container(
                  height: 140,
                  width: 140,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/saya.jpg'),
                    radius: 50,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 60.0,
        ),
        
      ],
    ),
    bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
           label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Home',
          ),
        ], 
          currentIndex: 0, 
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          onTap: (index) {}
        ),
  );
  }
}
