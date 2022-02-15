class MyList {
  final String mylist;
  final String myicon;
  final String dose;
  final String time;

  MyList(
      {required this.dose,
      required this.time,
      required this.mylist,
      required this.myicon});
}

List<MyList> itemlist = [
  MyList(
      mylist: "Probiotic,250mg",
      myicon: "assets/tablet.png",
      dose: '1pill, once a day',
      time: '09:00 AM'),
  MyList(
      mylist: "Loratadine,250mg",
      myicon: "assets/tablet.png",
      dose: '1pill, once a day',
      time: '09:00 AM'),
  MyList(
      mylist: "Exberitox,250mg",
      myicon: "assets/tablet.png",
      dose: '1pill, once a day',
      time: '09:00 AM'),
];
