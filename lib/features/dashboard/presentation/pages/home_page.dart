import 'package:fin_pocket/comman/constants.dart';
import 'package:fin_pocket/comman/styles.dart';
import 'package:fin_pocket/comman/theme.dart';
import 'package:fin_pocket/features/dashboard/presentation/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          '👋 Hey, Rishi',
          style: appBarTextStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: size.height * .28,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: buttonBlue,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Portfolio value',
                            style: smallWhiteTextStyle,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            '\$200000',
                            style: bigWhiteTextStyle,
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Text(
                            '^ \$69.78',
                            style: smallWhiteTextStyle.copyWith(
                                color: buttonGreen),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Last updated: 5:00 PM',
                            style: smallWhiteTextStyle.copyWith(
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SvgPicture.asset(graphUpPath)
                    ],
                  ),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Your Stocks',
                ),
              ),
            ),
            Expanded(
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const CustomListTile();
                    }))
          ],
        ),
      ),
    );
  }
}
