class ListOfTeachers {

  Map<String, Teachers> ListOfTeachrs= {
    "Бесценный И. П.": Teachers(name: "Бесценный И. П.", img:"bestsennyi.jpg", items: ["Математическая логика и теория алгоритмов"], mail: ""),
  };
}

class Teachers {
  String name;
  String img;
  List<String> items;
  String mail;

  Teachers({
    required this.name,
    required this.img,
    required this.items,
    required this.mail,

  });
}