import 'package:flutter/material.dart';

import 'package:goverment_service_app/Models/linervalue_model.dart';

class LinerValue_Provider extends ChangeNotifier{

  LinerValue_Model l1 = LinerValue_Model(WebProgress: 0);

  ChangeProgress(Pg) {
    l1.WebProgress = Pg/100;
    notifyListeners();

  }
}