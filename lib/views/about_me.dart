import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:portfolio/utils.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Responsive(
      mobile: Column(
        children: [
          buildMyProjectsText(),
          Constants.sizedBox(height: 35.0),
          buildProfilePicture(),
          SizedBox(height: 50,),
          buildAboutMeContents2(),
          
          
        ],
      ),
      tablet: Column(

        children: [
          buildMyProjectsText(),
          SizedBox(height: 50,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildProfilePicture(),
              Constants.sizedBox(width: 25.0),
              Expanded(child: buildAboutMeContents2())
            ],
          ),
        ],
      ),
      desktop: SizedBox(
        child: Column(
          children: [
            buildMyProjectsText(),
            SizedBox(height: 50,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
                buildProfilePicture(),
                Constants.sizedBox(width: 25.0),
                Expanded(child: buildAboutMeContents())
              ],
            ),
          ],
        ),
      ),
      paddingWidth: size.width * 0.1,
      bgColor: Colors.transparent,
    );
  }
  FadeInDown buildMyProjectsText() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1000),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text:
              "About Me",
          style: AppTextStyles.normalStyle(
              fontSize: 30.0,
              color: AppColors.blackColor,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
  FadeInRight buildProfilePicture() {
    return FadeInRight(
      duration: const Duration(milliseconds: 1200),
      child: Image.asset(
        AppAssets.profile2,
        height: 300,
        width: 300,
      ),
    );
  }

  Column buildAboutMeContents() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AboutMeContainer(CupertinoIcons.checkmark_seal_fill,"Expérience","2 ans de'experience"),
            AboutMeContainer(CupertinoIcons.person_2_fill,"Education","Génie Logiciel"),
          ],
        ),
        Constants.sizedBox(height: 20.0),
        FadeInLeft(
          duration: const Duration(milliseconds: 1600),
          child: Text(
            "Développeur mobile passionné avec 2 ans d'expérience et une formation en génie logiciel, je maîtrise Flutter ,Dart ,Firebase ,MySql pour créer des applications mobile et sites web natives fluides. Habitué à VsCode et Xcode, je m'adapte vite. Plus qu'un développeur, je suis un solutionneur. Je traduis vos idées en applications mobiles sur mesure, performantes et stables grâce à mon sens du détail. Ensemble, propulsons votre entreprise vers le succès mobile !",
            style: AppTextStyles.normalStyle(color: AppColors.blackColor),
          ),
        ),
      ],
    );
  }
  Column buildAboutMeContents2() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          children: [
             AboutMeContainer(CupertinoIcons.checkmark_seal_fill,"Expérience","2 ans de'experience"),
              Constants.sizedBox(height: 10.0),
            AboutMeContainer(CupertinoIcons.person_2_fill,"Education","Licence en Génie Logiciel"),
          ],
        ),
        Constants.sizedBox(height: 10.0),
        FadeInLeft(
          duration: const Duration(milliseconds: 1600),
          child: Text(
            "Développeur mobile passionné avec 2 ans d'expérience et une formation en génie logiciel, je maîtrise Flutter ,Dart ,Firebase ,MySql pour créer des applications mobile et sites web natives fluides. Habitué à VsCode et Xcode, je m'adapte vite. Plus qu'un développeur, je suis un solutionneur. Je traduis vos idées en applications mobiles sur mesure, performantes et stables grâce à mon sens du détail. Ensemble, propulsons votre entreprise vers le succès mobile !",
            style: AppTextStyles.normalStyle(color: AppColors.blackColor),
          ),
        ),
      ],
    );
  }

  AboutMeContainer(IconData icon ,String title,String desc) {
  return Container(
    width: 300,
    padding: EdgeInsets.all(15),
    decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(20)),
     child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: AppColors.blackColor,
          size: 30,
        ),
        Text(
          title,
          style: AppTextStyles.normalStyle(fontSize: 17.0,color: AppColors.blackColor,fontWeight: FontWeight.bold),
        ),
        Text(
          desc,
          style: AppTextStyles.normalStyle(fontSize: 17.0,color: AppColors.blackColor),
        ),
      ],
     ),
  );
}

}
