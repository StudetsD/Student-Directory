class ListOfTeach {
  static List<Teachers> listOfTeachers = [
    Teachers(name: "Абрамова Анастасия Ивановна", img: 'abramova.png', items: ["Специализация по прикладной математике"], department: "Кафедра фундаментальной и прикладной математики", mail: "abramovaai@omsu.ru"),
    Teachers(name: "Агафонов Александр Леонидович", img: 'agafonov.png', items: ["Web-программирование"], department: "Кафедра компьютерной математики и программного обеспечения", mail: "-"),
    Teachers(name: "Агалаков Сергей Астафьевич", img: 'agalakov.png', items: ["Анализ статистических данных"], department: "Кафедра компьютерной математики и программного обеспечения", mail: "agalakovsa@omsu.ru"),
    Teachers(name: "Адельшин Александр Владимирович", img: 'adelshin.png', items: ["Теория игр и исследование операций"], department: "Кафедра фундаментальной и прикладной математики", mail: "adelshinav@omsu.ru"),
    //Teachers(name: "Ашаев Игорь Викторович", img: 'ashaev.png', items: [""], department: "Кафедра компьютерной математики и программного обеспечения", mail: "ashaeviv@omsu.ru"),//возможно не препод
    //Teachers(name: "Ашаева Юлия Михайловна", img: 'ashaeva.png', items: [""], department: "Кафедра компьютерной математики и программного обеспечения", mail: "	ashaevaium@omsu.ru"),//возможно не препод
    Teachers(name: "Бахта Наталья Сергеевна", img: 'bahta.png', items: ["Специализация"], department: "Кафедра компьютерной математики и программного обеспечения", mail: "bakhtans@omsu.ru"),
    //	Березин Андрей Андреевич
    Teachers(name: "Бесценный Игорь Павлович", img: 'bestsennyi.jpg', items: ["Математическая логика и теория алгоритмов"], department: "Кафедра Информационной безопасности", mail: "ibests@mail.ru"),
    Teachers(name: "Богаченко Надежда Федоровна", img: 'bogachenko.jpg', items: ["Дискретная математика"], department: "Кафедра компьютерных технологий и сетей", mail: "nfbogachenko@mail.ru"),
    Teachers(name: "Болдовская Татьяна Ерофеевна", img: 'bold.jpg', items: ["Алгебра"], department: "Кафедра Информационной безопасности", mail: "teb73@mail.ru"),//Кафедра компьютерных технологий и сетей
    //Бородихин Василий Николаевич
    //Бузина Ольга Алексеевна   buzina_56@mail.ru
    //Бучинский Иван
    Teachers(name: "Вакилов Андрей Николаевич", img: 'vakilov.jpg', items: ["Электродинамика"], department: "Кафедра Информационной безопасности", mail: "vakilovan@omsu.ru"),
    Teachers(name: "Вахний Татьяна Владимировна", img: 'vahniy.jpg', items: ["Основы цифровых технологий"], department: "Кафедра компьютерных технологий и сетей", mail: "vahniytv@mail.ru"),
    Teachers(name: "Вильховский Данил Эдуардович", img: 'vilhovskiy.jpg', items: ["Технологии и методы программирования"], department: "Кафедра Информационной безопасности", mail: "vilkhovskiy@gmail.com"),
    Teachers(name: "Ворошилов Владимир Владимирович", img: 'voroshilov.png', items: ["Web-программирование"], department: "Кафедра компьютерной математики и программного обеспечения", mail: "voroshilovvv@omsu.ru"),
    Teachers(name: "Вязанкин Олег Николаевич", img: 'vyazankin.png', items: ["Специализация по программированию"], department: "Кафедра компьютерной математики и программного обеспечения", mail: "viazankinon@omsu.ru"),
    //Голованов Александр Леонидович    agolovanov@yahoo.com
    Teachers(name: "Горев Александр Иванович", img: 'gorev.jpg', items: ["Информационная безопасность"], department: "Кафедра Информационной безопасности", mail: "gorev_a@inbox.ru"),
    Teachers(name: "Горева Евгения Геннадьевна", img: 'goreva.jpg', items: ["Языки программирования"], department: "Кафедра Информационной безопасности", mail: "terleshka@mail.ru"),
    //Teachers(name: "Горн", img: 'gorn.jpg', items: [""], department: "Кафедра компьютерных технологий и сетей", mail: ""),//надо посмотреть как зовут
    Teachers(name: "Гусс Святослав Владимирович", img: 'guss.jpg', items: ["Компьютерные сети"], department: "Кафедра компьютерных технологий и сетей", mail: "infoguss@gmail.com"),
    Teachers(name: "Гринь Анатолий Гаврилович", img: 'grin.jpg', items: ["Теория вероятностей и математическая логика"], department: "Кафедра Информационной безопасности", mail: "griniran@gmail.com"),
    Teachers(name: "Гришков Александр Николаевич", img: 'grishkov.jpg', items: ["Специализация по прикладной математике"], department: "Кафедра фундаментальной и прикладной математики", mail: "grishkov@ime.usp.br"),
    Teachers(name: "Дворкин Павел Лазаревич", img: 'dvorkin.png', items: ["Программирование серверных приложений"], department: "Кафедра компьютерной математики и программного обеспечения", mail: ""),
    Teachers(name: "Дворжецкая Марина Юрьевна", img: 'dvorzheckaya.png', items: ["Информационная безопасность и защита информации"], department: "Кафедра компьютерной математики и программного обеспечения", mail: "dvorjet@omsu.ru"),
    //Teachers(name: "Дёмин Александр Михайлович", img: 'demin.jpg', items: [""], department: "Кафедра компьютерных технологий и сетей", mail: ""),//вроде у наших не ведёт
    Teachers(name: "Добровольский Сергей Михайлович", img: 'dobrovolskii.png', items: ["Теория вероятностей"], department: "Кафедра фундаментальной и прикладной математики", mail: "dobrovsm@omsu.ru"),
    Teachers(name: "Евтягин Анатолий Леонидович", img: 'evtyagin.jpg', items: ["Алгебра и геометрия"], department: "Кафедра компьютерных технологий и сетей", mail: "evtyagin@ofim.oscsbras.ru"),
    Teachers(name: "Ефимов Семён Викторович", img: 'efimov_SV.jpg', items: ["Вычислительные системы"], department: "Кафедра компьютерных технологий и сетей", mail: ""),
    //Teachers(name: "Еремеев Антон Валентинович", img: 'eremeev.png', items: [""], department: "Кафедра фундаментальной и прикладной математики", mail: "eremeev@ofim.oscsbras.ru"), возможно не препод
    Teachers(name: "Жмакина Юлия Сергеевна", img: 'zhmakina.jpg', items: ["Основы цифровых технологий"], department: "Кафедра компьютерных технологий и сетей", mail: "yzhmakina@mail.ru"),
    //Teachers(name: "Забудский Геннадий Григорьевич", img: 'zabudskii.png', items: [""], department: "Кафедра фундаментальной и прикладной математики", mail: "zabudsky@ofim.oscbras.ru"), возможно не препод
    //Teachers(name: "", img: 'zadorin.png', items: [""], department: "Кафедра фундаментальной и прикладной математики", mail: ""), возможно не препод
    Teachers(name: "Захарова Юлия Викторовна", img: 'zaharova.png', items: ["Алгебра и геометрия"], department: "Кафедра фундаментальной и прикладной математики", mail: "julia.kovalenko.ya@yandex.ru"),
    Teachers(name: "Ильев Виктор Петрович", img: 'ilev.png', items: ["Теория графов и комбинаторные алгоритмы"], department: "Кафедра фундаментальной и прикладной математики", mail: "iljev@mail.ru"),
    //Teachers(name: "Кабанов Александр Николаевич", img: 'kabanov.jpg', items: [""], department: "Кафедра компьютерных технологий и сетей", mail: "kabanovan@omsu.ru"),//уже не ведёт
    Teachers(name: "Кайгородцева Наталья Викторовна", img: 'kaygorodtseva.jpg', items: ["Начертательная геометрия и инженерная графика"], department: "Кафедра компьютерных технологий и сетей", mail: ""),
    Teachers(name: "Карелина Раиса Олеговна", img: 'karelina.png', items: ["Алгебра и геометрия"], department: "Кафедра фундаментальной и прикладной математики", mail: "karelinaro@omsu.ru"),
    Teachers(name: "Костюшина Елена Анатольевна", img: 'kostyushina.jpg', items: ["Системы управления базами данных"], department: "Кафедра компьютерных технологий и сетей", mail: "kea.omsu@gmail.com"),
    //Костеннов Тимофей Владиславович   timofey.kostennov@gmail.com
    Teachers(name: "Красникова Анастасия Валерьевна", img: 'krasnikova.jpg', items: ["Системы управления базами данных"], department: "Кафедра компьютерных технологий и сетей", mail: "krasnikovaanv@gmail.com"),
    //krasnikovaanv@gmail.com
    //Teachers(name: "Круглова Ирина Алексеевна", img: 'kruglova.png', items: ["Линейная алгебра"], department: "Кафедра фундаментальной и прикладной математики", mail: "kruglovaia@omsu.ru"), //возможно не с нашего факультета
    //Teachers(name: "Лавров Дмитрий Николаевич", img: 'lavrov.jpg', items: [""], department: "Кафедра компьютерных технологий и сетей", mail: "dmitry.lavrov72@gmail.com"),//возможно не препод
    Teachers(name: "Лаптев Александр Анатольевич", img: 'laptev.jpg', items: ["Математический анализ"], department: "Кафедра компьютерных технологий и сетей", mail: "laptevaa@omsu.ru"),
    Teachers(name: "Леванова Татьяна Валентиновна", img: 'levanova.png', items: ["Методы оптимизации"], department: "Кафедра фундаментальной и прикладной математики", mail: "levanovat@mail.ru"),
    Teachers(name: "Лейхтер Сергей Владимирович", img: 'leihter.jpg', items: ["Основы программирования"], department: "Кафедра компьютерных технологий и сетей", mail: "leykhter@mail.ru"),
    Teachers(name: "Лореш Максим Андреевич", img: 'loresh.png', items: ["Введение в программирование"], department: "Кафедра компьютерной математики и программного обеспечения", mail: "-"),
    Teachers(name: "Магазев Алексей Анатольевич", img: 'magazev.jpg', items: ["Квантовая кибернетика"], department: "Кафедра Информационной безопасности", mail: "magazev@mail.ru"),
    Teachers(name: "Макаров Сергей Евгеньевич", img: 'makarov.jpg', items: ["Компьютерный практикум"], department: "Кафедра Информационной безопасности", mail: "mse1357@mail.ru"),
    Teachers(name: "Мельников Евгений Владимирович", img: 'melnikov.png', items: ["Дополнительные главы математического анализа"], department: "Кафедра фундаментальной и прикладной математики", mail: "melnikovev@omsu.ru"),
    Teachers(name: "Мещеряков Евгений Александрович", img: 'mesheryakov.png', items: ["Комплексный анализ"], department: "Кафедра фундаментальной и прикладной математики", mail: "mechtch1981@gmail.com"),
    Teachers(name: "Мироненко Антон Николаевич", img: 'mironenko.jpg', items: ["Криптографические методы защиты информации"], department: "Кафедра Информационной безопасности", mail: "mironim84@mail.ru"),
    Teachers(name: "Наместников Леонид Николаевич", img: 'namestnikov.jpg', items: ["Техническая защита информации"], department: "Кафедра Информационной безопасности", mail: "-"),
    Teachers(name: "Николаев Владимир Борисович", img: 'nikolaev.png', items: ["Уравнения математической физики"], department: "Кафедра фундаментальной и прикладной математики", mail: "nikolaevvb@omsu.ru"),
    Teachers(name: "Опарина Татьяна Михайловна", img: 'oparina.jpg', items: ["Коммутация и маршрутизация"], department: "Кафедра компьютерных технологий и сетей", mail: "oparina2007@yandex.ru"),
    Teachers(name: "Паничкин Алексей Васильевич", img: 'panichkin.jpg', items: ["Методы вычислений"], department: "Кафедра компьютерных технологий и сетей", mail: "panich@ofim.oscsbras.ru"),
    //Пичуев Константин Дмитриевич    pi4uev98@gmail.com
    //Teachers(name: "Погромская (возможно не препод)", img: 'pogromskaya.jpg', items: ["Техническая защита информации"], department: "Кафедра Информационной безопасности", mail: ""),
    Teachers(name: "Пролубников Александр Вячеславович", img: 'prolubnikov.png', items: ["Информационная безопасность"], department: "Кафедра компьютерной математики и программного обеспечения", mail: "a.v.prolubnikov@mail.ru"),
    //Teachers(name: "Романьков Виталий Анатольевич", img: 'romankov.png', items: [""], department: "Кафедра компьютерной математики и программного обеспечения", mail: "romankovva@omsu.ru"),//возможно не препод
    Teachers(name: "Романова Анна Анатольевна", img: 'romanova.png', items: ["Математическое моделирование в экономике"], department: "Кафедра фундаментальной и прикладной математики", mail: "romanovaaa@omsu.ru"),
    Teachers(name: "Рыбалов Александр Николаевич", img: 'ryibalov.png', items: ["Теория кодирования"], department: "Кафедра компьютерной математики и программного обеспечения", mail: "-"),
    Teachers(name: "Садовничук Сергей Германович", img: 'sadovnichuk.jpg', items: ["Теоретико-числовые методы в криптографии"], department: "Кафедра Информационной безопасности", mail: "sad369@gmail.com"),
    Teachers(name: "Сервах Владимир Вицентьевич", img: 'servah.png', items: ["Научно-исследовательский семинар по прикладной математике"], department: "Кафедра фундаментальной и прикладной математики", mail: "svv_usa@rambler.ru"),
    Teachers(name: "Сергиенко Татьяна Александровна", img: 'sergienko.png', items: ["Системное и прикладное программное обеспечение"], department: "Кафедра фундаментальной и прикладной математики", mail: "sergienkota@omsu.ru"),
    Teachers(name: "Сиганов Илья Дмитриевич", img: 'siganov.jpg', items: ["Алгоритмизация и программирование"], department: "Кафедра компьютерных технологий и сетей", mail: "ilya.siganov@gmail.com"),
    Teachers(name: "Симанчев Руслан Юрьевич", img: 'simanchev_ru.png', items: ["Математический анализ"], department: "Кафедра компьютерной математики и программного обеспечения", mail: "simanchevriu@omsu.ru"),
    Teachers(name: "Соловьева Любовь Александровна", img: 'solovjova.jpg', items: ["Операционные системы"], department: "Кафедра Информационной безопасности", mail: "solovievala@omsu.ru"),
    Teachers(name: "Терентьева Ольга Анатольевна", img: 'terentyeva.jpg', items: ["Научно-исследовательский семинар"], department: "Кафедра фундаментальной и прикладной математики", mail: "anatole4ka@yandex.ru"),
    Teachers(name: "Тиховская Светлана Валерьевна", img: 'tikhovskaya.png', items: ["Научно-исследовательский семинар"], department: "Кафедра фундаментальной и прикладной математики", mail: "s.tihovskaya@yandex.ru"),
    Teachers(name: "Толстуха Александр Сергеевич", img: 'tolstuha.png', items: ["Численные методы"], department: "Кафедра фундаментальной и прикладной математики", mail: "a.s.tolstukha@gmail.com"),
    //Тутов Виталий Анатольевич
    //Teachers(name: "", img: 'tyumentsev.jpg', items: [""], department: "Кафедра компьютерных технологий и сетей", mail: ""), возможно не препод
    Teachers(name: "Усов Сергей Владимирович", img: 'usov.jpg', items: ["Теория автоматов"], department: "Кафедра Информационной безопасности", mail: "raintower@mail.ru"),
    Teachers(name: "Уразова Инна Владимировна", img: 'urazova.png', items: ["Разработка бизнес-приложений"], department: "Кафедра компьютерной математики и программного обеспечения", mail: "urazovaiv@omsu.ru"),
    Teachers(name: "Ушакова Евгения Валерьевна", img: 'ushakova.png', items: ["Языки и методы программирования"], department: "Кафедра компьютерной математики и программного обеспечения", mail: "	ushakovaev@omsu.ru"),
    Teachers(name: "Филиппов Алексей Владимирович", img: 'filippov.png', items: ["Языки и методы программирования"], department: "Кафедра компьютерной математики и программного обеспечения", mail: ""),
    Teachers(name: "Шаламова Нина Леонидовна", img: 'shalamova.png', items: ["Топология"], department: "Кафедра фундаментальной и прикладной математики", mail: "shalamovanl@omsu.ru"),
    Teachers(name: "Ширшова Татьяна Ахметовна", img: 'shirshova.png', items: ["Математика"], department: "Кафедра компьютерной математики и программного обеспечения", mail: "shirshovata@omsu.ru"),
    //Шишкин Василий Владимирович   shishkinvv2013@yandex.ru
    Teachers(name: "Ягофарова Дарья Ивановна", img: 'yagofarova.png', items: ["Специализация"], department: "Кафедра фундаментальной и прикладной математики", mail: "ydarya@mail.ru"),
    Teachers(name: "Янишевская Анна Генриховна", img: 'yanishevskaya.jpg', items: ["Алгоритмы анализа изображений"], department: "Кафедра компьютерных технологий и сетей", mail: "anna-yanish@mail.ru"),
    //Teachers(name: "Волошина Валентина Юрьевна", img: 'volodch.jpg', items: ["Археография"], department: "Кафедра Информационной безопасности", mail: ""),//под вопросом
    //Teachers(name: "", img: 'zaharova.png', items: [""], department: "Кафедра фундаментальной и прикладной математики", mail: ""),
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