
import 'package:portfolio/utils.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/views/about_me.dart';
import 'package:portfolio/views/features.dart';
import 'package:portfolio/views/footer_class.dart';
import 'package:portfolio/views/home_page.dart';
import 'package:portfolio/views/services.dart';
import 'package:portfolio/views/testimonials.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

final ItemScrollController _itemScrollController = ItemScrollController();
final ItemPositionsListener itemPositionsListener =
    ItemPositionsListener.create();
final ScrollOffsetListener scrollOffsetListener = ScrollOffsetListener.create();
final onMenuHover = Matrix4.identity()..scale(1.0);
final menuItems = <String>[
  'Accueil',
  'A Propos',
  'Projets',
  'Avis',
  'Contacts',
//'Portfolio',
];

const screensList = <Widget>[
  Header(),
  HomePage(),
  AboutMe(),
  Services(),
  Testimonials(),
  Features(),
 //FooterClass(),
];

final yourScrollController = ScrollController();

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      /*  appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        toolbarHeight: 90,
        titleSpacing: 40,
        elevation: 0,
        title: 
      ),*/
      body: Scrollbar(
        trackVisibility: true,
        thumbVisibility: true,
        thickness: 8,
        interactive: true,
        controller: yourScrollController,
        child: ScrollablePositionedList.builder(
          itemCount: screensList.length,
          itemScrollController: _itemScrollController,
          itemPositionsListener: itemPositionsListener,
          scrollOffsetListener: scrollOffsetListener,
          itemBuilder: (context, index) {
            return screensList[index];
          },
        ),
      ),
    );
  }
}

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  var menuIndex = 0;

  Future scrollTo({required int index}) async {
    _itemScrollController.scrollTo(
        index: index+1,
        duration: const Duration(seconds: 2),
        curve: Curves.fastLinearToSlowEaseIn);
    /*  .whenComplete(() {
      setState(() {
        menuIndex = index+1 ;
      });
    });*/
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 1100) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                width: 40,
              ),
        

              const Text("Ryad Dev",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              const Spacer(),
           
              PopupMenuButton(
                icon: Icon(
                  Icons.menu_sharp,
                  size: 32,
                  color: AppColors.blackColor,
                ),
                color: AppColors.whiteColor,
                position: PopupMenuPosition.under,
                constraints: BoxConstraints.tightFor(width: size.width * 0.9),
                itemBuilder: (BuildContext context) => menuItems
                    .asMap()
                    .entries
                    .map(
                      (e) => PopupMenuItem(
                        textStyle: AppTextStyles.headerTextStyle(),
                        onTap: () {
                          scrollTo(index: e.key);
                        },
                        child: Text(
                          e.value,
                          style: AppTextStyles.headerTextStyle(
                              color: AppColors.blackColor),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          );
        } else {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 100,
                ),
                const Text("Ryad Dev",style: TextStyle(fontSize: 20,),),
                const Spacer(),
                SizedBox(
                  height: 19,
                  child: ListView.separated(
                    itemCount: menuItems.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, child) =>
                        Constants.sizedBox(width: 25),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          scrollTo(index: index );
                        },
                        borderRadius: BorderRadius.circular(100),
                        onHover: (value) {
                          setState(() {
                            if (value) {
                              menuIndex = index;
                            } else {
                              menuIndex = 0;
                            }
                          });
                        },
                        child: buildNavBarAnimatedContainer(
                            index),
                      );
                    },
                  ),
                ),
               
                Constants.sizedBox(width: 120),
              ],
            ),
          );
        }
      },
    );
  }

  Text buildNavBarAnimatedContainer(int index) {
    return Text(
      menuItems[index],
      style: AppTextStyles.headerTextStyle(
          color: AppColors.blackColor),
    );
  }

  /* AnimatedContainer buildNavBarAnimatedContainer(int index, bool hover) {
    return AnimatedContainer(
      alignment: Alignment.center,
      width: hover ? 80 : 75,
      duration: const Duration(milliseconds: 200),
      transform: hover ? onMenuHover : null,
      child: Text(
        menuItems[index],
        style: AppTextStyles.headerTextStyle(
            color: hover ? AppColors.themeColor : AppColors.whiteColor),
      ),
    );
  }*/
}
