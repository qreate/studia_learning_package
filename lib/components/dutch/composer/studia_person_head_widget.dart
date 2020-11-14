part of '../studia_dutch_components.dart';

class StudiaHoofdComponent extends StatelessWidget {
  final String gezichtFotoLink;
  final bool finished;

  const StudiaHoofdComponent({
    Key key,
    @required this.gezichtFotoLink,
    this.finished,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: finished,
      child: Stack(
        children: [
          StudiaPagerImageView(
            images: StudiaBodyParts.heads,
            finished: finished,
          ),
          Positioned(
            top: finished ? 65 : 50,
            bottom: 0,
            right: 0,
            left: 30,
            child: IgnorePointer(
              child: Image.network(
                gezichtFotoLink,
              ),
            ),
          )
        ],
      ),
    );
  }
}
