part of 'page_bloc.dart';

abstract class PageState extends Equatable {
  const PageState();
}

class OnInitialPage extends PageState {
  @override
  List<Object> get props => [];
}


class OnLoginPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnSplashPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnMainPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnRegistrationPage extends PageState {
  final RegistrationData registrationData;

  const OnRegistrationPage(this.registrationData);
  @override
  List<Object> get props => [];
}

class OnPreferencePage extends PageState {
  final RegistrationData registrationData;

  const OnPreferencePage(this.registrationData);
  @override
  List<Object> get props => [];
}

class OnAccountConfirmationPage extends PageState {
  final RegistrationData registrationData;

  const OnAccountConfirmationPage(this.registrationData);
  @override
  List<Object> get props => [];
}

class OnMovieDetailPage extends PageState {
  final Movie movie;

  const OnMovieDetailPage(this.movie);
  @override
  List<Object> get props => [movie];
}

class OnSelectSchedulePage extends PageState {
  final MovieDetail movieDetail;

  const OnSelectSchedulePage(this.movieDetail);

  @override
  List<Object> get props => [movieDetail];
}

class OnSelectSeatPage extends PageState {
  final Ticket ticket;

  const OnSelectSeatPage(this.ticket);

  @override
  List<Object> get props => [ticket];
}

class OnCheckoutPage extends PageState {
  final Ticket ticket;

  const OnCheckoutPage(this.ticket);

  @override
  List<Object> get props => [ticket];
}

class OnSuccessPage extends PageState {
  final Ticket ticket;
  final FlutixTransaction transaction;

  const OnSuccessPage(this.ticket, this.transaction);

  @override
  List<Object> get props => [ticket, transaction];
}

class OnTicketDetailPage extends PageState {
  final Ticket ticket;

  const OnTicketDetailPage(this.ticket);

  @override
  List<Object> get props => [ticket];
}

class OnProfilePage extends PageState {
  @override
  List<Object> get props => [];
}

// class OnTopUpPage extends PageState {
//   final PageEvent pageEvent;

//   OnTopUpPage(this.pageEvent);

//   @override
//   List<Object> get props => [pageEvent];
// }

// class OnWalletPage extends PageState {
//   final PageEvent pageEvent;

//   OnWalletPage(this.pageEvent);

//   @override
//   List<Object> get props => [pageEvent];
// }

// class OnEditProfilePage extends PageState {
//   final User user;

//   OnEditProfilePage(this.user);

//   @override
//   List<Object> get props => [user];
// }

