import 'package:flutter/material.dart';
import 'package:mobile_store/src/constant/color/color.dart';

class LoginOption extends StatelessWidget {
  const LoginOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BuildButton(
          icon: const Icon(Icons.facebook, size: 50),
          backgroundColor: kWhiteColor,
          borderRadius: BorderRadius.circular(50),
        ),
        const SizedBox(width: 30),
        BuildButton(
          icon: Image.asset(
            'assets/icon/google_icon.jpg',
            height: 40,
            width: 40,
          ),
          backgroundColor: kWhiteColor,
          borderRadius: BorderRadius.circular(50),
        )
      ],
    );
  }
}

class BuildButton extends StatelessWidget {
  final Widget icon;
  final Color backgroundColor;
  final BorderRadius borderRadius;

  const BuildButton({
    super.key,
    required this.icon,
    required this.backgroundColor,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return CircleAvatar(
      radius: mediaQuery.height * 0.03,
      backgroundColor: backgroundColor,
      child: icon,
    );
  }
}
