import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studia_learning_package/components/internal/general/studia_text_widget.dart';

class StudiaAppBar extends AppBar {
  final String textTitle;

  StudiaAppBar(this.textTitle);

  @override
  Color get backgroundColor => Colors.transparent;

  @override
  double get elevation => 0.0;

  @override
  Widget get title => Container(
        padding: EdgeInsets.symmetric(
          vertical: 16.0,
        ),
        child: StudiaText(
          size: 34,
          alignment: Alignment.bottomCenter,
          text: textTitle,
        ),
      );
}
