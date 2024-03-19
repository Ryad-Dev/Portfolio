import 'package:portfolio/responsive.dart';
import 'package:portfolio/utils.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterClass extends StatefulWidget {
  const FooterClass({
    Key? key,
  }) : super(key: key);

  @override
  State<FooterClass> createState() => _FooterClassState();
}

class _FooterClassState extends State<FooterClass> {
  final socialButtons = <String>[
    AppAssets.facebook,
    AppAssets.twitter,
    AppAssets.linkedIn,
    AppAssets.insta,
    AppAssets.github,
  ];

  var socialBI;

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
        /*  Text(
            "Intégrations",
            style: AppTextStyles.normalStyle(
              color: AppColors.blackColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Tous droits réservés.",
            style: AppTextStyles.normalStyle(
                color: AppColors.blackColor, fontSize: 18),
          ),
          Text(
            "Tous droits réservés.",
            style: AppTextStyles.normalStyle(
                color: AppColors.blackColor, fontSize: 18),
          ),
          Text(
            "Tous droits réservés.",
            style: AppTextStyles.normalStyle(
                color: AppColors.blackColor, fontSize: 18),
          ),
          Text(
            "Intégrations",
            style: AppTextStyles.normalStyle(
              color: AppColors.blackColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Tous droits réservés.",
            style: AppTextStyles.normalStyle(
                color: AppColors.blackColor, fontSize: 18),
          ),
          Text(
            "Tous droits réservés.",
            style: AppTextStyles.normalStyle(
                color: AppColors.blackColor, fontSize: 18),
          ),
          Text(
            "Tous droits réservés.",
            style: AppTextStyles.normalStyle(
                color: AppColors.blackColor, fontSize: 18),
          ),
          Text(
            "Intégrations",
            style: AppTextStyles.normalStyle(
              color: AppColors.blackColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Tous droits réservés.",
            style: AppTextStyles.normalStyle(
                color: AppColors.blackColor, fontSize: 18),
          ),
          Text(
            "Tous droits réservés.",
            style: AppTextStyles.normalStyle(
                color: AppColors.blackColor, fontSize: 18),
          ),
          Text(
            "Tous droits réservés.",
            style: AppTextStyles.normalStyle(
                color: AppColors.blackColor, fontSize: 18),
          ),
          Image.asset(
            AppAssets.logobleu,
            width: 175,
            height: 42,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              buildSocialButton(
                  asset: AppAssets.facebook,
                  radiusColor: const Color.fromRGBO(66, 103, 178, 1),
                  Url: AppLink.facebook),
              const SizedBox(
                width: 5,
              ),
              buildSocialButton(
                  asset: AppAssets.linkedIn,
                  radiusColor: const Color.fromRGBO(7, 98, 200, 1),
                  Url: AppLink.linkedln),
              const SizedBox(
                width: 5,
              ),
              buildSocialButton(
                  asset: AppAssets.insta,
                  radiusColor: const Color.fromRGBO(253, 36, 76, 1),
                  Url: AppLink.instagram)
            ],
          ),
          const Divider(
            thickness: 2,
          ),*/
          Container(
           // height: 20,
            width: MediaQuery.of(context).size.width,
            color: AppColors.whiteColor,
            child: Center(
              child: Text(
                "© 2023 portfolio   Tous droits réservés.",
                style: AppTextStyles.normalStyle(
                    color: AppColors.blackColor, fontSize: 18),
              ),
            ),
          )
        ],
      ),
      tablet: Column(
        children: [
         /* Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            //margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            height: 300,
            width: MediaQuery.of(context).size.width,
            color: AppColors.whiteColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset(
                      AppAssets.logobleu,
                      width: 175,
                      height: 42,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        buildSocialButton(
                            asset: AppAssets.facebook,
                            radiusColor: const Color.fromRGBO(66, 103, 178, 1),
                            Url: AppLink.facebook),
                        const SizedBox(
                          width: 5,
                        ),
                        buildSocialButton(
                            asset: AppAssets.linkedIn,
                            radiusColor: const Color.fromRGBO(7, 98, 200, 1),
                            Url: AppLink.linkedln),
                        const SizedBox(
                          width: 5,
                        ),
                        buildSocialButton(
                            asset: AppAssets.insta,
                            radiusColor: const Color.fromRGBO(253, 36, 76, 1),
                            Url: AppLink.instagram)
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Intégrations",
                      style: AppTextStyles.normalStyle(
                        color: AppColors.blackColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Tous droits réservés.",
                      style: AppTextStyles.normalStyle(
                          color: AppColors.blackColor, fontSize: 18),
                    ),
                    Text(
                      "Tous droits réservés.",
                      style: AppTextStyles.normalStyle(
                          color: AppColors.blackColor, fontSize: 18),
                    ),
                    Text(
                      "Tous droits réservés.",
                      style: AppTextStyles.normalStyle(
                          color: AppColors.blackColor, fontSize: 18),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Help center",
                      style: AppTextStyles.normalStyle(
                        color: AppColors.blackColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Tous droits réservés.",
                      style: AppTextStyles.normalStyle(
                          color: AppColors.blackColor, fontSize: 18),
                    ),
                    Text(
                      "Tous droits réservés.",
                      style: AppTextStyles.normalStyle(
                          color: AppColors.blackColor, fontSize: 18),
                    ),
                    Text(
                      "Tous droits réservés.",
                      style: AppTextStyles.normalStyle(
                          color: AppColors.blackColor, fontSize: 18),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "About",
                      style: AppTextStyles.normalStyle(
                        color: AppColors.blackColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Tous droits réservés.",
                      style: AppTextStyles.normalStyle(
                          color: AppColors.blackColor, fontSize: 18),
                    ),
                    Text(
                      "Tous droits réservés.",
                      style: AppTextStyles.normalStyle(
                          color: AppColors.blackColor, fontSize: 18),
                    ),
                    Text(
                      "Tous droits réservés.",
                      style: AppTextStyles.normalStyle(
                          color: AppColors.blackColor, fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 2,
          ),*/
          Container(
            // height: 70,
            width: MediaQuery.of(context).size.width,
            color: AppColors.whiteColor,
            child: Center(
              child: Text(
                "© 2023 portfolio   Tous droits réservés.",
                style: AppTextStyles.normalStyle(
                    color: AppColors.blackColor, fontSize: 18),
              ),
            ),
          )
        ],
      ),
      desktop: Column(
        children: [
          Container(
            //height: 30,
            width: MediaQuery.of(context).size.width,
            color: AppColors.whiteColor,
            child: Center(
              child: Text(
                "© 2023 portfolio   Tous droits réservés.",
                style: AppTextStyles.normalStyle(
                    color: AppColors.blackColor, fontSize: 18),
              ),
            ),
          )
        ],
      ),
      paddingWidth: 0,
      bgColor: AppColors.whiteColor,
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

  /*Ink buildSocialButton({required String asset}) {
    return Ink(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(width: 2.0),
        color: AppColors.bgColor,
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(6),
      child: Image.asset(
        asset,
        width: 10,
        height: 12,
        color: AppColors.bgColor,
        // fit: BoxFit.fill,
      ),
    );
  }*/
}
