import 'package:flutter/material.dart';

class GradeEditor extends StatefulWidget {

  final String _pageTitle;
  GradeEditor(this._pageTitle);

  @override
  State<StatefulWidget> createState() => _GradeEditorState(_pageTitle);
}

class _GradeEditorState extends State<GradeEditor> {

  final String _pageTitle;
  _GradeEditorState(this._pageTitle);

  //TextField grade
  var _gradeController = TextEditingController();
  final String _gradeLabel = 'Grade';

  //TextField discipline
  var _disciplineController = TextEditingController();
  final String _disciplineLabel = 'Discipline';

  //Edges
  final double _maintopEdge = 10.0;
  final double _edge = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title: Text(_pageTitle), centerTitle: true),

      body: Padding(padding: EdgeInsets.only(top: _edge, left: _edge, right: _edge),
      child: ListView(
        children: <Widget>[

          Padding(padding: EdgeInsets.only(top: _maintopEdge),
            child: TextField(

            controller: _gradeController,
            decoration: InputDecoration(

              labelText: _gradeLabel,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
            ),
          ),
          ),

          Padding(padding: EdgeInsets.only(top: 15.0),
          child: TextField(

            controller: _disciplineController,
            decoration: InputDecoration(

              labelText: _disciplineLabel,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
            ),
          ),
          ),

          Padding(padding: EdgeInsets.only(top: _edge, right: _edge, left: _edge),
          child: Row(
            children: <Widget>[

              Expanded(
                child: MaterialButton(

                    color: Theme.of(context).primaryColorDark,
                    textColor: Theme.of(context).primaryColorLight,
                    child: Text('Save'),

                    onPressed: () => debugPrint('save button here')
                ),
              ),

              Container(width: _edge,),

              Expanded(
                child: MaterialButton(

                    color: Theme.of(context).primaryColorDark,
                    textColor: Theme.of(context).primaryColorLight,
                    child: Text('Cancel'),

                    onPressed: () => debugPrint('cancel button here')
                ),
              ),

            ],
          ),

          ),

        ],

      ),
      ),
    );
  }
}