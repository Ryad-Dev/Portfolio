import 'package:animate_do/animate_do.dart';
import 'package:portfolio/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
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
              ServicesContainer(context),
              Constants.sizedBox(width: 70),
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
              "Projets",
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
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(CupertinoIcons.check_mark_circled,color: Color.fromARGB(255, 127, 243, 133),),
          const SizedBox(width: 10,),
          Text(
            'simplicité',
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
            'Productivité',
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
            'Gain de temps',
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
