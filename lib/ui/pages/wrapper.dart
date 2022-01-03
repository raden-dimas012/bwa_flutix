part of 'pages.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    auth.User firebaseUser = Provider.of<auth.User>(context);
    if (firebaseUser == null) {
      if (prevPageEvent is! GoToSplashPage) {
        prevPageEvent = GoToSplashPage();
        context.bloc<PageBloc>().add(prevPageEvent);
        // BlocProvider.of<PageBloc>(context.read());
      }
    } else {
      if (prevPageEvent is! GoToMainPage) {
        context.bloc<UserBloc>().add(LoadUser(firebaseUser.uid));
        prevPageEvent = GoToMainPage();
        context.bloc<PageBloc>().add(prevPageEvent);
      }
    }
    return BlocBuilder<PageBloc, PageState>(
        builder: (_, pageState) => (pageState is OnSplashPage)
            ? const SplashPage()
            : (pageState is OnLoginPage)
                ? const SignInPage()
                : (pageState is OnRegistrationPage)
                    ? SignUpPage(pageState.registrationData)
                    : (pageState is OnPreferencePage)
                        ? PreferencePage(pageState.registrationData)
                        : (pageState is OnAccountConfirmationPage)
                            ? AccountConfirmationPage(
                                pageState.registrationData)
                            : const MainPage());
  }
}
