class Category {
  final String name;
  int? numOfCourse;
  final String image;

  Category({
    required this.name,
    required this.numOfCourse,
    required this.image,
  });
}

List<Map<String, dynamic>> categoriesData = [
  {
    'name': 'Marketing',
    'course': 17,
    'image': 'assets/images/marketing.png',
  },
  {
    'name': 'UX Design',
    'course': 25,
    'image': 'assets/images/ux_design.png',
  },
  {
    'name': 'photography',
    'course': 13,
    'image': 'assets/images/photography.png',
  },
  {
    'name': 'Business',
    'course': 17,
    'image': 'assets/images/business.png',
  },
  {
    'name': '',
    'course': null,
    'image': 'assets/images/cprogrammimg.jpg',
  },
  {
    'name': '',
    'course': null,
    'image': 'assets/images/c++ programimg.jpg',
  },
  {
    'name': '',
    'course': null,
    'image': 'assets/images/photoshop.jpg',
  },
  {
    'name': '',
    'course': null,
    'image': 'assets/images/cyber security.jpg',
  },
];

List<Category> categories = categoriesData
    .map(
      (item) => Category(
        name: item['name'],
        numOfCourse: item['course'],
        image: item['image'],
      ),
    )
    .toList();
