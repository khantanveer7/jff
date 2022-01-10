import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/health_controller.dart';

// Change theme to dark in main dart file
//theme: ThemeData(
    //brightness: Brightness.dark,
    //),
class HealthView extends GetView<HealthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 50),
              Row(
                children: [
                  Text(
                    "Summary",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),
                  CircleAvatar(
                    maxRadius: 20,
                    backgroundColor: Colors.indigo.shade100,
                    backgroundImage: AssetImage(
                      "assets/images/selfie.png",
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "Favourites",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Edit',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.bed,
                            size: 16,
                            color: Colors.green,
                          ),
                          Text(
                            "Sleep",
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          ),
                          Spacer(),
                          Text("7:56 AM "),
                          Icon(Icons.arrow_forward_ios, size: 14),
                        ],
                      ),
                      SizedBox(height: 10),
                      RichText(
                        text: TextSpan(
                          text: '7',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'hr ',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            TextSpan(text: ' 45'),
                            TextSpan(
                              text: 'min',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text("Time in Bed"),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.local_fire_department,
                            size: 16,
                            color: Colors.red,
                          ),
                          Text(
                            "Steps",
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                          Spacer(),
                          Text("11:00 AM "),
                          Icon(Icons.arrow_forward_ios, size: 14),
                        ],
                      ),
                      SizedBox(height: 10),
                      RichText(
                        text: TextSpan(
                          text: '4439 ',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Steps ',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.favorite,
                        size: 20,
                        color: Colors.green,
                      ),
                      Text(
                        "Show All Health Data",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      Text("7:56 AM "),
                      Icon(Icons.arrow_forward_ios, size: 14),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
