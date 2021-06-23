import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Models/ChatsModels.dart';
class ChatsScreen extends StatelessWidget {
  const ChatsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: DummyData.length ,
      itemBuilder: (context, index){
        return Column(
          children: [
            InkWell(
              onTap: (){
                print("object");
              },
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(DummyData[index].ProfileUrl,),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(DummyData[index].name, style: TextStyle(fontSize: 20,),),
                    Text(DummyData[index].time)
                  ],
                ),
                subtitle: Text(DummyData[index].message, style: TextStyle(fontSize: 16, fontWeight:FontWeight.bold,),)
              ),
            )
          ]
        );
      },
    );
  }
}