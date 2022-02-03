import 'package:stacked/stacked.dart';

class Information {
  Information({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.description,
  });

  int id;
  String title;
  String subtitle;
  String description;
}

class TestViewModel extends BaseViewModel {
  List<Information> informationList = <Information>[
    Information(id: 1,
      title: "Tile 1",
      subtitle: "Subtitle 1",
      description: "Super description 1",),
    Information(id: 2,
      title: "Tile 2",
      subtitle: "Subtitle 2",
      description: "Super description 2",),
    Information(id: 3,
      title: "Tile 3",
      subtitle: "Subtitle 3",
      description: "Super description 3",),
    Information(id: 4,
      title: "Tile 4",
      subtitle: "Subtitle 4",
      description: "Super description 4",),
  ];

  int currentOpenedInformationId = 0;

  onExpansionChanged(int id, bool expanded) {
    if (expanded) {
      currentOpenedInformationId = id;
      notifyListeners();
    }
  }
}
