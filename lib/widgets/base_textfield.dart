import 'package:base_test/utils/constants.dart';
import 'package:flutter/material.dart';

class BaseTextField extends StatefulWidget {
  final String lableText;
  final bool secure;
  final Image icon;
  final FocusNode focusNode;
  final TextEditingController controller;
  final String initialValue;
  final TextInputAction action;
  const BaseTextField(
      {Key key,
      @required this.lableText,
      this.secure = false,
      this.icon,
      this.focusNode,
      this.controller,
      this.initialValue,
      this.action})
      : super(key: key);

  @override
  _BaseTextFieldState createState() => _BaseTextFieldState();
}

class _BaseTextFieldState extends State<BaseTextField> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10.0,
      shadowColor: Colors.black,
      child: TextFormField(
        controller: widget.controller,
        obscureText: widget.secure,
        autofocus: false,
        textInputAction: widget.action,
        focusNode: widget.focusNode,
        onFieldSubmitted: widget.action == TextInputAction.done
            ? null
            : (_) => FocusScope.of(context).nextFocus(),
        decoration: InputDecoration(
            labelText: widget.lableText,
            labelStyle:
                TextStyle(color: ColorConstants.colorBlue, fontSize: 16),
            fillColor: Colors.white,
            filled: true,
            prefixIcon: widget.icon,
            border: InputBorder.none),
      ),
    );
  }
}
