import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'test.viewmodel.dart';

class TestView extends StatelessWidget {
  TestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TestViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          body: Column(children: <Widget>[
            for (Information information
                in model.informationList)
              ExpansionTile(
                  title: Text(information.title + " / " + (model.currentOpenedInformationId == information.id).toString()),
                  initiallyExpanded:
                      model.currentOpenedInformationId == information.id,
                  onExpansionChanged: (expanding) =>
                      model.onExpansionChanged(information.id, expanding),
                  children: <Widget>[
                    ListTile(title: Text(information.description)),
                  ]),
          ]),
        );
      },
      viewModelBuilder: () => TestViewModel(),
    );
  }
}
