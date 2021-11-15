import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  String? labelText;
  FocusNode? focus;
  TextInputType? keyboardType;
  int? maxLines;
  TextEditingController? controller;
  VoidCallback? onChanged;
  TextInput({
    Key? key,
    required this.labelText,
    required this.controller,
    this.maxLines,
    this.focus,
    this.onChanged,
    this.keyboardType,
  }) : super(key: key);
  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        maxLines: widget.maxLines,
        controller: widget.controller,
        focusNode: widget.focus,
        onChanged: (value) {
          widget.onChanged!();
        },
        textInputAction: TextInputAction.next,
        keyboardType: widget.keyboardType,
        decoration: InputDecoration(
          hintText: widget.labelText,
          hintStyle: TextStyle(
            fontFamily: 'Sniglet',
            fontSize: 16,
            color: Colors.black38,
          ),
          fillColor: Color(0xFFFFFFF),
          hoverColor: Colors.white,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
