import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ward/core/viewModel/auth_view_model.dart';
import 'package:ward/utils/utils.dart';
import 'package:ward/view/widgets/custom_btn.dart';
import 'package:ward/view/widgets/custom_text_form_field.dart';

class RegisterView extends GetWidget<AuthViewModel> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: const IconThemeData(
          color: ColorManager.primary,
          size: SizeManager.s40,
        ),
        title: Text(
          'Sign Up',
          style: getCairoBoldStyle(
            color: ColorManager.primary,
            fontSize: FontSize.s26,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          right: 20,
          left: 20,
        ),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SvgPicture.asset(
                  ImageManager.pot,
                  height: SizeManager.s280,
                ),
                CustomTextFormField(
                  text: 'Your Name',
                  onSave: (value) {
                    controller.name = value!;
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
                CustomTextFormField(
                  text: 'Your Email',
                  onSave: (value) {
                    controller.email = value!;
                  },
                  validator: (value) {
                    if (value == null) {
                      print("ERROR");
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
                  height: SizeManager.s60,
                ),
                CustomButton(
                  onClick: () {
                    _formKey.currentState?.save();

                    if (_formKey.currentState!.validate()) {
                      controller.createAccountWithEmailAndPassword();
                    }
                  },
                  label: 'SIGN Up',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
