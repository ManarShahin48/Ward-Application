import 'package:flutter/material.dart';
import 'package:ward/utils/utils.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Welcome,',
                  style: TextStyle(
                    color: ColorManager.black,
                    fontSize: SizeManager.s30,
                  ),
                ),
                Text(
                  'Sign Up',
                  style: TextStyle(
                    color: ColorManager.primary,
                    fontSize: SizeManager.s18,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
