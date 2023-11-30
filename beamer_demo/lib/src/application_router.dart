import 'package:beamer_demo/src/widget/page/a_page.dart';
import 'package:beamer_demo/src/widget/page/b_page.dart';
import 'package:beamer/beamer.dart';

class ApplicationRouter {
  final BeamerDelegate delegate = BeamerDelegate(
    locationBuilder: RoutesLocationBuilder(
      routes: {
        '/a_page': (context, state, data) => const APage(),
        '/b_page': (context, state, data) => BPage(),
      },
    ),
  );
}
