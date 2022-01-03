part of 'pages.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        // NOTE HEADER
        Container(
          decoration: BoxDecoration(
            color: accentColor1,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          padding:
              const EdgeInsets.fromLTRB(defaultMargin, 20, defaultMargin, 20),
          child: BlocBuilder<UserBloc, UserState>(builder: (_, userState) {
            if (userState is UserLoaded) {
              return Row(children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border:
                          Border.all(color: const Color(0xFF5F558B), width: 1)),
                  child: Stack(
                    children: <Widget>[
                      SpinKitFadingCircle(
                        color: accentColor2,
                        size: 50,
                      ),
                      Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: (userState.user.profilePicture == ""
                                  ? const AssetImage("assets/user_pic.png")
                                  : NetworkImage(
                                      userState.user.profilePicture)),
                              fit: BoxFit.cover,
                            ),
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width -
                        2 * defaultMargin -
                        78,
                    child: Text(
                      userState.user.name,
                      style: whiteTextFont.copyWith(
                        fontSize: 18,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                    ), 
                  ),
                  Text(
                      NumberFormat.currency(locale: "id_ID", decimalDigits: 0,symbol: "IDR ")
                          .format(userState.user.balance),
                      style: yellowNumberFont.copyWith(
                        fontSize: 14,fontWeight: FontWeight.w400
                      ))
                ])
              ]);
            } else {
              return SpinKitFadingCircle(
                color: accentColor2,
                size: 50,
              );
            }
          }),
        )
      ],
    );
  }
}
