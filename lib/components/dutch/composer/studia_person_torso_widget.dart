part of '../studia_dutch_components.dart';

class StudiaTorsoComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StudiaPagerImageView(
          images: StudiaBodyParts.torsos,
        ),
      ],
    );
  }
}
