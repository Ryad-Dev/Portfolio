import 'package:portfolio/utils.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Responsive(
      mobile: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppAssets.profile1,
            width: 350,
            height: 350,
            fit: BoxFit.fill,
          ),
          Constants.sizedBox(height: 25.0),
          buildHomePersonalInfo(size),
        ],
      ),
      tablet: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppAssets.profile1,
            width: 350,
            height: 350,
            fit: BoxFit.fill,
          ),
          Constants.sizedBox(height: 25.0),
          buildHomePersonalInfo(size),
        ],
      ),
      desktop: SizedBox(
        height: 600,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AppAssets.profile1,
                  width: 350,
                  //color: Colors.blue,
                  height: 350,
                  fit: BoxFit.fill),
              Constants.sizedBox(width: 200.0),
              buildHomePersonalInfo(size)
            ],
          ),
        ),
      ),
      paddingWidth: size.width * 0.04,
      bgColor: Colors.transparent,
    );
  }

  Column buildHomePersonalInfo(Size size) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Ryad Dev",
          style: AppTextStyles.normalStyle(
            color: AppColors.blackColor,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          // style: AppTextStyles.montserratStyle(color: Colors.white),
        ),
        Constants.sizedBox(height: 15.0),
        Text(
          "Mobile Developper I Android IOS I Flutter & Dart ",
          style: AppTextStyles.normalStyle(
            color: AppColors.blackColor,
            fontSize: 22,
          ),
        ),
        Constants.sizedBox(height: 22.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppButtons.buildMaterialButton(
                onTap: () {
                  _launchUrl(
                      "https://drive.google.com/file/d/1Gpqk0mn-cW70xILwqxovxZ9tADqgOvx0/view?usp=sharing");
                },
                buttonName: 'Download CV'),
            Constants.sizedBox(width: 25.0),
            AppButtons.buildMaterialButton2(
                onTap: () {
                  _launchUrl("mailto:contactryaddev@gmail.com");
                },
                buttonName: 'Contactez moi')
          ],
        ),
        Constants.sizedBox(height: 22.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildSocialButton(
                asset: AppAssets.github,
                radiusColor: AppColors.blackColor,
                Url: "https://github.com/Ryad-Dev"),
            Constants.sizedBox(width: 10.0),
            buildSocialButton(
                asset: AppAssets.linkedIn,
                radiusColor: AppColors.primaryColor,
                Url: "https://www.linkedin.com/in/ryad-soule-chabi/"),
            Constants.sizedBox(width: 10.0),
            buildSocialButton(
                asset: AppAssets.insta,
                radiusColor: Colors.red,
                Url: "https://www.instagram.com/ryad.sc/")
          ],
        )
      ],
    );
  }

  buildSocialButton(
      {required String asset,
      required Color radiusColor,
      required String Url}) {
    return InkWell(
      onTap: () {
        _launchUrl(Url);
      },
      child: CircleAvatar(
        radius: 25,
        backgroundColor: Color.fromARGB(255, 223, 223, 223),
        child: Image.asset(
          asset,
          width: 25,
          height: 25,
          //color: AppColors.whiteColor,
          // fit: BoxFit.fill,
        ),
      ),
    );
  }

  _launchUrl(Url) {
    final Uri url = Uri.parse(Url);
    launchUrl(url);
  }
}
