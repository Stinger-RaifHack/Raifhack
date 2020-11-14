import 'package:flutter/material.dart';

class RaifhackWhitePage extends StatefulWidget {
  RaifhackWhitePage({Key key, this.content}) : super(key: key);

  final Widget content;

  @override
  _RaifhackWhitePageState createState() => _RaifhackWhitePageState();
}

class _RaifhackWhitePageState extends State<RaifhackWhitePage>
    with SingleTickerProviderStateMixin<RaifhackWhitePage> {
  AnimationController _controller;

  int i = 0;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this,
        duration: Duration(seconds: 15)
    );

    _controller.addListener(_update);

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) _controller.repeat();
    });

    _controller.forward();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _update() => setState(() => i =
      (_controller.value * MediaQuery.of(context).size.height * 1.5).round());

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        body: Stack(
            children: [
              Positioned(
                  left: MediaQuery.of(context).size.width * 2 / 3,
                  bottom: -100 + i.toDouble(),
                  child: Image.asset(
                      "images/raifhack_white_scaffold.png",
                      height: 100,
                      width: 100
                  )
              ),
              Positioned(
                  left: MediaQuery.of(context).size.width / 4,
                  bottom: -300 + i.toDouble(),
                  child: Image.asset(
                      "images/raifhack_white_scaffold.png",
                      height: 70,
                      width: 70
                  )
              ),
              SafeArea(
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.transparent,
                      child: widget.content
                  )
              )
            ]
        )
      );
}