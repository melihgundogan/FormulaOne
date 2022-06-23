import 'package:flutter/material.dart';
import 'package:formula_one_app/theme/theme.dart';
import 'package:formula_one_app/utils/constants/router_constants.dart';

import '../../utils/constants/image_constants.dart';


class CategoryView extends StatelessWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: themeData.primaryColor,
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.only(
            left: size.width * 0.009, right: size.width * 0.009),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Standings",
            style: themeData.textTheme.headline1,
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Flexible(
              flex: 1,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, driverStandingsViewRoute);
                },
                child: Container(
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: size.width * 0.025, top: size.height * 0.02),
                        child: Text('Drivers',
                            style: themeData.textTheme.headline3),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                            topLeft: Radius.zero,
                            topRight: Radius.zero),
                        child: Image.asset(
                          ImagesString.driversImage,
                        ),
                      )
                    ],
                  ),
                ),
              )),
          SizedBox(
            height: size.height * 0.02,
          ),
          Flexible(
              flex: 1,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, teamStandingsViewRoute);
                },
                child: Container(
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                              left: size.width * 0.025,
                              top: size.height * 0.02),
                          child: Text('Constructors',
                              style: themeData.textTheme.headline3)),
                      ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25),
                              topLeft: Radius.zero,
                              topRight: Radius.zero),
                          child: Image.asset(
                            "assets/images/ic_teams.jpg",
                            height: size.height * 0.27,
                            fit: BoxFit.fitHeight,
                          ))
                    ],
                  ),
                ),
              )),
          SizedBox(
            height: size.height * 0.01,
          ),
        ]),
      ),
    );
  }

  AppBar CustomAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Image.asset("assets/images/f1.svg.png"),
      actions: [
        IconButton(
          icon: const Icon(Icons.home_max_outlined),
          onPressed: () {},
        ),
      ],
    );
  }
}
