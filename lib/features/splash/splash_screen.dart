import 'package:flutter/material.dart';
import 'package:hsahedsystem/constants/constants.dart';
import 'package:hsahedsystem/features/auth/screens/login_screen.dart';
import 'package:hsahedsystem/widgets/bottom_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkUser(context);
  }

  void checkUser(context)async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? token =  preferences.getString('token');
    if (token == null || token.isEmpty){
      Future.delayed(const Duration(seconds: 2),(){
        Navigator.pushNamedAndRemoveUntil(context, LoginScreen.routeName, (route)=>false);
      });

    }
    else{
      Future.delayed(const Duration(seconds: 2),(){
        Navigator.pushNamedAndRemoveUntil(context, BottomBar.routeName, (route)=>false);
      });

    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: appGradient
      ),
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: Center(
        child: SizedBox(
            height: MediaQuery.sizeOf(context).width,
            child: Image.asset('assets/logo.png'))
      ),
    );
  }
}
