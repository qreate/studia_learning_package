part of '../studia_dutch_components.dart';

class StudiaKlaarKnop extends StatelessWidget {
  final String tekst;
  final dynamic wanneerKlaar;
  final bool finished;

  StudiaKlaarKnop({
    Key key,
    this.tekst,
    this.wanneerKlaar,
    this.finished,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StudiaButtonPlainWithShadow(
      text: tekst,
      shadowColor: StudiaColors.wood_smoke,
      borderColor: StudiaColors.wood_smoke,
      callback: () {
        wanneerKlaar(finished: finished == true ? false : true);
      },
      color: StudiaColors.lightening_yellow,
    );
  }
}
