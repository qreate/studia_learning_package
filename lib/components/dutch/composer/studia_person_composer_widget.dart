part of '../studia_dutch_components.dart';

class StudiaPersoonSamensteller extends StatelessWidget {
  //
  final StudiaHoofdComponent hoofd;
  //
  final Widget torso;
  // final Widget _benen;

  const StudiaPersoonSamensteller({
    Key key,
    @required this.hoofd,
    @required this.torso,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: hoofd,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: torso,
        ),
      ],
    );
  }
}
