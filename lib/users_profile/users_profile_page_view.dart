import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UsersProfilePageView extends StatefulWidget {
  UsersProfilePageView({Key? key}) : super(key: key);

  @override
  State<UsersProfilePageView> createState() => _UsersProfilePageViewState();
}

class _UsersProfilePageViewState extends State<UsersProfilePageView> {
  String? name = "";

  Future _getDataFromDatabase() async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get()
        .then((snapshot) async {
      if (snapshot.exists) {
        setState(() {
          name = snapshot.data()!['username'];
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xffA40FD9), Colors.deepOrange.shade300],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.2, 0.9])),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink.shade400,
        title: const Text(
          'Profile Screen',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: "Signature"),
        ),
        // leading: IconButton(
        //     icon: const Icon(Icons.arrow_back_ios),
        //     onPressed: () => Navigator.of(context).pop()),

        // elevation: 0,
        // backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffA40FD9), Colors.deepOrange.shade300],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [0.2, 0.9])),
        child: Stack(
          children: [
            // Positioned(
            //     top: 0,
            //     child: Container(
            //       height: 80,
            //       width: MediaQuery.of(context).size.width,
            //       decoration: BoxDecoration(
            //           gradient: LinearGradient(
            //               colors: [Colors.pink, Colors.deepOrange.shade300],
            //               begin: Alignment.centerLeft,
            //               end: Alignment.centerRight,
            //               stops: [0.2, 0.9]
            //           )
            //       ),
            //     )),
            Positioned(
              top: 20,
              left: 120,
              child: Column(
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.grey)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        'lib/assets/user_men2.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: Row(
                      children: [
                        Text(
                          'Name : ' + name!,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                        IconButton(
                          onPressed: (){

                          },
                          icon: Icon(Icons.edit),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                top: 200,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // const Center(
                        //   child: Text(
                        //     "Daniel Padilla",
                        //     style: TextStyle(
                        //         fontSize: 20, fontWeight: FontWeight.w400),
                        //   ),
                        // ),
                        // const SizedBox(height: 8),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.black12)
                                // boxShadow: [BoxShadow(
                                //     color: Colors.grey.withOpacity(0.5),
                                //     spreadRadius: 3,
                                //     blurRadius: 5,
                                //     offset: const Offset(0,3)
                                // )]
                                ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Profile Details",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  // Image.asset(
                                  //     'lib/resources/assets/icons/arrow_tri.png')
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.black12)
                                // boxShadow: [BoxShadow(
                                //     color: Colors.grey.withOpacity(0.5),
                                //     spreadRadius: 3,
                                //     blurRadius: 5,
                                //     offset: const Offset(0,3)
                                // )]
                                ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Account Management",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  // Image.asset(
                                  //     'lib/resources/assets/icons/arrow_tri.png')
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.black12)
                                // boxShadow: [BoxShadow(
                                //     color: Colors.grey.withOpacity(0.5),
                                //     spreadRadius: 3,
                                //     blurRadius: 5,
                                //     offset: const Offset(0,3)
                                // )]
                                ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Terms and Conditions",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  // Image.asset(
                                  //     'lib/resources/assets/icons/arrow_tri.png')
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.black12)
                                // boxShadow: [BoxShadow(
                                //     color: Colors.grey.withOpacity(0.5),
                                //     spreadRadius: 3,
                                //     blurRadius: 5,
                                //     offset: const Offset(0,3)
                                // )]
                                ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Privacy Policy",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  // Image.asset(
                                  //     'lib/resources/assets/icons/arrow_tri.png')
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.black12)
                                // boxShadow: [BoxShadow(
                                //     color: Colors.grey.withOpacity(0.5),
                                //     spreadRadius: 3,
                                //     blurRadius: 5,
                                //     offset: const Offset(0,3)
                                // )]
                                ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Log Out",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  // Image.asset(
                                  //     'lib/resources/assets/icons/arrow_tri.png')
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ),
      )),
    );
  }
}
