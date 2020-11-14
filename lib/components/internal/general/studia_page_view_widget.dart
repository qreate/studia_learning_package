import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studia_learning_package/components/internal/general/studia_circle_dot_widget.dart';
import 'package:studia_learning_package/data/constants/studia_colors.dart';

class StudiaPagerImageView extends StatefulWidget {
  final List<String> images;

  const StudiaPagerImageView({@required this.images});

  @override
  _StudiaPagerImageViewState createState() => _StudiaPagerImageViewState();
}

class _StudiaPagerImageViewState extends State<StudiaPagerImageView> {
  PageController _pageController;
  int currentPageValue = 0;
  int previousPageValue = 0;
  double _moveBar = 0.0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: currentPageValue);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 300,
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: PageView.builder(
            physics: ClampingScrollPhysics(),
            itemBuilder: (context, index) {
              return Image.asset(
                widget.images[index],
                package: 'studia_learning_package',
                height: 200,
              );
            },
            onPageChanged: (int page) {
              animatePage(page);
            },
            itemCount: widget.images.length,
            controller: _pageController,
          ),
        ),
        Container(
          width: deviceWidth,
          height: 14,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  for (int i = 0; i < widget.images.length; i++)
                    if (i == currentPageValue) ...[
                      StudiaCircleDotWidget(
                        isActive: true,
                        color: Colors.white,
                        borderColor: Colors.white,
                      )
                    ] else
                      StudiaCircleDotWidget(
                        isActive: false,
                        color: StudiaColors.flamingo,
                        borderColor: StudiaColors.wood_smoke,
                      ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  void animatePage(int page) {
    currentPageValue = page;
    if (previousPageValue == 0) {
      previousPageValue = currentPageValue;
      _moveBar = _moveBar + 0.14;
    } else {
      if (previousPageValue < currentPageValue) {
        previousPageValue = currentPageValue;
        _moveBar = _moveBar + 0.14;
      } else {
        previousPageValue = currentPageValue;
        _moveBar = _moveBar - 0.14;
      }
    }

    setState(() {});
  }
}
