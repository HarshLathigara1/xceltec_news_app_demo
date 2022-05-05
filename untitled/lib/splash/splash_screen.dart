import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/config/routes/app_routes.dart';
import 'package:untitled/constants/pref_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late SharedPreferences _sharedPreferences;

  @override
  void initState() {
    SharedPreferences.getInstance().then(
      (prefObject) {
        _sharedPreferences = prefObject;
      },
    );

    Future.delayed(const Duration(milliseconds: 2000), () {
      setState(() {

        if(_sharedPreferences.containsKey(PreferenceConstants.USERNAME) && _sharedPreferences.containsKey(PreferenceConstants.PASSWORD)){
          Get.offAndToNamed(AppRoutes.DASHBOARD_SCREEN);

        }else{
          Get.offAndToNamed(AppRoutes.REGISTER_SCREEN);

        }



      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: SizedBox(
              height: 180.0,
              width: 180.0,
              child: Image.asset(
                'assets/images/app_logo.jpg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
