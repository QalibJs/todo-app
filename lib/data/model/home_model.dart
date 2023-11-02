class HomeModel {
  final String notes;
  final String title;
  HomeModel({
    required this.notes,
    required this.title,
  });

  static List<HomeModel> model = [
    HomeModel(notes: "HGVCKHGSVGHXVKSHGVXSHGVXKHSGVX", title: "AZERBAYCAN"),
    HomeModel(notes: "notsdcsdcaes", title: "BAKI"),
    HomeModel(
        notes:
            "noadskbcksdbcljhsbdcjksDCJHBVKSJDHBCJSHDBCKJHSDBCKJSDHBChdbckjsdhbckjsdbckajsdhbcjsdctes",
        title: "NEW YORk"),
    HomeModel(notes: "notemdscbkjsdbkcjsdbccsdCSDCCsdcs", title: "SALYAN"),
  ];
}
