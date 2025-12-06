import 'package:account_app/core/localization/app_string.dart';
import 'package:account_app/core/theme/app_color.dart';
import 'package:account_app/core/widgets/elevated_button_widget.dart';
import 'package:account_app/core/widgets/text_field_widget.dart';
import 'package:account_app/feature/forget_password/screen/forgot_password_screen.dart';
import 'package:account_app/feature/ottp/screen/ottp_screen.dart';
import 'package:account_app/feature/sign_in/widgets/Container_widget.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
   GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool obscure = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        title: Text(AppString.back,
      style: TextStyle(
          color: AppColor.darkBlue,
          fontSize: 16,
          fontWeight: FontWeight.w600),),
          leading: IconButton(
        onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),),
      body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Text(AppString.signin,
          style: TextStyle(
            color: AppColor.mainColor,
            fontSize: 42,
            fontWeight: FontWeight.w700),),
            Text(AppString.pleaselog,
          style: TextStyle(
            color: AppColor.darkBlue,
            fontSize: 16,
            fontWeight: FontWeight.w600),),
            const SizedBox(height: 50,),
            Text(AppString.email,
          style: TextStyle(
            color: AppColor.darkBlue,
            fontSize: 16,
            fontWeight: FontWeight.w600),),
            TextFeildWidget(control: email, obscurepass: false, mess: AppString.erroemail, icon: IconButton(icon: Icon(Icons.check), onPressed: () {  },),),
            const SizedBox(height: 20,),
            Text(AppString.password,
          style: TextStyle(
            color: AppColor.darkBlue,
            fontSize: 16,
            fontWeight: FontWeight.w600),),
            TextFeildWidget(control: password, obscurepass: obscure, mess: AppString.erropassword,
             icon: IconButton(icon: Icon(obscure == false
               ? Icons.visibility_outlined
               : Icons.visibility_off_outlined,
               color: Colors.grey,),
                onPressed: () { 
                  setState(() {
                    obscure = !obscure;
                    
                  });
                 },  
            )),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ForgotPasswordScreen();
                }));
                },
                  child: Text(AppString.forgetPassword,
                  style: TextStyle(
                  color: AppColor.mainColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),),
                ),
              ],
            ),
              const SizedBox(height: 20,),
            ElevatedButtonWidget(tex: AppString.signin, onpressed: SignInScreen(), istextfield: true, formKey: formKey,),
            const SizedBox(height: 100,),
            ContainerWidget(tex: AppString.google, img: "assets/images/google_image.png"),
            const SizedBox(height: 10,),
            ContainerWidget(tex: AppString.facebook, img: "assets/images/facebook.png"),
           
        ],),
      ),
    ),
    );
  }
}