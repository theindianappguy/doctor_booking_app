import 'package:flutter/cupertino.dart';

class SpecialityModel {
  final String imgAssetPath;
  final String speciality;
  final int noOfDoctors;
  final Color backgroundColor;

  const SpecialityModel({
    required this.imgAssetPath,
    required this.speciality,
    required this.noOfDoctors,
    required this.backgroundColor,
  });
}
