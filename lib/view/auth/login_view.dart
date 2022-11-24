import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ward/core/viewModel/auth_view_model.dart';
import 'package:ward/utils/utils.dart';
import 'package:ward/view/widgets/custom_btn.dart';
import 'package:ward/view/widgets/custom_btn_social.dart';
import 'package:ward/view/widgets/custom_text.dart';
import 'package:ward/view/widgets/custom_text_form_field.dart';

class LoginView extends GetWidget<AuthViewModel> {
  LoginView({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ColorManager.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: PaddingManager.p50,
          left: PaddingManager.p20,
          right: PaddingManager.p20,
        ),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CustomText(
                      text: 'Welcome,',
                      fontSize: SizeManager.s30,
                    ),
                    CustomText(
                      text: 'Sign Up',
                      fontSize: SizeManager.s18,
                      color: ColorManager.primary,
                    ),
                  ],
                ),
                const SizedBox(
                  height: SizeManager.s30,
                ),
                CustomTextFormField(
                  text: 'Email',
                  hint: 'iamdavid@gmail.com',
                  onSave: (value) {
                    controller.email = value!;
                  },
                  // validator: (value) {
                  //   if (value == null) {
                  //     print('error');
                  //   }
                  //   return "";
                  // },
                ),
                const SizedBox(
                  height: SizeManager.s40,
                ),
                CustomTextFormField(
                  text: 'Password',
                  hint: '**********',
                  onSave: (value) {
                    controller.password = value!;
                  },
                  // validator: (value) {
                  //   if (value == null) {
                  //     print('error');
                  //   }
                  //   return "";
                  // },
                ),
                const SizedBox(
                  height: SizeManager.s20,
                ),
                const CustomText(
                  text: 'Forgot Password?',
                  fontSize: 14,
                  alignment: Alignment.topRight,
                ),
                const SizedBox(
                  height: SizeManager.s15,
                ),
                CustomButton(
                  label: 'SIGN IN',
                  onClick: () {
                    _formKey.currentState?.save();
                    controller.signInWithEmailAndPassword();
                    if (_formKey.currentState!.validate()) {
                      print('object');
                      controller.signInWithEmailAndPassword();
                    }
                  },
                ),
                const SizedBox(
                  height: SizeManager.s40,
                ),
                const CustomText(
                  text: '-OR-',
                  alignment: Alignment.center,
                ),
                const SizedBox(
                  height: SizeManager.s40,
                ),
                CustomBtnSocial(
                  txt: 'Sign In with Facebook',
                  img: IconManager.facebookLogo,
                  onPressed: () {
                    controller.facebookSignInMethod();
                  },
                ),
                const SizedBox(
                  height: SizeManager.s40,
                ),
                CustomBtnSocial(
                  txt: 'Sign In with Google',
                  img: IconManager.googleLogo,
                  onPressed: () {
                    controller.googleSignInMethod();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
