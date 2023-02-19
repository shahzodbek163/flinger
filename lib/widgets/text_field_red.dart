import 'package:flinger/classes/send_open_company.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';

class TextFieldRed extends StatefulWidget {
  final Widget suffix;
  const TextFieldRed({super.key, required this.suffix});

  @override
  State<TextFieldRed> createState() => _TextFieldRedState();
}

class _TextFieldRedState extends State<TextFieldRed> {
  final sendOpenCompany = SendOpenCompany();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextField(
          cursorColor: const Color(0xFFff0008),
          maxLength: 9,
          keyboardType: TextInputType.phone,
          style: GoogleFonts.shareTechMono(fontSize: 16),
          inputFormatters: [MaskedInputFormatter("### ## ##")],
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.only(top: 17, left: 110),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFff0008), width: 2)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 22),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              widget.suffix,
              const Visibility(
                visible: false,
                child: Padding(
                  padding: EdgeInsets.only(left: 176),
                  child: Icon(
                    Icons.check,
                    size: 20,
                    color: Color(0xFFff0008),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
