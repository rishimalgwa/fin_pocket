import 'package:fin_pocket/comman/theme/styles.dart';
import 'package:fin_pocket/comman/theme/theme.dart';
import 'package:fin_pocket/comman/widgets/buttons.dart';
import 'package:fin_pocket/features/dashboard/presentation/pages/assest_search.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class AddAssetBottomSheet extends StatefulWidget {
  const AddAssetBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  State<AddAssetBottomSheet> createState() => _AddAssetBottomSheetState();
}

class _AddAssetBottomSheetState extends State<AddAssetBottomSheet> {
  TextEditingController assetNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: SizedBox(
        height: size.height * .5,
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Add Asset',
                  style: labelTextStyle,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Name',
                              style: smallWhiteTextStyle.copyWith(
                                  color: black, fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            child: TextFormField(
                              controller: assetNameController,
                              keyboardType: TextInputType.name,
                              decoration: textfieldDecoration.copyWith(
                                  hintText: 'Name'),
                              onTap: () async {
                                Get.to(const AssetSearchPage())!.then((res) {
                                  setState(() {
                                    assetNameController.text = res['name'];
                                  });
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Buy Price',
                              style: smallWhiteTextStyle.copyWith(
                                  color: black, fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            child: TextFormField(
                                // controller: _messagingController,
                                keyboardType: TextInputType.number,
                                decoration: textfieldDecoration.copyWith(
                                    hintText: 'Buy Price')),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Quantity',
                              style: smallWhiteTextStyle.copyWith(
                                  color: black, fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            child: TextFormField(
                                // controller: _messagingController,
                                keyboardType: TextInputType.number,
                                decoration: textfieldDecoration.copyWith(
                                    hintText: 'Quantity')),
                          ),
                        ],
                      ),
                      PrimaryButton(
                        text: ' Add',
                        onPressed: () {},
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
