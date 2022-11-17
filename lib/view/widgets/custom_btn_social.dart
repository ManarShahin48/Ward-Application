import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ward/utils/utils.dart';

class CustomBtnSocial extends StatelessWidget {
  const CustomBtnSocial({
    Key? key,
    required this.txt,
    required this.img,
    required this.onPressed,
  }) : super(key: key);

  final String txt;
  final void Function()? onPressed;
  final String img;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: SizeManager.s45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(SizeManager.s5),
          border: Border.all(
            color: Colors.grey,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          textDirection: TextDirection.ltr,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: PaddingManager.p14),
              child: SvgPicture.asset(
                img,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: PaddingManager.p11),
              child: Text(
                txt,
                textAlign: TextAlign.center,
                style: getInterRegularStyle(
                  color: ColorManager.black,
                  fontSize: FontSize.s16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
