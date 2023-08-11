class ListOfTeach {
  static List<Teachers> listOfTeachers = [
    Teachers(name: "Бесценный Игорь Павлович", img: 'bestsennyi.jpg', items: ["Математическая логика и теория алгоритмов"], department: "Кафедра Информационной безопасности", mail: ""),
    Teachers(name: "Болдовская Татьяна Ерофеевна", img: 'bold.jpg', items: ["Алгебра"], department: "Кафедра Информационной безопасности", mail: ""),
    Teachers(name: "Горев Александр Иванович", img: 'gorev.jpg', items: ["Информационная безопасность"], department: "Кафедра Информационной безопасности", mail: ""),
    Teachers(name: "Горева Евгения Геннадьевна", img: 'goreva.jpg', items: ["Языки программирования"], department: "Кафедра Информационной безопасности", mail: ""),
    Teachers(name: "Гринь Анатолий Гаврилович", img: 'grin.jpg', items: ["Теория вероятностей и математическая логика"], department: "Кафедра Информационной безопасности", mail: ""),
    Teachers(name: "Магазев Алексей Анатольевич", img: 'magazev.jpg', items: ["Квантовая кибернетика"], department: "Кафедра Информационной безопасности", mail: ""),
    Teachers(name: "Мироненко Антон Николаевич", img: 'mironenko.jpg', items: ["Криптографические методы защиты информации"], department: "Кафедра Информационной безопасности", mail: ""),
    Teachers(name: "Наместников Леонид Николаевич", img: 'namestnikov.jpg', items: ["Техническая защита информации"], department: "Кафедра Информационной безопасности", mail: ""),
    Teachers(name: "Погромская (возможно не препод)", img: 'pogromskaya.jpg', items: ["Техническая защита информации"], department: "Кафедра Информационной безопасности", mail: ""),
    Teachers(name: "Садовничук Сергей Германович", img: 'sadovnichuk.jpg', items: ["Теоретико-числовые методы в криптографии"], department: "Кафедра Информационной безопасности", mail: ""),
    Teachers(name: "Соловьева Любовь Александровна", img: 'solovjova.jpg', items: ["Операционные системы"], department: "Кафедра Информационной безопасности", mail: ""),
    Teachers(name: "Усов Сергей Владимирович", img: 'usov.jpg', items: ["Теория автоматов"], department: "Кафедра Информационной безопасности", mail: ""),
    Teachers(name: "Вакилов Андрей Николаевич", img: 'vakilov.jpg', items: ["Электродинамика"], department: "Кафедра Информационной безопасности", mail: ""),
    Teachers(name: "Вильховский Данил Эдуардович", img: 'vilhovskiy.jpg', items: ["Технологии и методы программирования"], department: "Кафедра Информационной безопасности", mail: ""),
    //Teachers(name: "Волошина Валентина Юрьевна", img: 'volodch.jpg', items: ["Археография"], department: "Кафедра Информационной безопасности", mail: ""),//под вопросом
    //Teachers(name: "", img: '.jpg', items: [""], department: "Кафедра компьютерной математики и программного обеспечения", mail: ""),
    //Teachers(name: "", img: '.jpg', items: [""], department: "Кафедра компьютерной математики и программного обеспечения", mail: ""),

  ];

  static Map<String, Teachers> ListOfTeachers= {
    "Бесценный Игорь Павлович": listOfTeachers[0],
  };
}

class Teachers {
  String name;
  String img;
  List<String> items;
  String department;
  String mail;

  Teachers({
    required this.name,
    required this.img,
    required this.items,
    required this.department,
    required this.mail,
  });
}