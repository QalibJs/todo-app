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
            "vdsgaavsghKVCGhadsshdgvckhsgdVCKHDGSvdsgaavsghKVCGhadsshdgvckhsgdVCKHDGSvdsgaavsghKVCGhadsshdgvckhsgdVCKHDGS",
        title: "SALYAN"),
    HomeModel(notes: "notemdscbkjsdbkcjsdbccsdCSDCCsdcs", title: "NewYork"),
    HomeModel(
        notes:
            "vdsgaavsghKVCGhadsshdgvckhsgdVCKHDGSvdsgaavsghKVCGhadsshdgvckhsgdVCKHDGSvdsgaavsghKVCGhadsshdgvckhsgdVCKHDGS",
        title: "SALYAN"),
  ];
}
