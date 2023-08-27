import 'package:applicate/core/app_export.dart';
import 'package:applicate/widgets/cards/card_of_teacher.dart';
import 'package:flutter/material.dart';

class ListOfTeachers extends StatefulWidget {

  const ListOfTeachers({super.key});

  @override
  State<ListOfTeachers> createState() => _ListOfTeachersState();
}

class _ListOfTeachersState extends State<ListOfTeachers> {
  var _filteredTeachers = <Teachers>[];
  var teachers = ListOfTeach.listOfTeachers;

  final _searchController = TextEditingController();

  void _searchLessons(){
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filteredTeachers = teachers.where((Teachers item) {
        return item.name.toLowerCase().contains(query);
      }).toList();
    }
    else {
      _filteredTeachers = teachers;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _filteredTeachers = teachers;
    _searchController.addListener(_searchLessons);
  }

  @override
  Widget build(BuildContext context) {
    var group = (ModalRoute.of(context)?.settings.arguments ?? "") as String;
    return Scaffold(
      backgroundColor: ColorConstant.blueFon,
      body: Material(
        color: Colors.white.withOpacity(0.4),
        child: SizedBox(
          height: double.infinity,
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(top: 60, bottom: 20),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white54,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/menu', arguments: group);
                        },
                      ),
                      Text(
                        "Преподаватели",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorConstant.colorText,
                          fontSize: 25,
                          fontFamily: 'RobotoBold',
                          fontWeight: FontWeight.w900,
                          shadows: const [
                            Shadow(
                              blurRadius: 3.0,
                              color: Colors.black26,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.search_rounded,),
                      filled: true,
                      fillColor: Colors.white70.withAlpha(100),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      hintText: "Search",
                    ),
                  ),
                ),
                for(var i = 0; i < _filteredTeachers.length; i++) CardOfTeacher(teacher: _filteredTeachers[i], group: group,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}