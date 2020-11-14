part of '../studia_dutch_components.dart';

class StudiaPersoonSamensteller extends StatelessWidget {
  //
  final StudiaHoofdComponent hoofd;
  //
  final Widget torso;
  final Widget benen;
  final Widget gezicht;

  const StudiaPersoonSamensteller({
    Key key,
    @required this.hoofd,
    @required this.torso,
    @required this.benen,
    @required this.gezicht,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        hoofd,
        // gezicht,
        // benen,
        // gezicht,
      ],
    );
  }
}
