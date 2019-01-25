
class Mark {

  int _id;
  int _mark;
  String _discipline;
  String _date;

  Mark(this._id, this._mark, this._discipline, this._date);

  //Getters
  int get id => _id;
  int get mark => _mark;
  String get discipline => _discipline;
  String get date => _date;

  //Setters
  set mark(int newMark) => this._mark = mark;
  set discipline(String newDiscipline) => this._discipline = newDiscipline;
  set date(String newDate) => this.date = newDate;

  //Columns
  final String _colId = 'id';
  final String _colMark = 'mark';
  final String _colDiscipline = 'discipline';
  final String _colDate = 'date';

  toMap() {

    var map = Map<String, dynamic>();

    if (_id != null)
      map[_colId] = _id;

    map[_colMark] = _mark;
    map[_colDiscipline] = _discipline;
    map[_colDate] = _date;

    return map;
  }

}