import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../constant/color/color.dart';

class BuildAddressForm extends StatefulWidget {
  final TextEditingController textAddressController;
  final Function(bool) onAddressChanged;

  const BuildAddressForm({
    super.key,
    required this.textAddressController,
    required this.onAddressChanged,
  });

  @override
  State<BuildAddressForm> createState() => _BuildAddressFormState();
}

class _BuildAddressFormState extends State<BuildAddressForm> {
  String errorAddressText = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.01),
      child: TextField(
        controller: widget.textAddressController,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          errorText: errorAddressText.isNotEmpty ? errorAddressText : null,
          hintText: '${AppLocalizations.of(context)?.enterYourAddress}',
          hintStyle: const TextStyle(color: kTextFieldColor),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: kGreenColor)),
        ),
        onChanged: (value) {
          setState(() {
            if (value.isEmpty) {
              errorAddressText =
                  '${AppLocalizations.of(context)?.addressCannotBeLeftBlank}';
              widget.onAddressChanged(true);
            } else if (value.startsWith(' ')) {
              errorAddressText =
                  '${AppLocalizations.of(context)?.noSpacesAtTheBeginning}';
              widget.onAddressChanged(true);
            } else if (value.endsWith(' ')) {
              errorAddressText =
                  '${AppLocalizations.of(context)?.noSpacesAtTheEndOfSentences}';
              widget.onAddressChanged(true);
            } else {
              errorAddressText = '';
              widget.onAddressChanged(false);
            }
          });
        },
      ),
    );
  }
}
