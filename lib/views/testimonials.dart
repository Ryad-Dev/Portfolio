import 'package:animate_do/animate_do.dart';
import 'package:portfolio/utils.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';

class Testimonials extends StatefulWidget {
  const Testimonials({Key? key}) : super(key: key);

  @override
  State<Testimonials> createState() => _TestimonialsState();
}

class _TestimonialsState extends State<Testimonials> {
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
               content: "Le contenu de l'avis",
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
               content: "Le contenu de l'avis",
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
               content: "Le contenu de l'avis",
              asset: AppAssets.analyst,
              hover: isDataAnalyst,
            ),
          )
        ],
      ),
      tablet:  Column(
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
               content: "Le contenu de l'avis",
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
               content: "Le contenu de l'avis",
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
               content: "Le contenu de l'avis",
              asset: AppAssets.analyst,
              hover: isDataAnalyst,
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
                  asset: AppAssets.user,
                  hover: isApp,
                   content: "Le contenu de l'avis",
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
                  asset: AppAssets.user,
                  hover: isGraphic,
                   content: "Le contenu de l'avis",
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
                  asset: AppAssets.user,
                  hover: isDataAnalyst, 
                  content: "Le contenu de l'avis",
                ),
              )
            ],
          ),
        ],
      ),
      paddingWidth: size.width * 0.04,
      bgColor: AppColors.whiteColor,
    );
  }

  FadeInDown buildMyServicesText() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child:RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          
          text:
              "Témoignages",
          style: AppTextStyles.normalStyle(
              fontSize: 30.0,
              color: AppColors.blackColor,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  AnimatedContainer buildAnimatedContainer({
    required String title,
    required String content,
    required String asset,
    required bool hover,
    double width = 250,
    double hoverWidth = 260,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: hover ? hoverWidth : width,
      height: hover ? 300 : 290,
     // alignment: Alignment.center,
      transform: hover ? onHoverActive : onHoverRemove,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(15),
       border: Border.all()
      /*  boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            spreadRadius: 4.0,
            blurRadius: 4.5,
            offset: Offset(3.0, 4.5),
          )
        ],*/
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 25,
            child: Image.asset(
            asset,
            width: 35,
            height: 35,
          ),
          ),
          
          Constants.sizedBox(height: 10.0),
          Text(
            title
            ,
            style: AppTextStyles.normalStyle(fontSize: 15.0,color: AppColors.blackColor,fontWeight: FontWeight.bold),
            //textAlign: TextAlign.start,
          ),
          Constants.sizedBox(height: 40.0),
          Text(content,
            style: AppTextStyles.normalStyle(fontSize: 15.0,color: AppColors.blackColor),
            //textAlign: TextAlign.start,
          ),
         
        ],
      ),
    );
  }
}
