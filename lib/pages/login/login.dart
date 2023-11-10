import 'package:all4home/first_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'forgot_pass.dart';
import 'register.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(224, 212, 205, 1),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Text(
                  "Welcome Back,",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),
                ).animate().fadeIn(delay: 300.ms, duration: 400.ms),
                Image.asset(
                  "assets/images/All4Home Logo.png",
                  height: 200.h,
                  width: double.infinity,
                ).animate().fadeIn(delay: 600.ms, duration: 400.ms),
                Text(
                  "Sign in to continue",
                  style: TextStyle(fontSize: 16.sp),
                ).animate().fadeIn(delay: 300.ms, duration: 400.ms),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Email",
                  style: TextStyle(fontSize: 13.sp),
                ).animate().fadeIn(delay: 300.ms, duration: 400.ms),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(31, 0, 0, 0),
                      ),
                      color: Colors.grey[100],
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Your Email',
                        contentPadding: EdgeInsets.all(15)),
                  ),
                ).animate().fadeIn(delay: 500.ms, duration: 400.ms),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Password",
                  style: TextStyle(fontSize: 12.sp),
                ).animate().fadeIn(delay: 300.ms, duration: 400.ms),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black12,
                      ),
                      color: Colors.grey[100],
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Password',
                        contentPadding: EdgeInsets.all(15)),
                  ),
                ).animate().fadeIn(delay: 500.ms, duration: 400.ms),
                SizedBox(
                  height: 10.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const ForgotPassword()));
                  },
                  child: Text(
                    "Forgot Password ? ",
                    style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                  ).animate().fadeIn(delay: 300.ms, duration: 400.ms),
                ),
                SizedBox(
                  height: 10.h,
                ),
                MaterialButton(
                  color: Theme.of(context).primaryColor,
                  height: 20.h,
                  minWidth: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Theme.of(context).primaryColor)),
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 20.sp),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const first_page()));
                  },
                ).animate().fadeIn(delay: 400.ms, duration: 600.ms),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "New to this app? ",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14.sp,
                          color: Colors.grey),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const RegisterScreen()));
                      },
                      child: Text(
                        "Sign Up ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp,
                            color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
