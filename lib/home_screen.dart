import 'package:flutter/material.dart';
import 'package:islamee/app_colors.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/Home';

   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<String> backgroundImageList = [
    'assets/images/background.png',
    'assets/images/hadeth_bg.png',
    'assets/images/sebha_bg.png',
    'assets/images/radio_bg.png',
    'assets/images/taj-mahal-agra-india 1.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(backgroundImageList[selectedIndex]),
        Scaffold(
          backgroundColor: Colors.transparent,
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: AppColor.primaryColor,
            ),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
                onTap: (index){
                selectedIndex = index ;
                setState(() {

                });
                } ,
                //  type: BottomNavigationBarType.fixed,
               // showUnselectedLabels: false,
                items: [
                  BottomNavigationBarItem(
                    icon: builtItemInBottomNavBar(index: 0 ,imageName: 'Vector'),
                    label: 'Quran',
                  ),BottomNavigationBarItem(
                    icon: builtItemInBottomNavBar(index: 1 ,imageName: 'book-album-svgrepo-com 1'),
                    label: 'Quran',
                  ),BottomNavigationBarItem(
                    icon: builtItemInBottomNavBar(index: 2 ,imageName: 'necklace-islam-svgrepo-com 1'),
                    label: 'Quran',
                  ),BottomNavigationBarItem(
                    icon: builtItemInBottomNavBar(index: 3 ,imageName: 'radiu'),
                    label: 'Quran',
                  ),BottomNavigationBarItem(
                    icon: builtItemInBottomNavBar(index: 4 ,imageName: 'Vectore (1)'),
                    label: 'Quran',
                  ),

                ]),
          ),
        ),
      ],
    );
  }
  Widget builtItemInBottomNavBar({required int index , required String imageName}){
    return selectedIndex == index ?
    Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(66),color: Color(0x99202020)),
      child: ImageIcon(
        AssetImage('assets/images/$imageName.png')))
        : ImageIcon(
      AssetImage('assets/images/$imageName.png'));
  }
}
