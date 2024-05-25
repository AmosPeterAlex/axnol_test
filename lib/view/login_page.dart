/*
import 'package:axnol_machine_test/controller/login_controller.dart';
import 'package:axnol_machine_test/view/edit_profile_page.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({
    super.key,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var nameController = TextEditingController();

  var passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    LoginController controller = LoginController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Shree ',
                    style: TextStyle(
                        color: Color(0xffFF0000),
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'IRA',
                    style: TextStyle(
                        color: Color(0xffFF9900),
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: '\nEDUCATION',
                    style: TextStyle(
                        color: Color(0xffFF0000),
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Required';
                }
                return null;
              },
              controller: nameController,
              decoration: InputDecoration(
                  hintText: "Email address *",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Required';
                }
                return null;
              },
              controller: passController,
              decoration: InputDecoration(
                  hintText: "Password *",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
            SizedBox(
              height: size.height * .3,
            ),
            MaterialButton(
              color: Color(0xffFF9900),
              minWidth: 350,
              onPressed: () {
                controller
                    .onLogin(
                        name: "jagriteesrivastava888@gmail.com",
                        pass:
                            "12345") //just to make app building easy, should remove at last
                    // name: nameController.text, pass: passController.text)
                    .then((response) {
                  print(response);

                  String? fname = controller.model.user?.fname;
                  if (fname != null) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditProfile(
                          address: controller.model.user?.address,
                          fname: fname,
                          lname: controller.model.user?.lname,
                          mobile: controller.model.user?.mobile,
                        ),
                      ),
                    );
                  } else {
                    // print("Error: fname is null");
                  }
                }).catchError((error) {
                  // print(error);
                });
              },
              child: Text("Sign In"),
            ),
            SizedBox(
              height: 60,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Not Registered yet? ',
                    style: TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                    text: 'Sign up now',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
*/
import 'package:axnol_machine_test/controller/login_controller.dart';
import 'package:axnol_machine_test/view/edit_profile_page.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({
    super.key,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var nameController = TextEditingController();
  var passController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    LoginController controller = LoginController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Shree ',
                        style: TextStyle(
                            color: Color(0xffFF0000),
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'IRA',
                        style: TextStyle(
                            color: Color(0xffFF9900),
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: '\nEDUCATION',
                        style: TextStyle(
                            color: Color(0xffFF0000),
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Required';
                    }
                    return null;
                  },
                  controller: nameController,
                  decoration: InputDecoration(
                      hintText: "Email address *",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Required';
                    }
                    return null;
                  },
                  controller: passController,
                  decoration: InputDecoration(
                      hintText: "Password *",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
                SizedBox(
                  height: size.height * .3,
                ),
                MaterialButton(
                  color: Color(0xffFF9900),
                  minWidth: 350,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EditProfile(fname: "amos")));
                  },
                  // onPressed: () {
                  //   if (_formKey.currentState!.validate()) {
                  //     controller
                  //         .onLogin(
                  //             name: nameController.text,
                  //             pass: passController.text)
                  //         .then((response) {
                  //       String? fname = controller.model.user?.fname;
                  //       if (fname != null) {
                  //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  //           content: Text("Login Successful"),
                  //           backgroundColor: Colors.green,
                  //         ));
                  //         Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //             builder: (context) => EditProfile(
                  //               address: controller.model.user?.address,
                  //               fname: fname,
                  //               lname: controller.model.user?.lname,
                  //               mobile: controller.model.user?.mobile,
                  //             ),
                  //           ),
                  //         );
                  //       } else {
                  //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  //           content: Text("Login Failed"),
                  //           backgroundColor: Colors.red,
                  //         ));
                  //       }
                  //     }).catchError((error) {
                  //       print("$error");
                  //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  //         content: Text("Login Failed"),
                  //         backgroundColor: Colors.red,
                  //       ));
                  //     });
                  //   }
                  // },
                  child: Text("Sign In"),
                ),
                SizedBox(
                  height: 60,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Not Registered yet? ',
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Sign up now',
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
