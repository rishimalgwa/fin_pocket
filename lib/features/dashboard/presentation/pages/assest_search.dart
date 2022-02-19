import 'package:fin_pocket/comman/constants.dart';
import 'package:fin_pocket/comman/styles.dart';
import 'package:flutter/material.dart';

class AssetSearchPage extends StatefulWidget {
  const AssetSearchPage({Key? key}) : super(key: key);

  @override
  _AssetSearchPageState createState() => _AssetSearchPageState();
}

class _AssetSearchPageState extends State<AssetSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Search Assets',
          style: appBarTextStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              decoration: textfieldDecoration.copyWith(
                  hintText: 'Search',
                  suffixIcon: const Icon(
                    Icons.search,
                    size: 26,
                  )),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: gg.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(gg.toList()[index]),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
