import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/config/routes/app_routes.dart';
import 'package:untitled/constants/pref_constants.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController userNameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController nameTextEditingController = TextEditingController();
  late SharedPreferences _sharedPreferences;

  @override
  void initState() {
    SharedPreferences.getInstance().then(
      (prefObject) {
        _sharedPreferences = prefObject;
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 180.0,
                width: 180.0,
                child: Image.asset(
                  'assets/images/app_logo.jpg',
                ),
              ),
              SizedBox(
                height: deviceSize.height * 0.06,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    border: Border.all(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(25.0))),
                padding: const EdgeInsets.only(
                  top: 6.0,
                  bottom: 6.0,
                  left: 8.0,
                  right: 8.0,
                ),
                child: TextFormField(
                  controller: nameTextEditingController,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    label: Text(
                      'Name',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    contentPadding: EdgeInsets.zero,
                    hintText: 'Enter Your Name',
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    border: Border.all(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(25.0))),
                padding: const EdgeInsets.only(
                  top: 6.0,
                  bottom: 6.0,
                  left: 8.0,
                  right: 8.0,
                ),
                child: TextFormField(
                  controller: emailTextEditingController,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    label: Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    contentPadding: EdgeInsets.zero,
                    hintText: 'Enter Your Email',
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    border: Border.all(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(25.0))),
                padding: const EdgeInsets.only(
                  top: 6.0,
                  bottom: 6.0,
                  left: 8.0,
                  right: 8.0,
                ),
                child: TextFormField(
                  controller: userNameTextEditingController,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    label: Text(
                      'User Name',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    contentPadding: EdgeInsets.zero,
                    hintText: 'Enter Your UserName',
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    border: Border.all(
                      color: Colors.transparent,
                    ),
                    borderRadius:
                        BorderRadius.all(const Radius.circular(25.0))),
                padding: const EdgeInsets.only(
                  top: 6.0,
                  bottom: 6.0,
                  left: 8.0,
                  right: 8.0,
                ),
                child: TextFormField(
                  obscureText: true,
                  controller: passwordTextEditingController,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.blue,
                    ),
                    label: Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    contentPadding: EdgeInsets.zero,
                    hintText: 'Enter Your Password',
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Wrap(alignment: WrapAlignment.center, children: [
                InkWell(
                  onTap: () {
                    if (isValidated()) {
                      _sharedPreferences.setString(PreferenceConstants.NAME,
                          nameTextEditingController.text.toString());

                      _sharedPreferences.setString(PreferenceConstants.USERNAME,
                          userNameTextEditingController.text.toString());

                      _sharedPreferences.setString(PreferenceConstants.PASSWORD,
                          passwordTextEditingController.text.toString());
                      _sharedPreferences.setString(PreferenceConstants.EMAIL,
                          emailTextEditingController.text.toString());
                      Get.offAndToNamed(AppRoutes.LOGIN_SCREEN);

                    }
                  },
                  child: const CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: 30.0,
                    child: Icon(
                      Icons.arrow_forward,
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  bool isValidated() {
    bool isValid = true;

    if (nameTextEditingController.text.isEmpty) {
      Fluttertoast.showToast(
          msg: "Please enter Name!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.grey.shade400,
          textColor: Colors.white,
          fontSize: 16.0);
      isValid = false;
    } else if (emailTextEditingController.text.isEmpty) {
      Fluttertoast.showToast(
          msg: "Please enter Email!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.grey.shade400,
          textColor: Colors.white,
          fontSize: 16.0);
      isValid = false;
    } else if (userNameTextEditingController.text.isEmpty) {
      Fluttertoast.showToast(
          msg: "Please Enter  UserName!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.grey.shade400,
          textColor: Colors.white,
          fontSize: 16.0);
      isValid = false;
    } else if (passwordTextEditingController.text.isEmpty) {
      Fluttertoast.showToast(
          msg: "Please Enter Password!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.grey.shade400,
          textColor: Colors.white,
          fontSize: 16.0);
      isValid = false;
    }

    return isValid;
  }
}
