part of '../studia_dutch_components.dart';

class StudiaKlaarKnop extends StatelessWidget {
  final String tekst;
  final dynamic wanneerKlaar;

  StudiaKlaarKnop({
    Key key,
    this.tekst,
    this.wanneerKlaar,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StudiaButtonPlainWithShadow(
      text: tekst,
      shadowColor: StudiaColors.wood_smoke,
      borderColor: StudiaColors.wood_smoke,
      callback: () {
        wanneerKlaar(finished: true);
      },
      color: StudiaColors.lightening_yellow,
    );
  }
}
