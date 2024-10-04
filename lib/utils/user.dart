import 'package:flutter/material.dart';

class User extends StatelessWidget {
  const User({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  Color.fromARGB(255, 143, 236, 201),
                  Color.fromARGB(255, 54, 212, 152),
                ],
                center: Alignment(-0.6, -0.6),
                radius: 1.5,
              ),
            ),
            child: Stack(children: [
              const Align(
                alignment: Alignment(-1.5, -1.5),
                child: CircleAvatar(
                  radius: 150,
                  backgroundColor: Color.fromARGB(255, 58, 201, 177),
                ),
              ),
              const Align(
                alignment: Alignment(1, -1),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Color.fromARGB(255, 89, 228, 198),
                ),
              ),
              const Align(
                alignment: Alignment(1.5, 1.5),
                child: CircleAvatar(
                  radius: 170,
                  backgroundColor: Color.fromARGB(255, 75, 211, 182),
                ),
              ),
              Center(
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.8,
                  height: MediaQuery.sizeOf(context).height * 0.3,
                  child: Column(
                    children: [
                      Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'How are you going to use the app?',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, '/consumer');
                                      },
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 25, horizontal: 25),
                                          backgroundColor: Colors.white),
                                      child: Image.asset(
                                        'Momo_images/Consumer.png',
                                        width: 100,
                                        height: 100,
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    const Text(
                                      'As Consumer',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    )
                                  ],
                                ),
                                const SizedBox(width: 10),
                                Column(
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/rider');
                                      },
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 25, horizontal: 25),
                                          backgroundColor: Colors.white),
                                      child: Image.asset(
                                        'Momo_images/Rider.png',
                                        width: 100,
                                        height: 100,
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    const Text(
                                      'As Rider',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ])));
  }
}
