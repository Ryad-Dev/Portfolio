import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle headerTextStyle({Color color = Colors.white}) {
    return TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

/*  static TextStyle montserratStyle(
      {required Color color, double fontSize = 24}) {
    return GoogleFonts.montserrat(
      color: color,
      fontWeight: FontWeight.w800,
      fontSize: fontSize,
    );
  }*/

/* static TextStyle headingStyles(
      {double fontSize = 36, Color color = Colors.white}) {
    return GoogleFonts.rubikMoonrocks(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: color,
      letterSpacing: 2,
    );
  }*/

  static TextStyle normalStyle(
      {Color color = Colors.white, double fontSize = 16,FontWeight fontWeight=FontWeight.normal}) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle comfortaaStyle() {
    return TextStyle(
        fontSize: 18, fontWeight: FontWeight.w800, color: Colors.grey);
  }
}



class Constants {
  static SizedBox sizedBox({height, width}) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}



class AppButtons {
  static MaterialButton buildMaterialButton({
    required String buttonName,
    required VoidCallback onTap,
  }) {
    return MaterialButton(
      onPressed: onTap,
      color: AppColors.blackColor,
      splashColor: AppColors.whiteColor,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20), borderSide: BorderSide.none),
      hoverColor: AppColors.blackColor.withOpacity(0.1 ),
      height: 50,
      child: Text(
        buttonName,
        style: AppTextStyles.headerTextStyle(color: AppColors.whiteColor),
      ),
    );
  }

  static MaterialButton buildMaterialButton2({
    required String buttonName,
    required VoidCallback onTap,
  }) {
    return MaterialButton(
      onPressed: onTap,
      color: AppColors.whiteColor,
      splashColor: AppColors.bgColor,
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20)),
      hoverColor: AppColors.blackColor.withOpacity(0.1 ),
      height: 50,
      child: Text(
        buttonName,
        style: AppTextStyles.headerTextStyle(color: AppColors.blackColor),
      ),
    );
  }
}

class AppAssets {
  static String logoblanc = 'assets/images/portfolio_blanc.png';
  static String logobleu = 'assets/images/portfolio_bleu.png';
  static String facebook = 'assets/images/face.png';
  static String linkedIn = 'assets/images/in.png';
  static String invoice = 'assets/images/invoice.png';
  static String insta = 'assets/images/insta.png';
  static String twitter = 'assets/images/twit.png';
  static String user = 'assets/images/avatar.webp';
  static String github = 'assets/images/git.png';
  static String profile1 = 'assets/images/1.png';
  static String profile2 = 'assets/images/home_image.png';
  static String code = 'assets/images/coding.png';
  static String brush = 'assets/images/brush-stroke.png';
  static String analyst = 'assets/images/analytics.png';
  static String work1 = 'assets/images/work1.jpg';
  static String work2 = 'assets/images/work2.jpg';
  static String share = 'assets/images/share.png';
}


class AppColors {
  static Color primaryColor = const Color(0xff4873fd);
  static Color fontColor = const Color(0xfff5f7ff);
  static Color bgColor = const Color(0xff002147);
  static Color themeColor = const Color(0xff99FFFF);
  static Color aqua = const Color(0xff007A74);
  static Color lawGreen = const Color(0xff7CFC00);
  static Color bgColor2 = const Color(0xff00416A);
  static Color robinEdgeBlue = const Color(0xff00CCCC);
  static Color whiteColor = const Color(0xffffffff);
  static Color blackColor =  const Color.fromARGB(255, 24, 24, 24);
}



class AppLink {
  static String instagram = 'https://www.instagram.com/';
  static String linkedln = 'https://www.linkedin.com/';
  static String facebook = 'https://facebook.com/';
}

////////////////////     Champs de texxt de la facture ////////////////
class FTextField extends StatelessWidget {
  String labelText;
  double width;
  TextEditingController controller;
  FTextField({
    super.key,
    required this.controller,
    required this.labelText,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 35,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.primaryColor)),
            labelStyle: TextStyle(color: AppColors.blackColor),
            labelText: labelText),
      ),
    );
  }
}