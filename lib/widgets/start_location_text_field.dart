import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class StartLocationTextField extends StatelessWidget {
  const StartLocationTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
     
     children: [
       Image.asset(
                  "assets/sdsd.png",
                  height: 18,
                  width: 18,
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              top: 250, bottom: 250, left: 50, right: 50),
                          child: Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: ListView(
                                children: [
                                  companyContainer(),
                                  companyContainer(),
                                  companyContainer(),
                                  companyContainer(),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      "+99890",
                      style: GoogleFonts.shareTechMono(fontSize: 16),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 12,
                    width: 1,
                    decoration:
                        BoxDecoration(color: Colors.black.withOpacity(0.4)),
                  ),
                ),
     ],
    );
  }
  Widget companyContainer() {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              "assets/sdsd.png",
              height: 25,
              width: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: const Text("+99890"),
            ),
          ],
        ),
        const Divider(
          color: Colors.black,
        )
      ],
    );
  }
}