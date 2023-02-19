import 'dart:developer';

import 'package:flinger/classes/send_open_company.dart';
import 'package:flinger/widgets/start_location_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldRed extends StatefulWidget {
  const TextFieldRed({super.key});

  @override
  State<TextFieldRed> createState() => _TextFieldRedState();
}

class _TextFieldRedState extends State<TextFieldRed> {
  final sendOpenCompany = SendOpenCompany();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Stack(
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
              children: const [
                StartLocationTextField(),
                Padding(
                  padding: EdgeInsets.only(left: 176),
                  child: Icon(
                    Icons.check,
                    size: 20,
                    color: Color(0xFFff0008),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
