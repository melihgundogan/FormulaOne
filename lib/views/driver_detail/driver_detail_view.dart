import 'package:flutter/material.dart';

class DriverDetailView extends StatelessWidget {
  const DriverDetailView({Key? key}) : super(key: key);

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
          children: [
            Text('Drivers',style: TextStyle(fontSize: 60)),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: ((context, index) => Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.black,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text('1'),
                                    Text('Charles'),
                                    Text('Leclerc'),
                                  ],
                                ),
                                CircleAvatar()
                              ],
                            )
                          ],
                        ),
                      ))),
            )
          ],
        ),
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
