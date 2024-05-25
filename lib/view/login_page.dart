import 'package:axnol_machine_test/controller/login_controller.dart';
import 'package:axnol_machine_test/view/edit_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: size.height * .3,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: 'SHREE ',
                            style: GoogleFonts.suezOne(
                              fontSize: 28,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffFF0000),
                            )),
                        TextSpan(
                          text: 'IRA',
                          style: GoogleFonts.suezOne(
                            fontSize: 28,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffFF9900),
                          ),
                        ),
                        TextSpan(
                            text: '\nEDUCATION',
                            style: GoogleFonts.suezOne(
                              fontSize: 28,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffFF0000),
                            )),
                      ],
                    ),
                  ),

                  //#d1d3d3-< textfield fill color
                  SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Email Required";
                      }

                      final emailRegex =
                          RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

                      if (!emailRegex.hasMatch(value)) {
                        return 'Type a valid email';
                      }
                      return null;
                    },
                    controller: nameController,
                    decoration: InputDecoration(
                      enabled: true,
                      filled: true,
                      fillColor: Color(0xfff3f5f5),
                      label: RichText(
                        text: TextSpan(
                          text: 'Email address',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                          children: <TextSpan>[
                            TextSpan(
                              text: '*',
                              style: TextStyle(color: Color(0xffFF0000)),
                            ),
                          ],
                        ),
                      ),
                      hintText: "Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide.none),
                      // contentPadding:
                      //     EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password Required';
                      }
                      return null;
                    },
                    //#f3f5f5
                    controller: passController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xfff3f5f5),
                      label: RichText(
                        text: TextSpan(
                          text: 'Password',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                          children: <TextSpan>[
                            TextSpan(
                              text: '*',
                              style: TextStyle(color: Color(0xffFF0000)),
                            ),
                          ],
                        ),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          // function cheyanm
                        },
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            'Forgot?',
                            style: TextStyle(
                                color: Color(0xffFF0000),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      hintText: "Password ",
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(5)),
                      // contentPadding:
                      //     EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                    color: Color(0xffFF9900),
                    height: 70,
                    minWidth: 350,
                    // onPressed: () {
                    //   Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => EditProfile(fname: "amos")));
                    // },
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        controller
                            .onLogin(
                                name: "jagriteesrivastava888@gmail.com",
                                pass: passController.text)
                            .then((response) {
                          String? fname = controller.model.user?.fname;
                          if (fname != null) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("Login Successful"),
                              backgroundColor: Colors.green,
                            ));
                            Navigator.pushReplacement(
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
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("Login Failed"),
                              backgroundColor: Colors.red,
                            ));
                          }
                        }).catchError((error) {
                          print("$error");
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("Login Failed"),
                            backgroundColor: Colors.red,
                          ));
                        });
                      }
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: size.height * .2,
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
      ),
    );
  }
}
