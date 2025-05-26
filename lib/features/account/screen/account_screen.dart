import 'package:e_wallet/common/common_color.dart';
import 'package:e_wallet/features/wallet/screen/CustomAccountCard.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CommonColor().backgorund1,
        body: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  "assets/images/icons/Arrow - Left 2.png",
                  scale: 0.8,
                ),
                const SizedBox(
                  width: 120,
                ),
                const Text(
                  "Account",
                  style: TextStyle(
                      fontSize: 23,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                const Spacer(),
                const SizedBox(
                  width: 10,
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 200,
              width: 200,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: CommonColor().shine)),
              child: Image.asset(
                "assets/images/girl_profile.jpeg",
                scale: 1,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Dya Druston",
              style: TextStyle(
                  fontSize: 23,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 150, top: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Card limit : ",
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal,
                        color: Color(0xFF7B78AA)),
                  ),
                  Text(
                    "\$ 10000",
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomAccountCard(
                image: "assets/images/girl_profile.jpeg",
                name: "Dya Druston",
                value: true),
            const CustomAccountCard(
                image: "assets/images/Ellipse 249.png",
                name: "Sandy Chungus",
                value: false),
            const CustomAccountCard(
                image: "assets/images/actress1.jpeg",
                name: "Gautam Yadav",
                value: false),
            const CustomAccountCard(
                image:
                    "assets/images/WhatsApp Image 2023-10-16 at 9.47.48 PM.jpeg",
                name: "Aditya Chauhan",
                value: false),
          ],
        ));
  }
}
