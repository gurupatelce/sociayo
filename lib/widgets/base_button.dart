import 'package:base_test/utils/constants.dart';
import 'package:flutter/material.dart';

class BaseButton extends StatefulWidget {
  final String title;
  final Function buttonAction;
  final double width;
  final bool showLeftIcon;

  const BaseButton(
      {Key key,
      this.title,
      this.buttonAction,
      this.width,
      this.showLeftIcon = true})
      : super(key: key);
  @override
  _BaseButtonState createState() => _BaseButtonState();
}

class _BaseButtonState extends State<BaseButton> {
  Widget _buildIcon() {
    return widget.showLeftIcon
        ? Align(
            alignment: Alignment.centerRight,
            child: Container(
              child: Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 30,
                  width: 30,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: ColorConstants.colorButton,
                    size: 18,
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white)),
            ),
          )
        : Container();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.buttonAction();
      },
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Container(
        height: 50,
        width: widget.width == null
            ? MediaQuery.of(context).size.width
            : widget.width,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                widget.title.toUpperCase(),
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            _buildIcon()
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23),
          color: ColorConstants.colorButton,
          boxShadow: [
            BoxShadow(
              color: ColorConstants.colorButton.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 1),
            ),
          ],
        ),
      ),
    );
  }
}
