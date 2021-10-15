import 'package:flutter/material.dart';
import 'package:flutter_app_friday/models/message.dart';
import 'package:flutter_app_friday/models/user.dart';

class MessengerScreen extends StatelessWidget {

  List<User> users = [];
  List<Message> messages = [];

  MessengerScreen(){
    var user1 = User("Amir", "https://antolgy.com/wp-content/uploads/2018/08/elon-musk-1.jpg");

    var user2 = User("Peter", "https://media.wired.com/photos/6019cab23453f789506008d0/1:1/w_1600,h_1600,c_limit/Sec_Bezos_1036084400.jpg");

    var user3 = User("Fahmy", "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Mark_Zuckerberg_F8_2018_Keynote_%28cropped%29.jpg/1200px-Mark_Zuckerberg_F8_2018_Keynote_%28cropped%29.jpg");

    var user4 = User("Marco", "https://img.kooora.com/?i=ashraf-zamrani%2Flionelmessi.gif");

    var user5 = User("Khalaf", "https://content.fortune.com/wp-content/uploads/2020/09/CNV.10.20.FORTUNE_BILL_AND_MELINDA_GATES_030-vertical.jpg");

    var user6 = User("Hamdy", "https://cdn.vox-cdn.com/thumbor/7VvhqD3PcqsQrD3L4J2LBRhlsaU=/0x137:575x520/1400x1400/filters:focal(0x137:575x520):format(png)/cdn.vox-cdn.com/assets/695120/jobs_hero20110329.png");

    users.add(user1);
    users.add(user2);
    users.add(user3);
    users.add(user4);
    users.add(user5);
    users.add(user6);

    users.add(user1);
    users.add(user2);
    users.add(user3);
    users.add(user4);
    users.add(user5);
    users.add(user6);

    var message1 = Message("Amir", "https://antolgy.com/wp-content/uploads/2018/08/elon-musk-1.jpg", "HelloWorld!", true, false);

    var message2 = Message("Peter", "https://media.wired.com/photos/6019cab23453f789506008d0/1:1/w_1600,h_1600,c_limit/Sec_Bezos_1036084400.jpg", "Hello Ahmed how are you", true, true);

    var message3 = Message("Fahmy", "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Mark_Zuckerberg_F8_2018_Keynote_%28cropped%29.jpg/1200px-Mark_Zuckerberg_F8_2018_Keynote_%28cropped%29.jpg", "Hello samy i miss you", false, true);

    var message4 = Message("Marco", "https://img.kooora.com/?i=ashraf-zamrani%2Flionelmessi.gif", "Hello flutter", false, false);

    var message5 = Message("Khalaf", "https://content.fortune.com/wp-content/uploads/2020/09/CNV.10.20.FORTUNE_BILL_AND_MELINDA_GATES_030-vertical.jpg", "who ?", true, true);

    var message6 = Message("Hamdy", "https://cdn.vox-cdn.com/thumbor/7VvhqD3PcqsQrD3L4J2LBRhlsaU=/0x137:575x520/1400x1400/filters:focal(0x137:575x520):format(png)/cdn.vox-cdn.com/assets/695120/jobs_hero20110329.png", "Good bye", false, true);

    messages.add(message1);
    messages.add(message2);
    messages.add(message3);
    messages.add(message4);
    messages.add(message5);
    messages.add(message6);

    messages.add(message1);
    messages.add(message2);
    messages.add(message3);
    messages.add(message4);
    messages.add(message5);
    messages.add(message6);

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
                        print(index);

                        return Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey[700],
                              backgroundImage: NetworkImage(users[index].imageUrl),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              users[index].name,
                              style: TextStyle(color: Colors.white),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        );
                      },
                      itemCount: users.length,
                    ),
                  ],
                ),
              ),
              const SizedBox(
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
                          backgroundImage: NetworkImage(messages[index].imageUrl)),
                      CircleAvatar(backgroundColor: Colors.black, radius: 11,),
                      CircleAvatar(backgroundColor: messages[index].active ? Colors.green : Colors.red, radius: 9,),
                    ],),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          messages[index].name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          messages[index].message,
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
                  CircleAvatar(backgroundColor: messages[index].read ? Colors.black : Colors.blue,
                    radius: 8,),
                ],
              ),
                  scrollDirection: Axis.vertical,
                itemCount: messages.length,
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