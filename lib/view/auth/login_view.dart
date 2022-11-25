import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ward/core/viewModel/auth_view_model.dart';
import 'package:ward/utils/utils.dart';
import 'package:ward/view/auth/register_view.dart';
import 'package:ward/view/widgets/custom_btn.dart';
import 'package:ward/view/widgets/custom_btn_social.dart';
import 'package:ward/view/widgets/custom_text.dart';
import 'package:ward/view/widgets/custom_text_form_field.dart';

class LoginView extends GetView<AuthViewModel> {
  LoginView({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0.0,
      //   backgroundColor: ColorManager.white,
      // ),
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
                  children: [
                    const CustomText(
                      text: 'Welcome,',
                      fontSize: SizeManager.s30,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(RegisterView());
                      },
                      child: const CustomText(
                        text: 'Sign Up',
                        fontSize: SizeManager.s18,
                        color: ColorManager.primary,
                      ),
                    ),
                  ],
                ),
                SvgPicture.asset(
                  ImageManager.sunflower,
                  height: SizeManager.s280,
                ),
                CustomTextFormField(
                  text: 'Your Email',
                  onSave: (value) {
                    controller.email = value!;
                  },
                  validator: (value) {
                    if (value == null) {
                      print('error');
                    }
                  },
                ),
                const SizedBox(
                  height: SizeManager.s3,
                ),
                Obx(() => CustomTextFormField(
                      text: 'Password',
                      onSave: (value) {
                        controller.password = value!;
                      },
                      validator: (value) {
                        if (value == null) {
                          print('error');
                        }
                      },
                      obscureText: controller.isPasswordHidden.value,
                      isPassword: true,
                      suffixOnPressed: () {
                        controller.isPasswordHidden.value =
                            !controller.isPasswordHidden.value;
                      },
                    )),
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
                  fontSize: SizeManager.s20,
                  onClick: () {
                    _formKey.currentState?.save();
                    if (_formKey.currentState!.validate()) {
                      controller.signInWithEmailAndPassword();
                    }
                  },
                ),
                const SizedBox(
                  height: SizeManager.s20,
                ),
                CustomBtnSocial(
                  txt: 'Sign In with Facebook',
                  img: IconManager.facebookLogo,
                  onPressed: () {
                    controller.facebookSignInMethod();
                  },
                ),
                const SizedBox(
                  height: SizeManager.s20,
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
