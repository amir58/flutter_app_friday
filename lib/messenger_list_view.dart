import 'package:flutter/material.dart';
import 'package:flutter_app_friday/models/user.dart';

class MessengerScreen extends StatelessWidget {

  MessengerScreen(){
    var user1 = User("Amir", "https://antolgy.com/wp-content/uploads/2018/08/elon-musk-1.jpg");

    var user2 = User("Peter", "");

    var user3 = User("Peter", "");
    var user4 = User("Peter", "");
    var user5 = User("Peter", "");
    var user6 = User("Peter", "");

    
  }



  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: SafeArea(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Row(
                children: [
                  CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          "https://pyxis.nymag.com/v1/imgs/6ca/c27/d480ad69b8be1bff0dc381baefb2d41ac0-30-tim-cook.2x.h473.w710.jpg")),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Chats",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  CircleAvatar(
                    backgroundColor: Colors.grey[700],
                    child: IconButton(
                      icon: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey[700],
                    child: IconButton(
                      icon: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.grey[700],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                height: 90,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey[700],
                          child: IconButton(
                            icon: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Your story",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(width: 5,),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey[700],
                              backgroundImage: NetworkImage(
                                  "https://pyxis.nymag.com/v1/imgs/6ca/c27/d480ad69b8be1bff0dc381baefb2d41ac0-30-tim-cook.2x.h473.w710.jpg"),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Mostafa",
                              style: TextStyle(color: Colors.white),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        );
                      },
                      itemCount: 30,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                separatorBuilder: (context, index) => Divider(height: 10, color: Colors.white, thickness: 0.2,),
                itemBuilder: (context, index) => Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                          radius: 35,
                          backgroundImage: NetworkImage(
                              "https://pyxis.nymag.com/v1/imgs/6ca/c27/d480ad69b8be1bff0dc381baefb2d41ac0-30-tim-cook.2x.h473.w710.jpg")),
                      CircleAvatar(backgroundColor: Colors.black, radius: 11,),
                      CircleAvatar(backgroundColor: Colors.green, radius: 9,),
                    ],),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mostafa Gamal",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "Hello flutter slkjdlsk sdalkasld lskdasl lskfsl ",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white
                            ,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 5,),
                  CircleAvatar(backgroundColor: Colors.blue,radius: 8,),
                ],
              ),
                  scrollDirection: Axis.vertical,
                itemCount: 100,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              ),
            ],
          ),
        ),
      ),
    );
  }

}