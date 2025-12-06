import 'package:account_app/core/localization/app_string.dart';
import 'package:account_app/core/theme/app_color.dart';
import 'package:account_app/core/widgets/elevated_button_widget.dart';
import 'package:account_app/feature/sign_in/screen/sign_in_screen.dart';
import 'package:account_app/feature/sign_up/screen/Sign_up_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
    body: Stack(
      children: [
        Positioned(
          right: 0,
          child: Image.asset("assets/images/X.png")),
        Positioned(
          bottom: 100,
          child: Image.asset("assets/images/R.png")),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            Text(AppString.welcome,
            style: TextStyle(
              color: AppColor.mainColor,
              fontSize: 42,
              fontWeight: FontWeight.w700),),
              Text(AppString.getStartit,
            style: TextStyle(
              color: AppColor.darkBlue,
              fontSize: 16,
              fontWeight: FontWeight.w600),),
              Spacer(),
              Text(AppString.existingcustomer,
            style: TextStyle(
              color: AppColor.darkBlue,
              fontSize: 16,
              fontWeight: FontWeight.w600),),
              const SizedBox(height: 8,),
              ElevatedButtonWidget(tex: AppString.signin, onpressed: SignInScreen(), istextfield: false, formKey: GlobalKey(),),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Text(AppString.newcustomer,
                  style: TextStyle(
                  color: AppColor.darkBlue,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),),
                  TextButton(child:Text(AppString.createnewaccount,
                  style: TextStyle(
                  color: AppColor.mainColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),), onPressed: () { 
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => SignUpScreen()));
                   },),
                ],
              ),
              Spacer(),
          ],),
        ),
      ],
    ),
    );
  }
}