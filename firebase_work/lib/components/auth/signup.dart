// ignore_for_file: prefer_const_constructors, unnecessary_null_comparison, use_build_context_synchronously, prefer_typing_uninitialized_variables, avoid_print, library_private_types_in_public_api, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'dart:io';
import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_work/components/auth/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:image_picker/image_picker.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _isPasswordHidden = true;
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  GlobalKey<FormState> _form = GlobalKey<FormState>();

  var uid;
  var profileImage;
  var filedata;
  var imagelink;
  var showLoader = false;

  final ImagePicker _picker = ImagePicker();
  Future<void> RegsisterUser() async {
    if (profileImage != null) {
      showLoader = true;
      try {
        final userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: email.text, password: password.text);
        final user = userCredential.user;

        setState(() {
          uid = user?.uid;
        });
        uploadImageToStorage();
        
        // imageStoreStorage();
      } catch (e) {
        print(e.toString());
      }
    } else {
      showSnackBar(context, 'Select the profile Image');
    }
  }

  pickProfileImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        profileImage = File(pickedFile.path);
        filedata = pickedFile;
      });
    } else {
      showSnackBar(context, 'Select the profile Image');
    }
  }

  uploadImageToStorage() async {
    print("wokring");

    try {
      FirebaseStorage storage = FirebaseStorage.instance;
      Reference storageRef =
          storage.ref().child('UserProfileImages/${filedata.path}');
      UploadTask upload = storageRef.putFile(profileImage);
      TaskSnapshot snapshot = await upload.whenComplete(() => ());
      String profileDownloadURL = await snapshot.ref.getDownloadURL();

      setState(() {
        imagelink = profileDownloadURL;
      });
      print(profileDownloadURL);
      storedb();
    } catch (e) {
      print(e);
    }
  }

  storedb() async {
    var dbinstance = FirebaseDatabase.instance;
    DatabaseReference dbref = dbinstance.ref();

    var userObj = {
      "userId": uid,
      "name": name.text.toString(),
      "email": email.text.toString(),
      "password": password.text.toString(),
      "imageUrl": imagelink,
    };

    if (uid != null) {
      showSnackBar(context, 'Account Created Successfully!');
      await dbref.child("FlutterUserData").child(uid).set(userObj);
      showLoader = false;
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Signin()));
      print('store in database ');
      name.text = "";
        email.text = "";
        password.text = "";
    } else {
      print("Error: UID is null");
    }
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: Duration(seconds: 2), // Duration of the Snackbar
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text("SIGNUP FORM"),
        // ),
        body: Container(
          width: screenWidth,
          height: screenHeight,
          child: SingleChildScrollView(
            child: Form(
              key: _form,
              child: Column(
                children: [
                  SizedBox(
                    height: screenHeight*0.03,
                  ),
                  Text("Welcome Back", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                   SizedBox(
                    height: screenHeight*0.04,
                  ),
                  GestureDetector(
                      onTap: () {
                        // its comes from bottom_modal_Sheet
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Wrap(
                              children: [
                                ListTile(
                                  leading: Icon(Icons.image),
                                  title: Text('Pick from Gallery'),
                                  onTap: () {
                                    pickProfileImage(ImageSource.gallery);
                                    Navigator.pop(context);
                                  },
                                ),
                                ListTile(
                                  leading: Icon(Icons.camera),
                                  title: Text('Take a Photo'),
                                  onTap: () {
                                    pickProfileImage(ImageSource.camera);
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Colors.blue, width: 1), // Blue border
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 15,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          radius: 75,
                          backgroundColor: Colors.grey[300],
                          backgroundImage: profileImage != null
                              ? FileImage(profileImage) as ImageProvider
                              : NetworkImage(
                                  "https://img.freepik.com/free-vector/image-upload-concept-illustration_114360-996.jpg?ga=GA1.1.881659082.1730823737&semt=ais_hybrid_sidr"),
                        ),
                      )),
                  // Signup Text
                  Padding(
                    padding: EdgeInsets.all(screenWidth * 0.04),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sign Up",
                              style: TextStyle(
                                fontSize: screenWidth * 0.06,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.01),
                            Text(
                              "Fill the form below to create your account",
                              style: TextStyle(fontSize: screenWidth * 0.04),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Name Input Field
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.04,
                      vertical: screenHeight * 0.01,
                    ),
                    child: SizedBox(
                      height: screenHeight * 0.09,
                      child: TextFormField(
                        controller: name,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Name is required";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          labelText: "Enter your name",
                          hintText: "John Doe",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Email Input Field
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.04,
                      vertical: screenHeight * 0.01,
                    ),
                    child: SizedBox(
                      height: screenHeight * 0.09,
                      child: TextFormField(
                        controller: email,
                        validator: (value) {
                          RegExp emailRegex =
                              RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
                          if (value!.isEmpty) {
                            return "Email is required";
                          } else if (!emailRegex.hasMatch(value)) {
                            return "Enter a valid email address";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          labelText: "Enter your email",
                          hintText: "example@example.com",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Password Input Field
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.04,
                      vertical: screenHeight * 0.01,
                    ),
                    child: SizedBox(
                      height: screenHeight * 0.09,
                      child: TextFormField(
                        controller: password,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password is required";
                          } else if (value.length < 8) {
                            return "Password must be at least 8 characters long";
                          } else if (!RegExp(
                                  r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$')
                              .hasMatch(value)) {
                            return 'At least 1 uppercase lowercase, 1 No, and 1 Special Char ';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: _isPasswordHidden,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isPasswordHidden
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                            onPressed: () {
                              setState(() {
                                _isPasswordHidden = !_isPasswordHidden;
                              });
                            },
                          ),
                          labelText: "Enter your passwords",
                          hintText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Submit Button
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.04,
                      vertical: screenHeight * 0.02,
                    ),
                    child: SizedBox(
                      width: screenWidth,
                      height: screenHeight * 0.06,
                      child: showLoader
                          ? SpinKitFadingCircle(
                              color: Colors.blue,
                              size: 70.0,
                            )
                          : ElevatedButton(
                              onPressed: () {
                                print('pree signup');
                                if (_form.currentState!.validate()) {
                                  RegsisterUser();
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 13, 31, 148),
                                textStyle: TextStyle(
                                  fontSize: screenWidth * 0.04,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              child: Text("Sign Up"),
                            ),
                    ),
                  ),
                  // signin button for redirect to login page
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.04,
                      vertical: screenHeight * 0.001,
                    ),
                    child: SizedBox(
  width: screenWidth,
  height: screenHeight * 0.02,
  child: showLoader
      ? SizedBox() // Show nothing if loader is active
      : GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Signin()), // Navigate to Sign In page
            );
          },
          child: Center(
            // Uses RichText to style "Sign In" separately
            child: RichText(
              text: TextSpan(
                text: "Don’t have an account? ",
                style: TextStyle(color: Colors.black, fontSize: 12), // Normal text style
                children: [
                  TextSpan(
                    text: "Click on Sign In",
                    style: TextStyle(
                      color: Colors.blue, // Make 'Sign In' stand out
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
)

                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
