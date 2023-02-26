import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartLocationTextField extends StatefulWidget {
  const StartLocationTextField({super.key});

  @override
  State<StartLocationTextField> createState() => _StartLocationTextFieldState();
}

class _StartLocationTextFieldState extends State<StartLocationTextField> {
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
                        physics: const BouncingScrollPhysics(),
                        children: [
                          companyContainer(),
                          companyContainer(phone: "+99891"),
                          companyContainer(
                              photo: "assets/unnamed.png",
                              comName: "Uzmobile",
                              phone: "+99877"),
                          companyContainer(
                              photo: "assets/unnamed.png",
                              comName: "Uzmobile",
                              phone: "+99899"),
                          companyContainer(
                              photo: "assets/unnamed.png",
                              comName: "Uzmobile",
                              phone: "+99899"),
                          companyContainer(
                              photo: "assets/ucell.png",
                              comName: "Ucell",
                              phone: "+99893"),
                          companyContainer(
                              photo: "assets/ucell.png",
                              comName: "Ucell",
                              phone: "+99894"),
                          companyContainer(
                              photo: "assets/mobiuz.png",
                              comName: "Mobiuz",
                              phone: "+99897"),
                          companyContainer(
                              photo: "assets/mobiuz.png",
                              comName: "Mobiuz",
                              phone: "+998977"),
                          companyContainer(
                              photo: "assets/mobiuz.png",
                              comName: "Mobiuz",
                              phone: "+99878"),
                          companyContainer(
                              photo: "assets/humans.png",
                              comName: "Humans",
                              phone: "+99833"),
                          companyContainer(
                              photo: "assets/humans.png",
                              comName: "Humans",
                              phone: "+99866"),
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
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.4)),
          ),
        ),
      ],
    );
  }

  Widget companyContainer(
      {String photo = "assets/sdsd.png",
      String comName = "Beeline",
      String phone = "+99890"}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              
            },
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    photo,
                    height: 25,
                    width: 25,
                  ),
                ),
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
          const Divider(
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
