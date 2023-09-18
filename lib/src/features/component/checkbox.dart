import 'package:flutter/material.dart';

import '../../constant/color/color.dart';

class CheckBox extends StatefulWidget {
  final String text;
  const CheckBox({super.key, required this.text});

  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _isSelected = !_isSelected;
            });
          },
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: kDarkGreyColor)),
            child: _isSelected
                ? const Icon(Icons.check, size: 17, color: Colors.green)
                : null,
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Text(widget.text),
      ],
    );
  }
}
