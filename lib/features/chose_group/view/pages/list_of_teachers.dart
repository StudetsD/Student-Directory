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
      body: SizedBox(
        height: double.infinity,
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 40, bottom: 10),
                child: Row(
                  children: [
                    IconButton(
                      icon: AppIconStyle.iconTopBack,
                      onPressed: () {
                        Navigator.pushNamed(context, '/menu', arguments: group);
                      },
                    ),
                    Text(
                      "Преподаватели",
                      textAlign: TextAlign.center,
                      style: AppStyle.textTopStyle
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                child: TextField(
                  style: TextStyle(color: ColorConstant.chosePageTextColor),
                  controller: _searchController,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.search_rounded,
                      color: ColorConstant.chosePageTextColor,
                    ),
                    filled: true,
                    fillColor: ColorConstant.chosePageFon,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: " Поиск",
                    hintStyle: AppStyle.txtRobotoRomanCondensedMedium17,
                  ),
                ),
              ),
              for(var i = 0; i < _filteredTeachers.length; i++) CardOfTeacher(teacher: _filteredTeachers[i], group: group,),
            ],
          ),
        ),
      ),
    );
  }
}