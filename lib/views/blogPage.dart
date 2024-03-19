import 'package:portfolio/responsive.dart';
import 'package:portfolio/utils.dart';
import 'package:flutter/material.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({super.key});

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  final int _numPages = 10;
  final int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    var pages = List.generate(
      _numPages,
      (index) => Column(
        children: [
          Text(
            "Page ${index + 1}",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Contenu()
        ],
      ),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Responsive(
          mobile: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Blog portfolio",
                  style: AppTextStyles.normalStyle(
                      color: AppColors.blackColor, fontSize: 80),
                ),
                const SizedBox(height: 16.0),
                Contenu(),
              ],
            ),
          ),
          tablet: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Blog portfolio",
                  style: AppTextStyles.normalStyle(
                      color: AppColors.blackColor, fontSize: 80),
                ),
                const SizedBox(height: 16.0),
                pages[_currentPage]
              ],
            ),
          ),
          desktop: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 350, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Blog portfolio",
                  style: AppTextStyles.normalStyle(
                      color: AppColors.blackColor, fontSize: 80),
                ),
                const SizedBox(height: 16.0),
                //Contenu()
                SizedBox(
                  width: 700,
                 // height: 2000,
                  child: Contenu()
                ),
              ],
            ),
          ),
          paddingWidth: 0,
          bgColor: AppColors.whiteColor,
        ),
      ),
     /* bottomNavigationBar: Card(
        margin: EdgeInsets.zero,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 500, vertical: 10),
          child: NumberPaginator(
            // by default, the paginator shows numbers as center content
            numberPages: _numPages,
            onPageChange: (int index) {
              setState(() {
                _currentPage = index;
              });
            },
          ),
        ),
      ),*/
    );
  }
}



class Contenu extends StatelessWidget {
  Contenu({
    super.key,
  });
  final List articles = [
    {'title': "De nouvelles façons d’utiliser les statuts WhatsApp",'image': AppAssets.logobleu, 'contenu': 'Les statuts sont un moyen populaire de partager des informations éphémères avec vos proches sur WhatsApp. Ils disparaissent au bout de 24 heures et peuvent contenir des photos, des vidéos, des GIF, du texte et plus encore. Tout comme vos discussions personnelles et vos appels, votre statut WhatsApp est protégé par le chiffrement de bout en bout afin que vous puissiez le partager de façon sûre et privée.\nVous ne voulez peut-être pas partager tous vos statuts avec tous vos contacts. Nous vous permettons de modifier vos paramètres de confidentialité statut par statut afin que vous puissiez choisir qui peut voir chaque mise à jour. L’audience que vous avez sélectionnée en dernier sera enregistrée et utilisée par défaut pour votre prochain statut.'},
    {'title': 'Article 2','image': AppAssets.insta, 'contenu': 'contenu de l\'article 2'},
    {'title': 'Article 3','image': AppAssets.logobleu, 'contenu': 'contenu de l\'article 3'},
    // Ajoutez d'autres articles au besoin
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          itemCount: articles.length,
          itemBuilder: (BuildContext context, int index) {
            return ArticleBlog(
              title: articles[index]['title'] ?? '',
              image: articles[index]['image'] ?? '',
              contenu: articles[index]['contenu'] ?? '',
            );
          },
        ),
      ],
    );
  }
}

class ArticleBlog extends StatelessWidget {
  String title,image, contenu;
  ArticleBlog({
    super.key,
    required this.title,
    required this.image,
    required this.contenu,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: AppTextStyles.normalStyle(
            color: AppColors.primaryColor,
            fontSize: 30,
          ),
        ),
        const SizedBox(height: 20,),
        Image.asset(image,fit: BoxFit.fill,),
        const SizedBox(height: 20,),
        Text(
          contenu,
          style: AppTextStyles.normalStyle(
            color: AppColors.blackColor,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 150,)
      ],
    );
  }
}
