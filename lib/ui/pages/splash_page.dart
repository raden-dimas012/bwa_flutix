part of 'pages.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to sign in page'),
          onPressed: () {
            // change  if you can
            context.bloc<PageBloc>().add(GoToLoginPage());
            // context.read()<PageBloc>()
          },
        ),
      ),
    );
  }
}
