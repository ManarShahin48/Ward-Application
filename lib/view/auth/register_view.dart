import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ward/core/viewModel/auth_view_model.dart';
import 'package:ward/view/auth/login_view.dart';
import 'package:ward/view/widgets/custom_btn.dart';
import 'package:ward/view/widgets/custom_text.dart';
import 'package:ward/view/widgets/custom_text_form_field.dart';

class RegisterView extends GetWidget<AuthViewModel> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
            onTap: () {
              Get.off(LoginView());
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
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
                const CustomText(
                  text: "Sign Up,",
                  fontSize: 30,
                ),
                const SizedBox(
                  height: 30,
                ),
                // CustomTextFormField(
                //   text: 'Name',
                //   hint: 'Pesa',
                //   onSave: (value) {
                //     controller.name = value!;
                //   },
                //   validator: (value) {
                //     if (value == null) {
                //       print("ERROR");
                //     }
                //   },
                // ),
                // const SizedBox(
                //   height: 30,
                // ),
                // CustomTextFormField(
                //   text: 'Email',
                //   hint: 'iamdavid@gmail.com',
                //   onSave: (value) {
                //     controller.email = value!;
                //   },
                //   validator: (value) {
                //     if (value == null) {
                //       print("ERROR");
                //     }
                //   },
                // ),
                // const SizedBox(
                //   height: 40,
                // ),
                // CustomTextFormField(
                //   text: 'Password',
                //   hint: '**********',
                //   onSave: (value) {
                //     controller.password = value!;
                //   },
                //   validator: (value) {
                //     if (value == null) {
                //       print('error');
                //     }
                //   },
                // ),
                const SizedBox(
                  height: 15,
                ),
                CustomButton(
                  onClick: () {
                    _formKey.currentState?.save();

                    controller.createAccountWithEmailAndPassword();
                    // if (_formKey.currentState.validate()) {
                    //   controller.createAccountWithEmailAndPassword();
                    // }
                  },
                  label: 'SIGN Up',
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
