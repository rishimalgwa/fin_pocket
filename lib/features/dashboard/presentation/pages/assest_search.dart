import 'package:fin_pocket/comman/constants/maps.dart';
import 'package:fin_pocket/comman/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class AssetSearchPage extends StatefulWidget {
  const AssetSearchPage({Key? key}) : super(key: key);

  @override
  _AssetSearchPageState createState() => _AssetSearchPageState();
}

class _AssetSearchPageState extends State<AssetSearchPage> {
  TextEditingController searchController = TextEditingController();
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
              controller: searchController,
              onChanged: (v) {
                setState(() {});
              },
              decoration: textfieldDecoration.copyWith(
                  hintText: 'Search',
                  suffixIcon: const Icon(
                    Icons.search,
                    size: 26,
                  )),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: bseCryptoSymbolMap.length,
                  itemBuilder: (context, index) {
                    String name = bseCryptoSymbolMap.keys.toList()[index];
                    String symbol = bseCryptoSymbolMap.values.toList()[index];
                    if (searchController.text.isEmpty) {
                      return GestureDetector(
                        onTap: () =>
                            Get.back(result: {'name': name, 'symbol': symbol}),
                        child: Card(
                          child: ListTile(
                            title: Text(name),
                            subtitle: Text(symbol),
                          ),
                        ),
                      );
                    } else if (name
                            .toLowerCase()
                            .contains(searchController.text.toLowerCase()) ||
                        symbol
                            .toLowerCase()
                            .contains(searchController.text.toLowerCase())) {
                      return GestureDetector(
                        onTap: () =>
                            Get.back(result: bseCryptoSymbolMap[index]),
                        child: Card(
                          child: ListTile(
                            title: Text(name),
                            subtitle: Text(symbol),
                          ),
                        ),
                      );
                    } else {
                      return const SizedBox();
                    }
                  }),
            )
          ],
        ),
      ),
    );
  }
}
