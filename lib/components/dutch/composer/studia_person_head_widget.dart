part of '../studia_dutch_components.dart';

class StudiaHoofdComponent extends StatelessWidget {
  final String gezichtFotoLink;

  const StudiaHoofdComponent({
    Key key,
    @required this.gezichtFotoLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        StudiaPagerImageView(
          images: StudiaBodyParts.heads,
        ),
        Positioned(
          top: 50,
          bottom: 0,
          right: 0,
          left: 30,
          child: IgnorePointer(
            child: Image.network(
              "https://srv-store2.gofile.io/download/QFgAks/4313089.png",
            ),
          ),
        )
      ],
    );
  }
}
