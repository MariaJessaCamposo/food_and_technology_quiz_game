import 'package:flutter/material.dart';

class KitchenToolsEquipmentView extends StatelessWidget {
  const KitchenToolsEquipmentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color(0xffE7A1FF),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 100,
                left: 70,
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.asset(
                    "lib/assets/icons/kte.png",
                  fit: BoxFit.contain,
                  ),
                ),
            ),
            Positioned(
              top: 350,
                left: 70,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "Kitchen Tools and\nEquipment",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 45),
                    Text(
                      "Identify the Tools or Equipment",
                      style: TextStyle(
                          fontSize: 16,
                        fontWeight: FontWeight.w400
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )
            ),

            Positioned(
              top: 500,
                left: 50,
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      width: 270,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xffFFEAA7)
                      ),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
                        child: Text(
                          "Bread & Pastry",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 60,
                      width: 270,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xffFFEAA7)
                      ),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
                        child: Text(
                          "Cookery",
                          style: TextStyle(
                              fontSize: 24,
                            fontWeight: FontWeight.w600
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
