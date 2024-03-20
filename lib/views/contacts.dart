import 'package:animate_do/animate_do.dart';
import 'package:portfolio/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';

class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
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
          SizedBox(height: 30,),
          ContactsContainer(context),
         
        ],
      ),
      tablet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          SizedBox(height: 30,),
          ContactsContainer(context),
          
        ],
      ),
      desktop: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          SizedBox(height: 30,),
          ContactsContainer(context),
        ],
      ),
      paddingWidth: size.width * 0.04,
      bgColor: AppColors.whiteColor,
    );
  }

  FadeInDown buildMyServicesText() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1000),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: "Contact Me",
          style: AppTextStyles.normalStyle(
              fontSize: 30.0,
              color: AppColors.blackColor,
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

ContactsContainer(BuildContext context) {
  return Container(
    width: 300,
    padding: EdgeInsets.all(15),
    decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(20)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Icon(
          CupertinoIcons.envelope_circle_fill,
          color: AppColors.blackColor,
          size: 30,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          'contactryaddev@gmail.com',
          style: AppTextStyles.normalStyle(fontSize: 17.0,color: AppColors.blackColor),
        ),
       
      ],
    ),
  );
}
