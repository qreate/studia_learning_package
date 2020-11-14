part of '../studia_dutch_components.dart';

class StudiaHoofdComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StudiaCircleDotWidget(
          isActive: true,
          color: Colors.white,
          borderColor: Colors.black,
        ),
      ],
    );
  }
}
