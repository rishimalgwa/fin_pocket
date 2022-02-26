import 'package:fin_pocket/comman/theme/styles.dart';
import 'package:fin_pocket/features/dashboard/presentation/widgets/card.dart';
import 'package:flutter/material.dart';

class AllAssets extends StatefulWidget {
  const AllAssets({Key? key}) : super(key: key);

  @override
  _AllAssetsState createState() => _AllAssetsState();
}

class _AllAssetsState extends State<AllAssets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Assets',
          style: appBarTextStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    (context, index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Stocks',
                            style: labelTextStyle,
                          ),
                        ),
                    childCount: 1)),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    (context, index) => const CustomListTile(),
                    childCount: 5)),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    (context, index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Cryptos',
                            style: labelTextStyle,
                          ),
                        ),
                    childCount: 1)),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    (context, index) => const CustomListTile(),
                    childCount: 5))
          ],
        ),
      ),
    );
  }
}
