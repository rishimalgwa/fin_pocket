import 'package:fin_pocket/comman/theme/styles.dart';
import 'package:fin_pocket/comman/theme/theme.dart';
import 'package:fin_pocket/features/dashboard/presentation/pages/all_assets.dart';
import 'package:fin_pocket/features/dashboard/presentation/pages/assest_search.dart';
import 'package:fin_pocket/features/dashboard/presentation/pages/home_page.dart';
import 'package:fin_pocket/features/dashboard/presentation/widgets/add_asset_bottomsheet.dart';
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
