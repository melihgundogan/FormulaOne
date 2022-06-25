import 'package:flutter/material.dart';
import 'package:formula_one_app/utils/constants/assets_constants.dart';
import 'package:formula_one_app/utils/constants/router_constants.dart';
import '../../../theme/theme.dart';

class DriverDetailView extends StatelessWidget {
  const DriverDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffB1D4E0),
      extendBodyBehindAppBar: true,
      appBar: _appBar(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: size.width * 0.23,
                right: size.width * 0.23,
                top: size.height * 0.085),
            child: Image.network(
                "https://www.formula1.com/content/dam/fom-website/drivers/L/LEWHAM01_Lewis_Hamilton/lewham01.png.transform/2col/image.png"),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color(0xff0B1320),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(36), topRight: Radius.circular(36)),
            ),
            height: size.height * 0.65465,
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: size.width * 0.05,
                      right: size.width * 0.05,
                      top: size.height * 0.01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IntWidget(
                        size: size,
                        text: 'WDC',
                        imageUrl: IconsConstant.wdcIcon,
                        number: 7,
                      ),
                      IntWidget(
                        size: size,
                        text: 'Win',
                        imageUrl: IconsConstant.winIcon,
                        number: 103,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: size.width * 0.05,
                      right: size.width * 0.05,
                      top: size.height * 0.01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IntWidget(
                        size: size,
                        text: 'Podium',
                        imageUrl: IconsConstant.podiumIcon,
                        number: 184,
                      ),
                      IntWidget(
                        size: size,
                        text: 'Pole Pozision',
                        imageUrl: IconsConstant.poleIcon,
                        number: 103,
                      )
                    ],
                  ),
                ),
                StringWidget(
                  size: size,
                  imageUrl: IconsConstant.raceIcon,
                  text: 'First Race',
                  pist: '2007 Canada Gp',
                ),
                StringWidget(
                  size: size,
                  imageUrl: IconsConstant.raceIcon,
                  text: 'Last Win',
                  pist: '2021 Brezilya Gp',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AppBar(
      title: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Row(
          children: [
            Image.network(
                "https://www.formula1.com/content/dam/fom-website/flags/United%20Kingdom.jpg.transform/2col/image.jpg",
                height: size.height * 0.02),
            Text('Sir Lewis Hamilton', style: themeData.textTheme.headline6),
          ],
        ),
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, driverStandingsViewRoute);
          },
          icon: Icon(
            Icons.chevron_left_outlined,
            color: themeData.primaryColor,
          )),
    );
  }
}

class StringWidget extends StatelessWidget {
  const StringWidget({
    Key? key,
    required this.size,
    required this.text,
    required this.imageUrl,
    required this.pist,
  }) : super(key: key);

  final Size size;
  final String text, imageUrl, pist;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
            left: size.width * 0.05,
            right: size.width * 0.05,
            top: size.height * 0.025),
        child: Container(
          decoration: BoxDecoration(
              color: const Color(0xffAFC1D0),
              borderRadius: BorderRadius.circular(20)),
          height: size.height * 0.08,
          width: size.width * 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset(
                    imageUrl,
                  ),
                  Text(text, style: themeData.textTheme.headline5),
                ],
              ),
              Text(
                pist,
                style: const TextStyle(fontSize: 25),
              ),
            ],
          ),
        ));
  }
}

class IntWidget extends StatelessWidget {
  const IntWidget({
    Key? key,
    required this.size,
    required this.text,
    required this.imageUrl,
    required this.number,
  }) : super(key: key);

  final Size size;
  final String text, imageUrl;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          //color: const Color.fromARGB(255, 100, 176, 238),
          color: const Color(0xffAFC1D0),
          borderRadius: BorderRadius.circular(20)),
      height: size.height * 0.2,
      width: size.width * 0.35,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            imageUrl,
          ),
          Text(text, style: themeData.textTheme.headline5),
          Text(number.toString(), style: TextStyle(fontSize: 60)),
        ],
      ),
    );
  }
}
