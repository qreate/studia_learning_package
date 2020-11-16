part of '../studia_dutch_components.dart';

class StudiaPersoonSamensteller extends StatefulWidget {
  //
  final StudiaHoofdComponent hoofd;
  //
  final StudiaTorsoComponent torso;
  //
  final StudiaKlaarKnop klaarKnop;
  //
  final bool metConfetti;

  const StudiaPersoonSamensteller({
    Key key,
    @required this.hoofd,
    @required this.torso,
    @required this.klaarKnop,
    this.metConfetti = false,
  }) : super(key: key);
  // final Widget _benen;
  @override
  _StudiaPersoonSamenstellerState createState() =>
      _StudiaPersoonSamenstellerState(
        head: this.hoofd,
        torso: this.torso,
        klaarKnop: this.klaarKnop,
      );
}

class _StudiaPersoonSamenstellerState extends State<StudiaPersoonSamensteller> {
  //
  final StudiaHoofdComponent head;
  //
  final StudiaTorsoComponent torso;
  //
  final StudiaKlaarKnop klaarKnop;

  // final Widget _benen;
  bool isFinished = false;
  ConfettiController _controller;

  _StudiaPersoonSamenstellerState({
    @required this.head,
    @required this.torso,
    @required this.klaarKnop,
  });

  @override
  void initState() {
    _controller = ConfettiController(
      duration: const Duration(seconds: 10),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void finished({
    bool finished,
  }) {
    setState(() {
      isFinished = finished;
    });
    if (widget.metConfetti) {
      if (finished) {
        _controller.play();
      } else {
        _controller.stop();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StudiaConfettiWrapper(
          confettiController: _controller,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: head != null
              ? StudiaHoofdComponent(
                  gezichtFotoLink: head.gezichtFotoLink,
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
                  finished: isFinished,
                )
              : klaarKnop != null && isFinished
                  ? StudiaKlaarKnop(
                      tekst: 'Terug',
                      wanneerKlaar: finished,
                      finished: isFinished,
                    )
                  : null,
        ),
      ],
    );
  }
}
