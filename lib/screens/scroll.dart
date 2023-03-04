import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: const [PageOne(), PageTwo()],
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const <Widget>[
        BackgroundImage(),
        MainContent(),
      ],
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff50c1dc),
      child: Center(
        child: TextButton(
          style: TextButton.styleFrom(
              shape: const StadiumBorder(), backgroundColor: Colors.amber),
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Hello',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.bold,
        fontFamily: AutofillHints.addressCityAndState,
        color: Colors.white);

    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text('11°', style: textStyle),
          const Text(
            'Miercoles',
            style: textStyle,
          ),
          Expanded(
            child: Container(),
          ),
          const Icon(
            Icons.keyboard_double_arrow_down_sharp,
            size: 100,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff50c1dc),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(image: AssetImage('images/scroll-1.png')),
    );
  }
}
