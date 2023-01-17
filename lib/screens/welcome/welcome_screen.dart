import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/homepage/homepage_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quiz_app/screens/welcome/auth_service.dart';
import 'package:quiz_app/screens/welcome/welcome_screen_viewmodel.dart';
import 'package:stacked/stacked.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  final formGlobalKey = GlobalKey<FormState>();

  final CollectionReference _users =
      FirebaseFirestore.instance.collection('users');



  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WelcomeScreenViewModel>.reactive(
        viewModelBuilder: () => WelcomeScreenViewModel(),
        disposeViewModel: false,
        // onModelReady: (model) => model.init(),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: Form(
              key: formGlobalKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Stack(
                children: [
                  SvgPicture.asset("lib/assets/icons/bg.svg", fit: BoxFit.fill),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Spacer(flex: 2), //2/6
                          Text(
                            "Let's Play Quiz,",
                            style: Theme.of(context)
                                .textTheme
                                .headline4
                                ?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                            // style: Theme.of(context).textTheme.headline4.copyWith(
                            //     color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "Enter your informations below",
                            style: TextStyle(color: Colors.white),
                          ),
                          const Spacer(), // 1/6
                          TextFormField(
                            controller: viewModel.username,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color(0xFF1C2341),
                              hintText: "Username",
                              hintStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          TextFormField(
                            controller: viewModel.email,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color(0xFF1C2341),
                              hintText: "Email",
                              hintStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          TextFormField(
                            controller: viewModel.password,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color(0xFF1C2341),
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(12)),
                              ),
                            ),
                          ),
                          const Spacer(), // 1/6

                          InkWell(
                            // onTap: () => Get.to(const QuizScreen()),
                            // onTap: () => Get.to(const HomepageView()),
                            onTap: () async {
                              final username = viewModel.username.text;
                              final email = viewModel.email.text;
                              final password = viewModel.password.text;


                              // viewModel.createUser(
                              //     username: username,
                              //    );



                              Get.to(() => const HomepageView());
                            },
                            child: Container(
                              width: double.infinity,
                              alignment: Alignment.center,
                              padding:
                                  const EdgeInsets.all(kDefaultPadding * 0.75),
                              // 15
                              decoration: const BoxDecoration(
                                gradient: kPrimaryGradient,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                              ),
                              child: Text(
                                "Lets Start Quiz",
                                style: Theme.of(context)
                                    .textTheme
                                    .button
                                    ?.copyWith(color: Colors.black),
                                // .copyWith(color: Colors.black),
                              ),
                            ),
                          ),
                          const Spacer(flex: 2), // it will take 2/6 spaces
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
