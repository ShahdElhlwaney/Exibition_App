import 'package:exibition/Features/Auth/Presentation/Manager/WhoAreYouCubit/who_are_you_cubit.dart';
import 'package:exibition/Features/Auth/Presentation/Views/exhibitor_view.dart';
import 'package:exibition/Features/Auth/Presentation/Views/invite_visitors_view.dart';
import 'package:exibition/Features/Auth/Presentation/Views/qr_code_view.dart';
import 'package:exibition/Features/Auth/Presentation/Views/success_inviting_view.dart';
import 'package:exibition/Features/Auth/Presentation/Views/thanks_exhibitor_view.dart';
import 'package:exibition/Features/Auth/Presentation/Views/thanks_view.dart';
import 'package:exibition/Features/Home/Presentation/Manager/AboutOrSpeakersCubit/about_or_speakers_cubit.dart';
import 'package:exibition/Features/Home/Presentation/Views/all_categories_view.dart';
import 'package:exibition/Features/Home/Presentation/Views/bottom_nav_bar_view.dart';
import 'package:exibition/Features/Home/Presentation/Views/home_view.dart';
import 'package:exibition/Features/Home/Presentation/Views/notifications_view.dart';
import 'package:exibition/Features/Home/Presentation/Views/session_details_view.dart';
import 'package:exibition/Features/Home/Presentation/Views/speaker_details_view.dart';
import 'package:exibition/Features/Navigation/Presentation/Views/advanced_search_view.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/Widgets/on_boarding_screens.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/on_boarding_view1.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/on_boarding_view2.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/on_boarding_view3.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/on_boarding_view4.dart';
import 'package:exibition/Features/Auth/Presentation/Views/create_account_view.dart';
import 'package:exibition/Features/Auth/Presentation/Views/interests_user_view.dart';
import 'package:exibition/Features/Auth/Presentation/Views/login_view.dart';
import 'package:exibition/Features/Auth/Presentation/Views/who_are_you_view.dart';
import 'package:exibition/Features/Settings/Presentation/Manager/BookMarksCubit/bookmarks_cubit.dart';
import 'package:exibition/Features/Settings/Presentation/Views/account_information_view.dart';
import 'package:exibition/Features/Settings/Presentation/Views/change_password_view.dart';
import 'package:exibition/Features/Settings/Presentation/Views/language_view.dart';
import 'package:exibition/Features/Settings/Presentation/Views/my_bookmarks_view.dart';
import 'package:exibition/Features/Settings/Presentation/Views/my_interests_view.dart';
import 'package:exibition/Features/Settings/Presentation/Views/my_profile_view.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  static const kHomeView='/homeView';
  static const kAllCategoriesView='/allCategoriesView';
  static const kNavigationView='/navigationView';
  static const kSettingView='/settingView';
  static const kBottomNavView='/bottomNavView';
  static const kSessionDetailsView='/sessionDetailsView';
  static const kSpeakerDetailsView='/speakerDetailsView';
  static const kNotificationsView='/notificationsView';
  static const kMyProfileView='/myProfileView';
  static const kMyAgendaView='/myAgendaView';
  static const kAccountInformationView='/accountInformationView';
  static const kChangePasswordView='/changePasswordView';
  static const kLanguageView='/languageView';
  static const kMyInterestsView='/myInterestsView';
  static const kMyBookMarksView='/myBookMarksViewView';
  static const kExhibitorView='/exhibitorView';
  static const kQrCodeView='/qrCodeView';
  static const kThanksExhibitorView='/thanksExhibitorView';
  static const kInviteVisitorsView='/inviteVisitorsView';
  static const kSuccessInvitingView='/successInvitingView';
  static const kAdvancedSearchView='/advancedSearchView';

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
          builder:(context,state )=>BlocProvider(create: ( context)=>WhoAreYouCubit(),
          child: const WhoAreYouView())
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
      GoRoute(path: kThanksView,
          builder:(context,state )=>const ThanksView()
      ),
     GoRoute(path: kHomeView,
          builder:(context,state )=>const HomeView()
      ),
      GoRoute(path: kAllCategoriesView,
          builder:(context,state )=>const AllCategoriesView()
      ),
      GoRoute(path: kBottomNavView,
          builder:(context,state )=>BlocProvider(create: ( context)=>AboutOrSpeakersCubit(),
          child: const BottomNavBarView())
      ),
     GoRoute(path: kSessionDetailsView,
          builder:(context,state )=>BlocProvider(create: ( context)=>AboutOrSpeakersCubit(),
          child: const SessionDetailsView())
      ),
     GoRoute(path: kNotificationsView,
          builder:(context,state )=>const NotificationsView()
      ),
      GoRoute(path: kSpeakerDetailsView,
          builder:(context,state )=>const SpeakerDetailsView()
      ),
      GoRoute(path: kMyProfileView,
          builder:(context,state )=>const MyProfileView()
      ),
      GoRoute(path: kAccountInformationView,
          builder:(context,state )=>const AccountInformationView()
      ),
      GoRoute(path: kChangePasswordView,
          builder:(context,state )=>const ChangePasswordView()
      ),
      GoRoute(path: kLanguageView,
          builder:(context,state )=>const LanguageView()
      ),

      GoRoute(path: kMyInterestsView,
          builder:(context,state )=>const MyInterestsView()
      ),
      GoRoute(path: kMyBookMarksView,
          builder:(context,state )
          =>BlocProvider(create: ( context)=>BookmarksCubit(),
          child: const MyBookMarksView())
      ),
      GoRoute(path: kExhibitorView,
          builder:(context,state )=>const ExhibitorView()
      ),
      GoRoute(path: kThanksExhibitorView,
          builder:(context,state )=>const ThanksExhibitorView()
      ),
      GoRoute(path: kInviteVisitorsView,
          builder:(context,state )=>const InviteVisitorsView()
      ),
      GoRoute(path: kSuccessInvitingView,
          builder:(context,state )=>const SuccessInvitingView()
      ),
      GoRoute(path: kQrCodeView,
          builder:(context,state )=>const QrCodeView()
      ),

      GoRoute(path: kAdvancedSearchView,
          builder:(context,state )=>const AdvancedSearchView()
      ),
    ]
  );
}