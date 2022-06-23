// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:formula_one_app/theme/theme.dart';
import 'package:formula_one_app/utils/constants/router_constants.dart';

import '../../utils/constants/image_constants.dart';

class DriverStandingsView extends StatelessWidget {
  const DriverStandingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
            left: size.width * 0.009, right: size.width * 0.009),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.02),
              child:
                  const Text('Drivers', style: const TextStyle(fontSize: 60)),
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: ((context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: size.height * 0.26,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.black,
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.05),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(top: 10),
                                          child: Text(
                                            '1',
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: size.height * 0.035,
                                        ),
                                        const Text(
                                          'Charles',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w300),
                                        ),
                                        const Text(
                                          'Leclerc',
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: size.height * 0.005,
                                        right: size.width * 0.045),
                                    child: Container(
                                      width: size.width * 0.3,
                                      height: size.height * 0.14,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          child: Image.asset(
                                            ImagesString.driversImage,
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                height: size.height * 0.05,
                                thickness: 1,
                                endIndent: 20,
                                indent: 20,
                                color: Colors.white,
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 9),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: size.height * 0.03,
                                        width: size.width * 0.2,
                                        child: Text("104 Puan",
                                            style:
                                                themeData.textTheme.headline4),
                                        decoration: BoxDecoration(
                                            color: Colors.grey[600],
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: size.height * 0.03,
                                        width: size.width * 0.32,
                                        child: Text("Ferrari",
                                            style:
                                                themeData.textTheme.headline4),
                                        decoration: BoxDecoration(
                                            color: Colors.grey[600],
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, driverDetailViewRoute);
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: size.width * 0.1,
                                        height: size.height * 0.03,
                                        decoration: BoxDecoration(
                                            color: Colors.grey[600],
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Text(
                                          "Bio",
                                          style: themeData.textTheme.headline4,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ))),
            )
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  AppBar CustomAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Image.asset(ImagesString.logoImage),
      actions: [
        IconButton(
          icon: const Icon(Icons.home_max_outlined),
          onPressed: () {},
          color: themeData.primaryColor,
        ),
      ],
    );
  }
}
