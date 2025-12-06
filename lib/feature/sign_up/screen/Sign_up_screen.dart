import 'package:account_app/core/localization/app_string.dart';
import 'package:account_app/core/theme/app_color.dart';
import 'package:account_app/core/widgets/elevated_button_widget.dart';
import 'package:account_app/core/widgets/text_field_widget.dart';
import 'package:account_app/feature/sign_in/screen/sign_in_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool agree = true;
  bool obscure = false;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        leading: IconButton(
        onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
        title: Text(AppString.back,
      style: TextStyle(
          color: AppColor.darkBlue,
          fontSize: 16,
          fontWeight: FontWeight.w600),),),
      body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Text(AppString.signUp,
          style: TextStyle(
            color: AppColor.mainColor,
            fontSize: 42,
            fontWeight: FontWeight.w700),),
            Text(AppString.pleasecreate,
          style: TextStyle(
            color: AppColor.darkBlue,
            fontSize: 16,
            fontWeight: FontWeight.w600),),
            const SizedBox(height: 50,),
            Text(AppString.name,
          style: TextStyle(
            color: AppColor.darkBlue,
            fontSize: 16,
            fontWeight: FontWeight.w600),),
            TextFeildWidget(control: name, obscurepass: false, mess: "null", icon: IconButton(icon: Icon(Icons.person), onPressed: () {  },),),
            const SizedBox(height: 20,),
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
              
              
              },),),
              const SizedBox(height: 30,),
              CheckboxListTile(
              title: Text(AppString.agree,
              style: TextStyle(
              color: AppColor.darkBlue,
              fontSize: 16,
              fontWeight: FontWeight.w600),),
              controlAffinity: ListTileControlAffinity.leading,
              activeColor: AppColor.mainColor,
              value: agree, onChanged: (value){
              setState(() {
               agree = value!;
              });
              }),
              const SizedBox(height: 30,),
            ElevatedButtonWidget(tex: AppString.signUp, onpressed: SignInScreen(), istextfield: true, formKey: formKey,),
            
           
        ],),
      ),
    ),
    );
  }
}