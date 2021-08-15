import 'package:flutter/material.dart';
class NoteDetail extends StatefulWidget {
  final String headtitle;

  const NoteDetail({required this.headtitle});

  @override
  _NoteDetailState createState() => _NoteDetailState(headtitle);
}

class _NoteDetailState extends State<NoteDetail> {
  final String headTitle;
  @override
  var _priorities=null;
  TextEditingController title=TextEditingController();
  TextEditingController detail=TextEditingController();
  _NoteDetailState(this.headTitle);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(headTitle),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 15,left: 10,right: 10),
        child: ListView(
          children:<Widget> [
            ListTile(
              title: DropdownButton(
                items: [
                  DropdownMenuItem(child: Text("Low"),value: "Low",),
                  DropdownMenuItem(child: Text("High"),value: "High",),
                ],
                value: _priorities,
                onChanged: (value){
                  setState(() {
                    _priorities=value;
                    print(_priorities);
                  });
                },
                hint: Text("Select priority"),
              ),
            ),
            Padding(padding: EdgeInsets.all(20),
            child: TextField(
              controller: title,
              decoration: InputDecoration(
                labelText: "Title",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),),
            Padding(padding: EdgeInsets.all(20),
              child: TextField(
                controller: title,
                decoration: InputDecoration(
                  labelText: "Description",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),),
            Padding(padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(child: ElevatedButton(
                  child: Text("Save",textScaleFactor: 1.5,),
                  onPressed: (){

                  },
                )),
                Expanded(child: ElevatedButton(
                  child: Text("Delete",textScaleFactor: 1.5,),
                  onPressed: (){

                  },
                ))
              ],
            ),)


          ],
        ),
      ),
    );
  }
}
