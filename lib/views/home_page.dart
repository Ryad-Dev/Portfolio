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
         height: 500,
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
          "Mobile Developpeur.",
          style: AppTextStyles.normalStyle(
            color: AppColors.blackColor,
            fontSize: 22,
          ),
        ),
        Constants.sizedBox(height: 22.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppButtons.buildMaterialButton(onTap: () {}, buttonName: 'Download CV'),
            Constants.sizedBox(width: 25.0),
            AppButtons.buildMaterialButton2(onTap: () {}, buttonName: 'Contactez moi')
          ],
        ),
        Constants.sizedBox(height: 22.0),
        Row(children: [
          buildSocialButton(asset: AppAssets.github, radiusColor: AppColors.blackColor, Url:""),
          Constants.sizedBox(width: 10.0),
          buildSocialButton(asset: AppAssets.linkedIn, radiusColor: AppColors.primaryColor, Url:"https://www.linkedin.com/in/ryad-soule-chabi/"),
          Constants.sizedBox(width: 10.0),
          buildSocialButton(asset: AppAssets.insta, radiusColor: AppColors.primaryColor, Url:"https://www.instagram.com/ryad.sc/")
        ],)
        
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
        radius: 20,
        backgroundColor: radiusColor,
        child: Image.asset(
          asset,
          width: 20,
          height: 20,
          color: AppColors.whiteColor,
          // fit: BoxFit.fill,
        ),
      ),
    );
  }

  Future<void> _launchUrl(Url) async {
    final Uri url = Uri.parse(Url);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
