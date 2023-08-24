


import 'package:exibition/Features/OnBoarding/Presentation/Views/Widgets/on_boarding_screens.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/on_boarding_view1.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/on_boarding_view2.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/on_boarding_view3.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/on_boarding_view4.dart';
import 'package:exibition/Features/Person/Presentation/Views/create_account_view.dart';
import 'package:exibition/Features/Person/Presentation/Views/interests_user_view.dart';
import 'package:exibition/Features/Person/Presentation/Views/login_view.dart';
import 'package:exibition/Features/Person/Presentation/Views/thanks_view.dart';
import 'package:exibition/Features/Person/Presentation/Views/who_are_you_view.dart';
import 'package:go_router/go_router.dart';

import '../../Features/Splash/Presentation/Views/splash_view.dart';

class AppRouter{
  static const kOnBoardingView1='/onBoardingView1';
  static const kOnBoardingView2='/onBoardingView2';
  static const kOnBoardingView3='/onBoardingView3';
  static const kOnBoardingView4='/onBoardingView4';
  static const kOnBoardingView='/OnBoardingView';
  static const kWhoAreYouView='/WhoAreYouView';
  static const kCreateAccountView='/createAccountView';
  static const kInterestsUserView='/interestsUserView';
  static const kThanksView='/thanksView';
  static const kLoginView='/loginView';


  static final routes=GoRouter(
    routes: [
      GoRoute(path: '/',
        builder:(context,state )=>const SplashView()
      ),
      GoRoute(path: kOnBoardingView1,
          builder:(context,state )=>const OnBoardingView1()
      ),
      GoRoute(path: kOnBoardingView2,
          builder:(context,state )=>const OnBoardingView2()
      ),
      GoRoute(path: kOnBoardingView3,
          builder:(context,state )=>const OnBoardingView3()
      ),
      GoRoute(path: kOnBoardingView4,
          builder:(context,state )=>const OnBoardingView4()
      ),
      GoRoute(path: kOnBoardingView,
          builder:(context,state )=>const OnBoarding()
      ),
      GoRoute(path: kWhoAreYouView,
          builder:(context,state )=>const WhoAreYouView()
      ),
      GoRoute(path: kCreateAccountView,
          builder:(context,state )=>const CreateAccountView()
      ),
      GoRoute(path: kInterestsUserView,
          builder:(context,state )=>const InterestsUserView()
      ),
      GoRoute(path: kLoginView,
          builder:(context,state )=>const LoginView()
      ),
    ]
  );
}