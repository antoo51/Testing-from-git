import 'package:get/get.dart';
import 'package:talent_dna/presentation/binding/auth_binding.dart';
import 'package:talent_dna/presentation/binding/cart_binding.dart';
import 'package:talent_dna/presentation/binding/checkout_binding.dart';
import 'package:talent_dna/presentation/binding/history_binding.dart';
import 'package:talent_dna/presentation/binding/inventory_binding.dart';
import 'package:talent_dna/presentation/binding/main_binding.dart';
import 'package:talent_dna/presentation/binding/notif_binding.dart';
import 'package:talent_dna/presentation/binding/onboarding_binding.dart';
import 'package:talent_dna/presentation/binding/splash_binding.dart';
import 'package:talent_dna/presentation/binding/survey_binding.dart';
import 'package:talent_dna/presentation/view/Cart/cart.dart';
import 'package:talent_dna/presentation/view/auth/approved.dart';

// views
import 'package:talent_dna/presentation/view/auth/create_password.dart';
import 'package:talent_dna/presentation/view/auth/forget_password.dart';
import 'package:talent_dna/presentation/view/auth/register.dart';
import 'package:talent_dna/presentation/view/auth/register_step_two.dart';
import 'package:talent_dna/presentation/view/auth/sign_in.dart';
import 'package:talent_dna/presentation/view/auth/signin_choose_type.dart';
import 'package:talent_dna/presentation/view/checkout/checkout.dart';
import 'package:talent_dna/presentation/view/dna/detail_product.dart';
import 'package:talent_dna/presentation/view/dna/talent_dna.dart';
import 'package:talent_dna/presentation/view/dna/talent_dna_with_nav.dart';
import 'package:talent_dna/presentation/view/history/history.dart';
import 'package:talent_dna/presentation/view/history/history_detail.dart';
import 'package:talent_dna/presentation/view/home/home.dart';
import 'package:talent_dna/presentation/view/home/widgets/action_list.dart';
import 'package:talent_dna/presentation/view/home/widgets/article_detail.dart';
import 'package:talent_dna/presentation/view/home/widgets/drive_list.dart';
import 'package:talent_dna/presentation/view/home/widgets/network_list.dart';
import 'package:talent_dna/presentation/view/inventory/inventory.dart';
import 'package:talent_dna/presentation/view/inventory/inventory_corporate.dart';
import 'package:talent_dna/presentation/view/main_screen/main_screen.dart';
import 'package:talent_dna/presentation/view/notif/notif.dart';
import 'package:talent_dna/presentation/view/onboarding/on_boarding.dart';
import 'package:talent_dna/presentation/view/profile/change_password.dart';
import 'package:talent_dna/presentation/view/profile/edit_profile.dart';
import 'package:talent_dna/presentation/view/profile/profile.dart';
import 'package:talent_dna/presentation/view/result/result.dart';
import 'package:talent_dna/presentation/view/splash/splash.dart';
import 'package:talent_dna/presentation/view/survey/result.dart';
import 'package:talent_dna/presentation/view/survey/survey.dart';
import 'package:talent_dna/presentation/view/transaction/transaction.dart';

class Routes {
  static get() {
    return [
      GetPage(
        name: SplashScreen.routeName,
        page: () => const SplashScreen(),
        binding: SplashBinding(),
      ),
      GetPage(
        name: OnBoardingScreen.routeName,
        page: () => const OnBoardingScreen(),
        binding: OnboardingBinding(),
      ),
      GetPage(
        name: SignInScreen.routeName,
        page: () => const SignInScreen(),
        binding: AuthBinding(),
      ),
      GetPage(
        name: SignInChooseTypeScreen.routeName,
        page: () => const SignInChooseTypeScreen(),
      ),
      GetPage(
        name: RegisterScreen.routeName,
        page: () => const RegisterScreen(),
        binding: AuthBinding(),
      ),
      GetPage(
        name: RegisterScreenStepTwo.routeName,
        page: () => const RegisterScreenStepTwo(),
        binding: AuthBinding(),
      ),
      GetPage(
        name: ForgetPasswordScreen.routeName,
        page: () => const ForgetPasswordScreen(),
      ),
      GetPage(
        name: CreatePasswordScreen.routeName,
        page: () => const CreatePasswordScreen(),
      ),
      GetPage(
        name: ProfileScreen.routeName,
        page: () => ProfileScreen(),
      ),
      GetPage(
        name: EditProfileScreen.routeName,
        page: () => const EditProfileScreen(),
        binding: AuthBinding(),
      ),
      GetPage(
        name: ChangePasswordScreen.routeName,
        page: () => const ChangePasswordScreen(),
      ),
      GetPage(
        name: DetailProductScreen.routeName,
        page: () => const DetailProductScreen(),
      ),
      GetPage(
        name: ArticleDetailScreen.routeName,
        page: () => const ArticleDetailScreen(),
      ),
      GetPage(
        name: NotifScreen.routeName,
        page: () => const NotifScreen(),
        binding: NotifBinding(),
      ),
      GetPage(
        name: CartScreen.routeName,
        page: () => const CartScreen(),
        binding: CartBinding(),
      ),
      GetPage(
        name: CheckoutScreen.routeName,
        page: () => const CheckoutScreen(),
        binding: CheckoutBinding(),
      ),
      GetPage(
        name: ApprovedScreen.routeName,
        page: () => const ApprovedScreen(),
      ),
      GetPage(
        name: TransactionSuccessScreen.routeName,
        page: () => const TransactionSuccessScreen(),
      ),
      GetPage(
        name: DriveDetailScreen.routeName,
        page: () => const DriveDetailScreen(),
      ),
      GetPage(
        name: NetworkDetailScreen.routeName,
        page: () => const NetworkDetailScreen(),
      ),
      GetPage(
        name: ActionDetailScreen.routeName,
        page: () => const ActionDetailScreen(),
      ),
      GetPage(
        name: HistoryDetailScreen.routeName,
        page: () => const HistoryDetailScreen(),
        binding: HistoryBinding(),
      ),
      // ---- TEST URL -----
      GetPage(
        name: MyHomeScreen.routeName,
        page: () => const MyHomeScreen(),
      ),
      GetPage(
        name: ResultScreen.routeName,
        page: () => const ResultScreen(),
      ),
      GetPage(
        name: TalentDnaScreen.routeName,
        page: () => const TalentDnaScreen(),
      ),
      GetPage(
        name: TalentDnaWithNavScreen.routeName,
        page: () => const TalentDnaWithNavScreen(),
        binding: MainBinding(),
      ),
      GetPage(
        name: HistoryScreen.routeName,
        page: () => const HistoryScreen(),
      ),
      GetPage(
        name: InventoryScreen.routeName,
        page: () => const InventoryScreen(),
        binding: InventoryBinding(),
      ),
      GetPage(
        name: InventoryCorporateScreen.routeName,
        page: () => const InventoryCorporateScreen(),
        binding: InventoryBinding(),
      ),
      GetPage(
        name: SurveyScreen.routeName,
        page: () => const SurveyScreen(),
        binding: SurveyBinding(),
      ),
      GetPage(
        name: ResultAfterTestScreen.routeName,
        page: () => const ResultAfterTestScreen(),
        binding: SurveyBinding(),
      ),
      // ---- TEST URL -----
      GetPage(
        name: MainScreen.routeName,
        page: () => const MainScreen(),
        binding: MainBinding(),
      ),
    ];
  }
}
