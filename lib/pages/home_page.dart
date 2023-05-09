import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
            height: _deviceHeight,
            width: _deviceWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _pageTitle(),
                _destinationDropDownWidget(),
              ],
            )),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text(
      "#GoMoon",
      style: TextStyle(
        color: Colors.white,
        fontSize: 70,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  Widget _astroImageWidget() {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/astro_moon.png"),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

  Widget _destinationDropDownWidget() {
    List<String> _items = [
      "James Webb Station",
      "Prenumbra Station",
    ];

    return Container(
      width: _deviceWidth,
      padding: EdgeInsets.symmetric(
        horizontal: _deviceWidth * 0.05,
      ),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(53, 53, 53, 1.0),
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: DropdownButton(
        value: _items.first,
        items: _items.map(
          (e) {
            return DropdownMenuItem(
              value: e,
              child: Text(e),
            );
          },
        ).toList(),
        underline: Container(),
        dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
        onChanged: (value) {
          print(value);
        },
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
