import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditProfile extends StatefulWidget {
  EditProfile(
      {Key? key,
      required this.fname,
      this.lname,
      this.mobile,
      this.address,
      this.details})
      : super(key: key);

  final String fname;
  final String? lname;
  final String? mobile;
  final String? address;
  final String? details;

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  late TextEditingController fnamec;
  late TextEditingController lnamec;
  late TextEditingController mobC;
  late TextEditingController addressC;
  late TextEditingController detailsC;

  @override
  void initState() {
    super.initState();
    fnamec = TextEditingController(text: widget.fname);
    lnamec = TextEditingController(text: widget.lname ?? "");
    mobC = TextEditingController(text: widget.mobile ?? "");
    addressC = TextEditingController(text: widget.address ?? "");
    detailsC = TextEditingController(text: widget.details ?? "");
  }

  @override
  void dispose() {
    fnamec.dispose();
    lnamec.dispose();
    mobC.dispose();
    addressC.dispose();
    detailsC.dispose();
    super.dispose();
  }

  File? image;

  Future<void> _getImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Profile",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xffFF9900),
        toolbarHeight: 45,
        actions: [Icon(Icons.more_vert)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: image != null ? FileImage(image!) : null,
                    child: image == null
                        ? Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/test dpp.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        : null,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: Color(0xffFF9900),
                      child: IconButton(
                        onPressed: () => _getImage(ImageSource.camera),
                        icon: Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                        ),
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12,),
              TextField(
                controller: fnamec,
                decoration: InputDecoration(
                  label: RichText(
                    text: TextSpan(
                      text: 'First Name ',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                      children: <TextSpan>[
                        TextSpan(
                          text: '*',
                          style: TextStyle(color: Color(0xffFF0000)),
                        ),
                      ],
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              SizedBox(height: size.height * .02),
              TextField(
                controller: lnamec,
                decoration: InputDecoration(
                    label: RichText(
                      text: TextSpan(
                        text: 'Last Name ',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: TextStyle(color: Color(0xffFF0000)),
                          ),
                        ],
                      ),
                    ),
                    // hintText: "Last Name *",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
              SizedBox(height: size.height * .02),
              TextField(
                controller: mobC,
                decoration: InputDecoration(
                    label: RichText(
                      text: TextSpan(
                        text: 'Mobile Number',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: TextStyle(color: Color(0xffFF0000)),
                          ),
                        ],
                      ),
                    ),
                    // hintText: "Mobile Number *",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
              SizedBox(height: size.height * .02),
              TextField(
                // controller: addressC,
                decoration: InputDecoration(
                    label: RichText(
                      text: TextSpan(
                        text: 'Password',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: TextStyle(color: Color(0xffFF0000)),
                          ),
                        ],
                      ),
                    ),
                    // hintText: "Address *",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),SizedBox(height: size.height * .02),
              TextField(
                controller: addressC,
                decoration: InputDecoration(
                    label: RichText(
                      text: TextSpan(
                        text: 'Address',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: TextStyle(color: Color(0xffFF0000)),
                          ),
                        ],
                      ),
                    ),
                    // hintText: "Address *",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              TextField(
                maxLines: 4,
                controller: detailsC,
                decoration: InputDecoration(
                    label: RichText(
                      text: TextSpan(
                        text: 'Details',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    // hintText: "Detail *",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(5))),
              ),
              SizedBox(
                height: size.height * .03,
              ),
              MaterialButton(
                onPressed: () {},
                height: size.height * .058,
                minWidth: size.width * .44,
                color: Color(0xffFF9900),
                child: Text(
                  "Update",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
