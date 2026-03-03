import 'package:doctor_booking_app/model/speciality.dart';
import 'package:flutter/cupertino.dart';

List<SpecialityModel> getSpeciality() {
  return [
    const SpecialityModel(
      noOfDoctors: 10,
      speciality: "Cough & Cold",
      imgAssetPath: "assets/img1.png",
      backgroundColor: Color(0xffFBB97C),
    ),
    const SpecialityModel(
      noOfDoctors: 17,
      speciality: "Heart Specialist",
      imgAssetPath: "assets/img2.png",
      backgroundColor: Color(0xffF69383),
    ),
    const SpecialityModel(
      noOfDoctors: 27,
      speciality: "Diabetes Care",
      imgAssetPath: "assets/img3.png",
      backgroundColor: Color(0xffEACBCB),
    ),
  ];
}
