part of 'widgets.dart';

class PromoCard extends StatelessWidget {
  final Promo promo;

  const PromoCard(this.promo, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 80,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
              color: mainColor, borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    promo.title,
                    style: whiteTextFont,
                  ),
                  Text(
                    promo.subtitle,
                    style: whiteTextFont.copyWith(
                        fontSize: 11, fontWeight: FontWeight.w300),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "OFF ",
                    style: yellowNumberFont.copyWith(
                        fontSize: 18, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "${promo.discount}%",
                    style: yellowNumberFont.copyWith(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              )
            ],
          ),
        ),
        ShaderMask(
          shaderCallback: (rectangle) {
            return LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    colors: [Colors.black.withOpacity(0.1), Colors.transparent])
                .createShader(const Rect.fromLTRB(0, 0, 77.5, 80));
          },
          blendMode: BlendMode.dstIn,
          child: SizedBox(
            height: 80,
            width: 77.5,
            child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15)),
                child: Image.asset("assets/reflection2.png")),
          ),
        ),
        Shimmer(
          period: const Duration(seconds: 4),
          gradient: LinearGradient(
              begin: const Alignment(-0.1, 1),
              end: const Alignment(0.5, -1),
              stops: const [
                0.4,
                0.5,
                0.6
              ],
              colors: [
                Colors.white.withOpacity(0),
                Colors.white.withOpacity(0.3),
                Colors.white.withOpacity(0)
              ]),
          child: Container(
            height: 80,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: ShaderMask(
            shaderCallback: (rectangle) {
              return LinearGradient(
                  end: Alignment.centerRight,
                  begin: Alignment.centerLeft,
                  colors: [
                    Colors.black.withOpacity(0.1),
                    Colors.transparent
                  ]).createShader(const Rect.fromLTRB(0, 0, 96, 45));
            },
            blendMode: BlendMode.dstIn,
            child: SizedBox(
              height: 45,
              width: 96,
              child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15),
                  ),
                  child: Image.asset("assets/reflection1.png")),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: ShaderMask(
            shaderCallback: (rectangle) {
              return LinearGradient(
                  end: Alignment.centerRight,
                  begin: Alignment.centerLeft,
                  colors: [
                    Colors.black.withOpacity(0.1),
                    Colors.transparent
                  ]).createShader(const Rect.fromLTRB(0, 0, 53, 25));
            },
            blendMode: BlendMode.dstIn,
            child: SizedBox(
              height: 25,
              width: 53,
              child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15),
                  ),
                  child: Image.asset("assets/reflection1.png")),
            ),
          ),
        )
      ],
    );
  }
}