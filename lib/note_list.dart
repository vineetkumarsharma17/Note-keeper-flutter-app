import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_kepper/note_details.dart';
class NoteKeeper extends StatefulWidget {
  const NoteKeeper({Key? key}) : super(key: key);

  @override
  _NoteKeeperState createState() => _NoteKeeperState();
}

class _NoteKeeperState extends State<NoteKeeper> {
  @override
  int count=0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          navigateDetailPage("Add Note");
        },
        tooltip:"add note",
        child: Icon(CupertinoIcons.plus),
      ),
      body: getNoteListView(),
    );
  }
  ListView getNoteListView(){
    //TextStyle titlestyle=<TextStyle>Theme.of(context).textTheme.subhead;
    return ListView.builder(
      itemCount: count,
        itemBuilder: (BuildContext context, int position){
        return Card(
          color: Colors.white,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.yellow,
              child: Icon(Icons.keyboard_arrow_right),
            ),
            title: Text("DummyTile"),
            subtitle: Text("Dummy subtitle"),
            trailing: Icon(Icons.delete,color: Colors.grey,),
            onTap: (){
              navigateDetailPage("Edit Note");
              debugPrint("clicked");
            },

          ),

        );

        });
  }
  void navigateDetailPage(String title){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return NoteDetail(headtitle: title);
    }));
  }
}

