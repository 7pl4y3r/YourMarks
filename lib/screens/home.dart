import 'package:flutter/material.dart';
import 'grade_editor.dart';

class HomePage extends StatefulWidget {

  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final String _appName = 'Your Grades';
  var _count = 3;
  List items = List<String>();

  _HomePageState() {
    _initList();
  }

  //Titles for grad_editor.dart
  final String _titleAdd = 'Add grade';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text(_appName),),
      body: ListView.builder(

          itemCount: _count,
          itemBuilder: (BuildContext context, int position) {

            //Card attributes
            final Color cardColor = Colors.white30;
            final double cardElevation = 2.0;
            final String dummyTitle = 'Dummy title';
            final String dummySubTitle = 'Dummy subtitle';
            final IconData trailingDelete = Icons.delete_forever;

            //CircleAvatar
            final Color circleColor = Colors.lightBlueAccent;
            final IconData circleIcon = Icons.note;

            //Colors
            final Color red = Colors.red;

            //TextStyles
            final TextStyle titleStyle = Theme.of(context).textTheme.title;
            final TextStyle subTitleStyle = Theme.of(context).textTheme.subhead;

            return Card(

              color: cardColor,
              elevation: cardElevation,
              child: ListTile(

                leading: CircleAvatar(
                  backgroundColor: circleColor,
                  child: Icon(circleIcon),
                ),

                title: Text(dummyTitle + items[position], style: titleStyle,),
                subtitle: Text(dummySubTitle + items[position], style: subTitleStyle,),
                trailing: GestureDetector(

                  child: Icon(trailingDelete, color: red,),
                  onTap: () => null,

                ),

              ),

            );
          }
      ),

      floatingActionButton: FloatingActionButton(

          child: Icon(Icons.add, color: Colors.white,),
          onPressed: _navigateToGradeEditor,

      ),

    );
  }

  //Utils

  _initList() {

    for (int i = 0; i < 3; i++)
      items.add('$i');
  }

  _navigateToGradeEditor() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => GradeEditor('Grade editor')));
  }

}