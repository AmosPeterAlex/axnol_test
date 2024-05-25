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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Profile",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xffFF9900),
        toolbarHeight: 40,
        actions: [Icon(Icons.menu)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: image != null ? FileImage(image!) : null,
                    child: image == null
                        ? Container()
                        // IconButton(
                        // onPressed: () => _getImage(ImageSource.camera),
                        // icon: Icon(Icons.camera_alt_outlined),
                        // )
                        : null,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: IconButton(
                      onPressed: () => _getImage(ImageSource.camera),
                      icon: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.black,
                      ),
                      color: Colors.black,
                    ),
                  ),
                ],
              )
              // CircleAvatar(
              //   minRadius: 50,
              //   backgroundImage: image != null ? FileImage(image!) : null,
              //   child: image == null
              //       ? IconButton(
              //           onPressed: () => _getImage(ImageSource.camera),
              //           icon: Icon(Icons.camera_alt_outlined),
              //         )
              //       : null,
              // ),
              ,
              TextField(
                controller: fnamec,
                decoration: InputDecoration(
                    hintText: "First Name *",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: lnamec,
                decoration: InputDecoration(
                    hintText: "Last Name *",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: mobC,
                decoration: InputDecoration(
                    hintText: "Mobile Number *",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: addressC,
                decoration: InputDecoration(
                    hintText: "Address *",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                maxLines: 5,
                controller: detailsC,
                decoration: InputDecoration(
                    hintText: "Detail *",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () {},
                color: Color(0xffFF9900),
                child: Text("Update"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
