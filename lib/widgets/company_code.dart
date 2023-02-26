import 'dart:io';

import 'package:flinger/blocs/bloc_set_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CompanyCode extends StatelessWidget {
  CompanyCode({super.key});

  List<String> codes = [
    "+99890",
    "+99891",
    "+99877",
    "+99899",
    "+99893",
    "+99894",
    "+99897",
    "+99878",
    "+99833",
    "+99866",
  ];
  List<String> companyName = [
    "Beeline",
    "Uzmobile",
    "Ucell",
    "Mobiuz",
    "Humans"
  ];
  List<Image> images = [
    Image.asset(
      "assets/beeline.png",
      height: 20,
      width: 20,
    ),
    Image.asset(
      "assets/unnamed.png",
      height: 20,
      width: 20,
    ),
    Image.asset(
      "assets/ucell.png",
      height: 20,
      width: 20,
    ),
    Image.asset(
      "assets/mobiuz.png",
      height: 20,
      width: 20,
    ),
    Image.asset(
      "assets/humans.png",
      height: 20,
      width: 20,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 250, horizontal: 60),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: SizedBox(
                height: 510,
                width: 200,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: List.generate(
                      codes.length,
                      (index) => companyContainer(
                          index == 0 || index == 1
                              ? images[0]
                              : index == 2 || index == 3
                                  ? images[1]
                                  : index == 4 || index == 5
                                      ? images[2]
                                      : index == 6 || index == 7
                                          ? images[3]
                                          : index == 8 || index == 9
                                              ? images[4]
                                              : images[4],
                          index == 0 || index == 1
                              ? companyName[0]
                              : index == 2 || index == 3
                                  ? companyName[1]
                                  : index == 4 || index == 5
                                      ? companyName[2]
                                      : index == 6 || index == 7
                                          ? companyName[3]
                                          : index == 8 || index == 9
                                              ? companyName[4]
                                              : companyName[4],
                          codes[index],
                          context)),
                ),
              ),
            )),
      ),
    );
  }

  Widget companyContainer(Image image, String comName, String phone, context) {
    final providerBlocSetCode = Provider.of<BlocSetCode>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              providerBlocSetCode.dataSink.add(phone);
              providerBlocSetCode.dataPhotoSink.add(image);
              Navigator.pop(context);
            },
            child: Container(
              height: 35,
              color: Colors.transparent,
              child: Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20), child: image),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      comName,
                      style: GoogleFonts.shareTechMono(),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      phone,
                      style: GoogleFonts.shareTechMono(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Divider(
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
