part of '../studia_dutch_components.dart';

class StudiaPersoonSamensteller extends StatefulWidget {
  //
  final StudiaHoofdComponent hoofd;
  //
  final StudiaTorsoComponent torso;
  //
  final StudiaKlaarKnop klaarKnop;

  const StudiaPersoonSamensteller({
    Key key,
    @required this.hoofd,
    @required this.torso,
    @required this.klaarKnop,
  }) : super(key: key);
  // final Widget _benen;
  @override
  _StudiaPersoonSamenstellerState createState() =>
      _StudiaPersoonSamenstellerState(
        hoofd: this.hoofd,
        torso: this.torso,
        klaarKnop: this.klaarKnop,
      );
}

class _StudiaPersoonSamenstellerState extends State<StudiaPersoonSamensteller> {
  //
  final StudiaHoofdComponent hoofd;
  //
  final StudiaTorsoComponent torso;
  //
  final StudiaKlaarKnop klaarKnop;
  // final Widget _benen;
  bool isFinished = false;

  _StudiaPersoonSamenstellerState({
    @required this.hoofd,
    @required this.torso,
    @required this.klaarKnop,
  });

  @override
  void initState() {
    super.initState();
  }

  void finished({
    bool finished,
  }) {
    setState(() {
      isFinished = finished;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: hoofd != null
              ? StudiaHoofdComponent(
                  gezichtFotoLink: hoofd.gezichtFotoLink,
                  finished: isFinished,
                )
              : null,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: torso != null
              ? StudiaTorsoComponent(
                  finished: isFinished,
                )
              : null,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 48.0,
            vertical: 16.0,
          ),
          child: klaarKnop != null && !isFinished
              ? StudiaKlaarKnop(
                  tekst: klaarKnop.tekst,
                  wanneerKlaar: finished,
                )
              : null,
        ),
      ],
    );
  }
}
