import "package:flutter/material.dart";

class CustomDropDownButton extends StatelessWidget {
  final List<String> values;
  double width;

  CustomDropDownButton({
    Key? key,
    required this.values,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
      ),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(53, 53, 53, 1.0),
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: DropdownButton(
        value: values.first,
        items: values.map(
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
