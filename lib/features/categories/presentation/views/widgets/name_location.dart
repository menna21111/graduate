import 'package:flutter/material.dart';
import 'package:graduation/constants.dart';
import 'package:graduation/core/utils/style.dart';

class locationtionwidget extends StatelessWidget {
  const locationtionwidget({
    super.key,
    required this.name,
    required this.location,
  });
  final String name;
    final String location;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 47),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              name,
              style: Textstyle.textStyle16,
              softWrap: true,
            ),
          ),
          Row(
            children: [
              const Icon(
                Icons.location_on,
                color: kmaincolor,
                size: 14,
              ),
              const SizedBox(width: 7),
              Text(
               location,
                style: Textstyle.textStyle16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
