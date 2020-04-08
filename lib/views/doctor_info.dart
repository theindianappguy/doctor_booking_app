import 'package:flutter/material.dart';

class DoctorsInfo extends StatefulWidget {
  @override
  _DoctorsInfoState createState() => _DoctorsInfoState();
}

class _DoctorsInfoState extends State<DoctorsInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(
          color: Colors.black87
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset("assets/doctor_pic2.png", height: 220),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 222,
                    height: 220,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Dr. Stefeni Albert",
                          style: TextStyle(fontSize: 32),
                        ),
                        Text(
                          "Heart Speailist",
                          style: TextStyle(fontSize: 19, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: <Widget>[
                            IconTile(
                              backColor: Color(0xffFFECDD),
                              imgAssetPath: "assets/email.png",
                            ),
                            IconTile(
                              backColor: Color(0xffFEF2F0),
                              imgAssetPath: "assets/call.png",
                            ),
                            IconTile(
                              backColor: Color(0xffEBECEF),
                              imgAssetPath: "assets/video_call.png",
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 26,
              ),
              Text(
                "About",
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Dr. Stefeni Albert is a cardiologist in Nashville & affiliated with multiple hospitals in the  area.He received his medical degree from Duke University School of Medicine and has been in practice for more than 20 years. ",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.asset("assets/mappin.png"),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Address",
                                style: TextStyle(
                                    color: Colors.black87.withOpacity(0.7),
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width - 268,
                                  child: Text(
                                    "House # 2, Road # 5, Green Road Dhanmondi, Dhaka, Bangladesh",
                                    style: TextStyle(color: Colors.grey),
                                  ))
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          Image.asset("assets/clock.png"),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Daily Practict",
                                style: TextStyle(
                                    color: Colors.black87.withOpacity(0.7),
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width - 268,
                                  child: Text(
                                    '''Monday - Friday
Open till 7 Pm''',
                                    style: TextStyle(color: Colors.grey),
                                  ))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Image.asset(
                    "assets/map.png",
                    width: 180,
                  )
                ],
              ),
              Text(
                "Activity",
                style: TextStyle(
                    color: Color(0xff242424),
                    fontSize: 28,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 22,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 24,horizontal: 16),
                      decoration: BoxDecoration(
                          color: Color(0xffFBB97C),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Color(0xffFCCA9B),
                              borderRadius: BorderRadius.circular(16)
                            ),
                              child: Image.asset("assets/list.png")),
                          SizedBox(
                            width: 16,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width/2 - 130,
                            child: Text(
                              "List Of Schedule",
                              style: TextStyle(color: Colors.white,
                              fontSize: 17),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 16,),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 24,horizontal: 16),
                      decoration: BoxDecoration(
                          color: Color(0xffA5A5A5),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Color(0xffBBBBBB),
                                  borderRadius: BorderRadius.circular(16)
                              ),
                              child: Image.asset("assets/list.png")),
                          SizedBox(
                            width: 16,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width/2 - 130,
                            child: Text(
                              "Doctor's Daily Post",
                              style: TextStyle(color: Colors.white,
                                  fontSize: 17),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class IconTile extends StatelessWidget {
  final String imgAssetPath;
  final Color backColor;

  IconTile({this.imgAssetPath, this.backColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
            color: backColor, borderRadius: BorderRadius.circular(15)),
        child: Image.asset(
          imgAssetPath,
          width: 20,
        ),
      ),
    );
  }
}
