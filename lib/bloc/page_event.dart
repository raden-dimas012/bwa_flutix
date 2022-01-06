part of 'page_bloc.dart';

abstract class PageEvent extends Equatable {
  const PageEvent();
}

class GoToSplashPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToLoginPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToMainPage extends PageEvent {
  final int bottomNavBarIndex;
  final bool isExpired;

  const GoToMainPage({this.bottomNavBarIndex = 0, this.isExpired = false});
  @override
  List<Object> get props => [bottomNavBarIndex, isExpired];
}

class GoToRegistrationPage extends PageEvent {
  final RegistrationData registrationData;

  const GoToRegistrationPage(this.registrationData);

  @override
  List<Object> get props => [];
}

class GoToPreferencePage extends PageEvent {
  final RegistrationData registrationData;

  const GoToPreferencePage(this.registrationData);

  @override
  List<Object> get props => [];
}

class GoToAccountConfirmationPage extends PageEvent {
  final RegistrationData registrationData;

  const GoToAccountConfirmationPage(this.registrationData);

  @override
  List<Object> get props => [];
}

class GoToMovieDetailPage extends PageEvent {
  final Movie movie;

  const GoToMovieDetailPage(this.movie);

  @override
  // TODO: implement props
  List<Object> get props => [movie];
}

class GoToSelectSchedulePage extends PageEvent {
  final MovieDetail movieDetail;

  const GoToSelectSchedulePage(this.movieDetail);

  @override
  List<Object> get props => [movieDetail];
}

class GoToSelectSeatPage extends PageEvent {
  final Ticket ticket;

  const GoToSelectSeatPage(this.ticket);

  @override
  List<Object> get props => [ticket];
}

class GoToCheckoutPage extends PageEvent {
  final Ticket ticket;

  const GoToCheckoutPage(this.ticket);

  @override
  List<Object> get props => [ticket];
}

class GoToSuccessPage extends PageEvent {
  final Ticket ticket;
  final FlutixTransaction transaction;

  const GoToSuccessPage(this.ticket, this.transaction);

  @override
  List<Object> get props => [ticket, transaction];
}

class GoToTicketDetailPage extends PageEvent {
  final Ticket ticket;

  const GoToTicketDetailPage(this.ticket);

  @override
  List<Object> get props => [ticket];
}

class GoToProfilePage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToTopUpPage extends PageEvent {
  final PageEvent pageEvent;

  const GoToTopUpPage(this.pageEvent);

  @override
  List<Object> get props => [pageEvent];
}

class GoToWalletPage extends PageEvent {
  final PageEvent pageEvent;

  const GoToWalletPage(this.pageEvent);

  @override
  List<Object> get props => [pageEvent];
}

class GoToEditProfilePage extends PageEvent {
  final User user;

  const GoToEditProfilePage(this.user);

  @override
  List<Object> get props => [user];
}
