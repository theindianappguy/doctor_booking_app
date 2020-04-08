import 'package:doctor_booking_app/data/data.dart';
import 'package:doctor_booking_app/model/speciality.dart';
import 'package:doctor_booking_app/views/doctor_info.dart';
import 'package:flutter/material.dart';

String selectedCategorie= "Adults";

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> categories = ["Adults","Childrens","Womens","Mens"];

  List<SpecialityModel> specialities;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    specialities = getSpeciality();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(
            color: Colors.black87
        ),
      ),
      drawer: Drawer(
          child: Container()// Populate the Drawer in the next step.
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10,),
              Text("Find Your \nConsultation", style: TextStyle(
                color: Colors.black87.withOpacity(0.8),
                fontSize: 30,
                fontWeight: FontWeight.w600
              ),),
              SizedBox(height: 40,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xffEFEFEF),
                  borderRadius: BorderRadius.circular(14)
                ),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.search),
                    SizedBox(width: 10,),
                    Text("Search", style: TextStyle(
                      color: Colors.grey,
                      fontSize: 19
                    ),)
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Text("Categories", style: TextStyle(
                  color: Colors.black87.withOpacity(0.8),
                  fontSize: 25,
                  fontWeight: FontWeight.w600
              ),),
              SizedBox(height: 20,),
              Container(
                height: 30,
                child: ListView.builder(
                itemCount: categories.length,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index){
                  return CategorieTile(
                    categorie: categories[index],
                    isSelected: selectedCategorie == categories[index],
                    context: this,
                  );
                    }),
              ),
              SizedBox(height: 20,),
              Container(
                height: 250,
                child: ListView.builder(
                    itemCount: specialities.length,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index){
                      return SpecialistTile(
                        imgAssetPath: specialities[index].imgAssetPath,
                        speciality: specialities[index].speciality,
                        noOfDoctors: specialities[index].noOfDoctors,
                        backColor: specialities[index].backgroundColor,
                      );
                    }),
              ),
              SizedBox(height: 20,),
              Text("Doctos", style: TextStyle(
                  color: Colors.black87.withOpacity(0.8),
                  fontSize: 25,
                  fontWeight: FontWeight.w600
              ),),
              SizedBox(height: 20,),
              DoctorsTile()
            ],
          ),
        ),
      ),
    );
  }
}

class CategorieTile extends StatefulWidget {

  final String categorie;
  final bool isSelected;
  _HomePageState context;
  CategorieTile({this.categorie, this.isSelected,this.context});

  @override
  _CategorieTileState createState() => _CategorieTileState();
}

class _CategorieTileState extends State<CategorieTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        widget.context.setState(() {
          selectedCategorie = widget.categorie;
        });
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.only(left: 8),
        height: 30,
        decoration: BoxDecoration(
          color: widget.isSelected ? Color(0xffFFD0AA) : Colors.white,
          borderRadius: BorderRadius.circular(30)
        ),
        child: Text(widget.categorie, style: TextStyle(
          color: widget.isSelected ?  Color(0xffFC9535) : Color(0xffA1A1A1)
        ),),
      ),
    );
  }
}

class SpecialistTile extends StatelessWidget {

  final String imgAssetPath;
  final String speciality;
  final int noOfDoctors;
  final Color backColor;
  SpecialistTile({@required this.imgAssetPath,@required this.speciality
    ,@required this.noOfDoctors, @required this.backColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: backColor,
        borderRadius: BorderRadius.circular(24)
      ),
      padding: EdgeInsets.only(top: 16,right: 16,left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(speciality, style: TextStyle(
            color: Colors.white,
            fontSize: 20
          ),),
          SizedBox(height: 6,),
          Text("$noOfDoctors Doctors", style: TextStyle(
            color: Colors.white,
            fontSize: 13
          ),),
          Image.asset(imgAssetPath, height: 160,fit: BoxFit.fitHeight,)
        ],
      ),
    );
  }
}

class DoctorsTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => DoctorsInfo()
        ));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffFFEEE0),
          borderRadius: BorderRadius.circular(20)
        ),
        padding: EdgeInsets.symmetric(horizontal: 24,
        vertical: 18),
        child: Row(
          children: <Widget>[
            Image.asset("assets/doctor_pic.png", height: 50,),
            SizedBox(width: 17,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Dr. Stefeni Albert", style: TextStyle(
                  color: Color(0xffFC9535),
                  fontSize: 19
                ),),
                SizedBox(height: 2,),
                Text("Heart Speailist", style: TextStyle(
                  fontSize: 15
                ),)
              ],
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15,
              vertical: 9),
              decoration: BoxDecoration(
                color: Color(0xffFBB97C),
                borderRadius: BorderRadius.circular(13)
              ),
              child: Text("Call", style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w500
              ),),
            )
          ],
        ),
      ),
    ); 
  }
}



