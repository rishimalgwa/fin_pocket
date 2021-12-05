import 'package:fin_pocket/comman/styles.dart';
import 'package:fin_pocket/comman/theme.dart';
import 'package:fin_pocket/features/dashboard/presentation/pages/all_assets.dart';
import 'package:fin_pocket/features/dashboard/presentation/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentIndex = 0;
  List<Widget> pages = const [
    HomePage(),
    AllAssets(),
    SizedBox(),
    HomePage(),
    HomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          backgroundColor: buttonGreen,
          child: const Icon(FontAwesomeIcons.plus),
          onPressed: () {
            showBottomSheet();
          }),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: white,
        elevation: 0,
        selectedItemColor: buttonBlue,
        unselectedItemColor: grey,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          if (index != 2) {
            setState(() {
              currentIndex = index;
            });
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.chart_bar,
            ),
            label: "Assets",
          ),
          BottomNavigationBarItem(icon: SizedBox(), label: ''),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.history,
            ),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.user,
            ),
            label: "Profile",
          ),
        ],
      ),
      body: pages[currentIndex],
    );
  }

  showBottomSheet() {
    showModalBottomSheet(
        backgroundColor: white,
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          topLeft: Radius.circular(10),
        )),
        builder: (context) {
          return const AddAssetBottomSheet();
        });
  }
}

class AddAssetBottomSheet extends StatelessWidget {
  const AddAssetBottomSheet({
    Key? key,
  }) : super(key: key);

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
                                // controller: _messagingController,
                                keyboardType: TextInputType.name,
                                decoration: textfieldDecoration.copyWith(
                                    hintText: 'Name')),
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
                      MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          minWidth: double.infinity,
                          height: 50,
                          color: buttonBlue,
                          child: Text(
                            'Add ',
                            style: labelTextStyle.copyWith(color: white),
                          ),
                          onPressed: () {})
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
