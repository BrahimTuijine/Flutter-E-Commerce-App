import 'package:e_comm_app/const.dart';
import 'package:flutter/material.dart';

class CustumFormField extends StatelessWidget {
  final String hint;
  final TextInputType keyBordType;
  final String labelText;
  final FormFieldSetter<String>? onSave;
  final String? Function(String?) validator;

  const CustumFormField({
    Key? key,
    required this.hint,
    required this.keyBordType,
    required this.labelText,
    required this.validator,
    required this.onSave,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          labelText,
          style: const TextStyle(color: Constants.grey),
        ),
        TextFormField(
          validator: validator,
          onSaved: onSave,
          keyboardType: keyBordType,
          decoration: InputDecoration(hintText: hint),
        ),
      ],
    );
  }
}
