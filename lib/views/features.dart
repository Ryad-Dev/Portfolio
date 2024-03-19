import 'package:animate_do/animate_do.dart';
import 'package:portfolio/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';
/*
class Features extends StatefulWidget {
  const Features({Key? key}) : super(key: key);

  @override
  State<Features> createState() => _FeaturesState();
}

class _FeaturesState extends State<Features> {
  bool isApp = false, isGraphic = false, isDataAnalyst = false;

  final onHoverActive = Matrix4.identity()..translate(0, -10, 0);
  final onHoverRemove = Matrix4.identity()..translate(0, 0, 0);


  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Responsive(
      mobile: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          Constants.sizedBox(height: 60.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isApp = value;
              });
            },
            child: buildAnimatedContainer(
              title: 'App Development',
              asset: AppAssets.code,
              hover: isApp,
            ),
          ),
          Constants.sizedBox(height: 24.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isGraphic = value;
              });
            },
            child: buildAnimatedContainer(
              title: 'Graphic Designing',
              asset: AppAssets.brush,
              hover: isGraphic,
            ),
          ),
          Constants.sizedBox(height: 24.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isDataAnalyst = value;
              });
            },
            child: buildAnimatedContainer(
              title: 'Digital Marketing',
              asset: AppAssets.analyst,
              hover: isDataAnalyst,
            ),
          )
        ],
      ),
      tablet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          Constants.sizedBox(height: 60.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isApp = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: 'App Development',
                  asset: AppAssets.code,
                  hover: isApp,
                ),
              ),
              Constants.sizedBox(width: 24.0),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isGraphic = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: 'Graphic Designing',
                  asset: AppAssets.brush,
                  hover: isGraphic,
                ),
              ),
            ],
          ),
          Constants.sizedBox(height: 26.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isDataAnalyst = value;
              });
            },
            child: buildAnimatedContainer(
              title: 'Digital Marketing',
              asset: AppAssets.analyst,
              hover: isDataAnalyst,
              width: 725.0,
              hoverWidth: 735.0,
            ),
          )
        ],
      ),
      desktop: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          Constants.sizedBox(height: 60.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isApp = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: 'App Development',
                  asset: AppAssets.code,
                  hover: isApp,
                ),
              ),
              Constants.sizedBox(width: 24.0),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isGraphic = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: 'Graphic Designing',
                  asset: AppAssets.brush,
                  hover: isGraphic,
                ),
              ),
              Constants.sizedBox(width: 24.0),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isDataAnalyst = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: 'Digital Marketing',
                  asset: AppAssets.analyst,
                  hover: isDataAnalyst,
                ),
              )
            ],
          ),
        ],
      ),
      paddingWidth: size.width * 0.04,
      bgColor: AppColors.primaryColor,
    );
  }

  FadeInDown buildMyServicesText() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          
          text:
              "Fonctionnalités",
          style: AppTextStyles.normalStyle(
              fontSize: 30.0,
              color: AppColors.whiteColor,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  AnimatedContainer buildAnimatedContainer({
    required String title,
    required String asset,
    required bool hover,
    double width = 350,
    double hoverWidth = 360,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: hover ? hoverWidth : width,
      height: hover ? 390 : 380,
      alignment: Alignment.center,
      transform: hover ? onHoverActive : onHoverRemove,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
      decoration: BoxDecoration(
        color: AppColors.bgColor2,
        borderRadius: BorderRadius.circular(30),
        border:
            hover ? Border.all(color: AppColors.themeColor, width: 3) : null,
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            spreadRadius: 4.0,
            blurRadius: 4.5,
            offset: Offset(3.0, 4.5),
          )
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            asset,
            width: 50,
            height: 50,
            color: AppColors.themeColor,
          ),
          Constants.sizedBox(height: 30.0),
          Text(
            title,
            //style: AppTextStyles.montserratStyle(color: Colors.white, fontSize: 22.0),
          ),
          Constants.sizedBox(height: 12.0),
          Text(
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'
            ' The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,',
            style: AppTextStyles.normalStyle(fontSize: 14.0),
            textAlign: TextAlign.center,
          ),
          Constants.sizedBox(height: 20.0),
          AppButtons.buildMaterialButton(buttonName: 'Read More', onTap: () {})
        ],
      ),
    );
  }
}
*/


