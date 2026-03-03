import 'package:doctor_booking_app/data/data.dart';
import 'package:doctor_booking_app/model/speciality.dart';
import 'package:doctor_booking_app/views/doctor_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final List<String> categories = ["Adults", "Childrens", "Womens", "Mens"];
  String selectedCategorie = "Adults";
  late List<SpecialityModel> specialities;

  @override
  void initState() {
    super.initState();
    specialities = getSpeciality();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.blue,
          statusBarColor: Colors.red,
        ),
        iconTheme: const IconThemeData(color: Colors.black87),
      ),
      drawer: const Drawer(
        child: SizedBox(),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 10),
              Text(
                "Find Your \nConsultation",
                style: TextStyle(
                  color: Colors.black87.withValues(alpha: 0.8),
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 40),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xffEFEFEF),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Row(
                  children: <Widget>[
                    Icon(Icons.search),
                    SizedBox(width: 10),
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.grey, fontSize: 19),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Text(
                "Categories",
                style: TextStyle(
                  color: Colors.black87.withValues(alpha: 0.8),
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 30,
                child: ListView.builder(
                  itemCount: categories.length,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CategorieTile(
                      categorie: categories[index],
                      isSelected: selectedCategorie == categories[index],
                      onTap: () {
                        setState(() {
                          selectedCategorie = categories[index];
                        });
                      },
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 250,
                child: ListView.builder(
                  itemCount: specialities.length,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return SpecialistTile(
                      imgAssetPath: specialities[index].imgAssetPath,
                      speciality: specialities[index].speciality,
                      noOfDoctors: specialities[index].noOfDoctors,
                      backColor: specialities[index].backgroundColor,
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Doctors",
                style: TextStyle(
                  color: Colors.black87.withValues(alpha: 0.8),
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              const DoctorsTile(),
            ],
          ),
        ),
      ),
    );
  }
}

class CategorieTile extends StatelessWidget {
  final String categorie;
  final bool isSelected;
  final VoidCallback onTap;

  const CategorieTile({
    super.key,
    required this.categorie,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        margin: const EdgeInsets.only(left: 8),
        height: 30,
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xffFFD0AA) : Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          categorie,
          style: TextStyle(
            color: isSelected ? const Color(0xffFC9535) : const Color(0xffA1A1A1),
          ),
        ),
      ),
    );
  }
}

class SpecialistTile extends StatelessWidget {
  final String imgAssetPath;
  final String speciality;
  final int noOfDoctors;
  final Color backColor;

  const SpecialistTile({
    super.key,
    required this.imgAssetPath,
    required this.speciality,
    required this.noOfDoctors,
    required this.backColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: backColor,
        borderRadius: BorderRadius.circular(24),
      ),
      padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            speciality,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(height: 6),
          Text(
            "$noOfDoctors Doctors",
            style: const TextStyle(color: Colors.white, fontSize: 13),
          ),
          Expanded(
            child: Image.asset(
              imgAssetPath,
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    );
  }
}

class DoctorsTile extends StatelessWidget {
  const DoctorsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DoctorsInfo()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffFFEEE0),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
        child: Row(
          children: <Widget>[
            Image.asset(
              "assets/doctor_pic.png",
              height: 50,
            ),
            const SizedBox(width: 17),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Dr. Stefeni Albert",
                  style: TextStyle(color: Color(0xffFC9535), fontSize: 19),
                ),
                SizedBox(height: 2),
                Text(
                  "Heart Specialist",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 9),
              decoration: BoxDecoration(
                color: const Color(0xffFBB97C),
                borderRadius: BorderRadius.circular(13),
              ),
              child: const Text(
                "Call",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
