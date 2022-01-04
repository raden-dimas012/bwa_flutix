part of 'models.dart';

class Theater extends Equatable {
  final String name;

  const Theater(this.name);

  @override
  List<Object> get props => [name];
}

List<Theater> dummyTheaters = [
  const Theater("CGV 23 Paskal Hyper Square"),
  const Theater("CGV Paris Van Java"),
  const Theater("XXI Cihampelas Walk"),
  const Theater("XXI Bandung Trade Center")
];