class Features extends StatefulWidget {
  const Features({Key? key}) : super(key: key);

  @override
  State<Features> createState() => _FeaturesState();
}

class _FeaturesState extends State<Features> {
  bool isApp = false, isGraphic = false, isDataAnalyst = false;

  final onHoverActive = Matrix4.identity()..translate(0, -10, 0);
  final onHoverRemove = Matrix4.identity()..translate(0, 0, 0);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Responsive(
      mobile: Column(
        children: [
          buildMyServicesText(),
          Constants.sizedBox(height: 60.0),
          ServicesContainer(context),
          Constants.sizedBox(height: 24.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isDataAnalyst = value;
              });
            },
            child: buildAnimatedContainer(
              hover: isDataAnalyst,
            ),
          )
        ],
      ),
      tablet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          Constants.sizedBox(height: 60.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ServicesContainer(context),
              Constants.sizedBox(width: 40),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isGraphic = value;
                  });
                },
                child: buildAnimatedContainer(
                  hover: isGraphic,
                ),
              ),
            ],
          ),
        ],
      ),
      desktop: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          Constants.sizedBox(height: 60.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isGraphic = value;
                  });
                },
                child: buildAnimatedContainer(
                  hover: isGraphic,
                ),
              ),
                Constants.sizedBox(width: 70),
               ServicesContainer(context),
            
            ],
          ),
        ],
      ),
      paddingWidth: size.width * 0.04,
      bgColor: AppColors.primaryColor,
    );
  }

  FadeInDown buildMyServicesText() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text:
              "Fonctionnalités",
          style: AppTextStyles.normalStyle(
              fontSize: 30.0,
              color: AppColors.whiteColor,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  AnimatedContainer buildAnimatedContainer({
    required bool hover,
  }) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: hover ? 210 * 1.6 : 210 * 1.5,
        height: hover ? 297 * 1.6 : 297 * 1.5,
        alignment: Alignment.center,
        transform: hover ? onHoverActive : onHoverRemove,
        padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              spreadRadius: 1.0,
              blurRadius: 3,
              offset: Offset(3.0, 4.5),
            )
          ],
        ),
        child: Image.asset(fit: BoxFit.fill, AppAssets.invoice));
  }
}

ServicesContainer(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(CupertinoIcons.check_mark_circled,color: Color.fromARGB(255, 127, 243, 133),),
          const SizedBox(width: 10,),
          Text(
            'It is a long establishede conte at its layout.',
            style: AppTextStyles.normalStyle(fontSize: 17.0),
          ),
        ],
      ),
      Constants.sizedBox(height: 30),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(CupertinoIcons.check_mark_circled,color: Color.fromARGB(255, 127, 243, 133),),
          const SizedBox(width: 10,),
          Text(
            'It is a long establishede conte at its layout.',
            style: AppTextStyles.normalStyle(fontSize: 17.0),
          ),
        ],
      ),
      Constants.sizedBox(height: 30),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         const Icon(CupertinoIcons.check_mark_circled,color: Color.fromARGB(255, 127, 243, 133),),
         const SizedBox(width: 10,),
          Text(
            'It is a long establishede conte at its layout.',
            style: AppTextStyles.normalStyle(fontSize: 17.0),
          ),
        ],
      ),
      Constants.sizedBox(height: 30),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(CupertinoIcons.check_mark_circled,color: Color.fromARGB(255, 127, 243, 133),),
          const SizedBox(width: 10,),
          Text(
            'It is a long establishede conte at its layout.',
            style: AppTextStyles.normalStyle(fontSize: 17.0),
          ),
        ],
      ),
      Constants.sizedBox(height: 40),
      AppButtons.buildMaterialButton2(
          onTap: () {
  
          },
          buttonName: 'Créer une facture'),
          Constants.sizedBox(height: 40),
    ],
  );
}
