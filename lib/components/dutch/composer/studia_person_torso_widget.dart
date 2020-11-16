part of '../studia_dutch_components.dart';

class StudiaTorsoComponent extends StatelessWidget {
  final bool finished;

  const StudiaTorsoComponent({
    Key key,
    this.finished = false,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: finished,
      child: Column(
        children: [
          Transform.translate(
            offset: Offset(
              0,
              !finished ? 0 : -45,
            ),
            child: StudiaPagerImageView(
              images: StudiaBodyParts.torsos,
              finished: finished,
            ),
          ),
        ],
      ),
    );
  }
}
