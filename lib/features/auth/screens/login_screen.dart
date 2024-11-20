import 'package:flutter/material.dart';
import 'package:hsahedsystem/constants/constants.dart';
import 'package:hsahedsystem/utilities/custom_progress.dart';
import 'package:hsahedsystem/utilities/custom_snackbar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_text_field.dart';
import '../../../widgets/bottom_bar.dart';
import '../services/auth_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
static const String routeName = '/login-screen';
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isChecked = false;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Sign In",
                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  SizedBox(
                      height: 75,
                      child: Image.asset('assets/logo.png',fit: BoxFit.contain,),),
                  const SizedBox(
                    height: 90,
                  ),
                  Form(
                      key: formKey,
                      child: Column(
                        children: [
                          CustomTextField(
                            hint: "Email",
                            controller: _emailController,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomTextField(
                              hint: "Password", controller: _passwordController)
                        ],
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(color: myBlueColor),
                      )),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                        width: 15,
                        child: Checkbox(
                          visualDensity: VisualDensity.compact,
                          splashRadius: 0,
                          side: const BorderSide(color: myGrayColor),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3),
                          ),
                          checkColor: Colors.white,
                          activeColor: myBlueColor,
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value ?? false;
                            });
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "I agree with the terms and condition",
                        style: TextStyle(color: myGrayColor),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text: "Don't have an account? ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        WidgetSpan(
                          child: GestureDetector(
                            onTap: () {
                            },
                            child: const Text(
                              "Sign up",
                              style: TextStyle(
                                color: myBlueColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 110,),
                isLoading ?Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: appGradient, 
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: CustomCircularProgress(),
                ):  CustomButton( onTap:  () {
                    if(formKey.currentState!.validate()){
                      if(!isChecked){
                        showSnackBar(context, "Please select the checkbox");
                      }
 else{

   login(_emailController.text, _passwordController.text, context);
                      }



                    }

                  }, title: 'Login',),
                ],
              ),
            ),
          )),
    );
  }
  Future login (
      String email, String password,context
      )
  async
  {
setState(() {
  isLoading = true;
});
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await  AuthServices().loginUser('dcndjc89', email, password).then((user){
      if(user.accessToken == ''){
        showSnackBar(context, 'Please check your credentials');
        setState(() {
          isLoading = false;
        });
        return user;
      }
      else{
        prefs.setString('token', user.accessToken!);
        prefs.setString('email', user.email!);
        setState(() {
          isLoading = false;
        });
        Navigator.pushNamedAndRemoveUntil(
          context,
          BottomBar.routeName,
              (route) => false,
        );
        return user;
      }
    });
  }
}

