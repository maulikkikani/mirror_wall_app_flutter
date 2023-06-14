import 'package:flutter/material.dart';

import '../Models/popupmenultemselect_model.dart';

class PopupMenuItemSelect_Provider extends ChangeNotifier {

  PopupMenuItemSelect_Model p1 = PopupMenuItemSelect_Model(PopupMenuItemSelect: "1", PopupMenuItemURI: "") ;

  getValueSelect(val) {
    p1.PopupMenuItemSelect = val;
    notifyListeners();
  }

  getValueURI(val) {
    p1.PopupMenuItemURI = val;
    notifyListeners();
  }

}