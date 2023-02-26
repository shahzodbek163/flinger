import 'dart:developer';

import 'package:flinger/blocs/bloc_set_code.dart';
import 'package:flinger/widgets/company_code.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class StartLocationTextField extends StatefulWidget {
  const StartLocationTextField({super.key});

  @override
  State<StartLocationTextField> createState() => _StartLocationTextFieldState();
}

class _StartLocationTextFieldState extends State<StartLocationTextField> {
  @override
  Widget build(BuildContext context) {
    final providerBlocSetCode = Provider.of<BlocSetCode>(context);

    return Row(
      children: [
        StreamBuilder<Image>(
            initialData: Image.asset(
              "assets/beeline.png",
              height: 20,
              width: 20,
            ),
            stream: providerBlocSetCode.dataPhotoStream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: snapshot.data!);
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
        InkWell(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return CompanyCode();
              },
            );
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: StreamBuilder<String>(
                initialData: "+99890",
                stream: providerBlocSetCode.dataStream,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(
                      snapshot.data!,
                      style: GoogleFonts.shareTechMono(fontSize: 16),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                }),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            height: 12,
            width: 1,
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.4)),
          ),
        ),
      ],
    );
  }
}
