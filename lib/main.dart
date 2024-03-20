
import 'package:beamer/beamer.dart';
import 'package:portfolio/views/blogPage.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/views/landingPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
 final routerDelegate = BeamerDelegate(
    locationBuilder: BeamerLocationBuilder(
      beamLocations: [BooksLocation()],
    ),
    notFoundRedirectNamed: '/',
  );
  @override
  Widget build(BuildContext context) {
    //final PageStorageBucket bucket = PageStorageBucket();
    return MaterialApp.router(
    
      title: 'Ryad Dev | My developer Portfolio.',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: routerDelegate,
      routeInformationParser: BeamerParser(),
      backButtonDispatcher:
      BeamerBackButtonDispatcher(delegate: routerDelegate),
     /* home: PageStorage(
        bucket: bucket,
        child: const LandingPage(),
      ),*/
    );
  }
}

class BooksLocation extends BeamLocation<BeamState> {
  @override
  List<Pattern> get pathPatterns => ['/blog'];
  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    final pages = [
      const BeamPage(
        key: ValueKey('home'),
        title: 'Ryad Dev | My developer Portfolio.',
        child: LandingPage(),
      ),
      if (state.uri.pathSegments.contains('blog'))
        const BeamPage(
          key: ValueKey('blog'),
          title: 'Blog',
          child: BlogPage(),
        ),
    ];
    return pages;
  }
}
