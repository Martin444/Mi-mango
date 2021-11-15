import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mimango/Models/TypeJobsModel.dart';
import 'package:mimango/Services/JobServices.dart';

class CurriculumController extends GetxController {
  bool _myfirstEmployee = true;
  bool get myfirstEmployee => this._myfirstEmployee;
  bool _movility = false;
  bool get movility => this._movility;
  bool _completeTime = true;
  bool get completeTime => this._completeTime;
  bool _haveChildren = false;
  bool get haveChildren => this._haveChildren;
  bool _haveWpp = true;
  bool get haveWpp => this._haveWpp;

  bool _avilableSend = false;
  bool get avilableSend => this._avilableSend;
  bool _avilableNext = true;
  bool get avilableNext => this._avilableNext;

  List<TypeJobsModel> _typeJobs = [];
  List<TypeJobsModel> get typeJobs => this._typeJobs;
  TypeJobsModel? _typeJobSelected;
  TypeJobsModel? get typeJobSelected => this._typeJobSelected;

  TextEditingController _nameController = TextEditingController();
  TextEditingController get nameController => this._nameController;
  TextEditingController _directionController = TextEditingController();
  TextEditingController get directionController => this._directionController;
  TextEditingController _dniNumberController = TextEditingController();
  TextEditingController get dniNumberController => this._dniNumberController;
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController get phoneNumberController =>
      this._phoneNumberController;
  TextEditingController _descriptionController = TextEditingController();
  TextEditingController get descriptionController =>
      this._descriptionController;
  TextEditingController _ageController = TextEditingController();
  TextEditingController get ageController => this._ageController;

  void setMyfirstEmployee(bool value) {
    this._myfirstEmployee = value;
    update();
  }

  Future getJobsTypes() async {
    try {
      _typeJobs = [];
      var response = await JobService().getListAvilableJobs();
      response.forEach((element) {
        this._typeJobs.add(
              TypeJobsModel(
                id: element.id,
                title: element.data()['title'],
              ),
            );
      });
    } catch (e) {
      print(e);
    }
  }

  selectMyJob(TypeJobsModel typeJob) {
    printInfo(info: typeJob.title.toString());
    this._typeJobSelected = typeJob;
    update();
  }

  setTimeDisponibility(bool value) {
    this._completeTime = value;
    update();
  }

  setHaveMovility(bool value) {
    this._movility = value;
    update();
  }

  setHaveChildren(bool value) {
    this._haveChildren = value;
    update();
  }

  setAvilableSend() {
    if (this._nameController.text.length != 0 &&
        this._directionController.text.length != 0 &&
        this._dniNumberController.text.length != 0 &&
        this._ageController.text.length != 0 &&
        this._phoneNumberController.text.length >= 6) {
      setAvilableNext(true);
      this._avilableSend = true;
      update();
    } else {
      this._avilableSend = false;
      setAvilableNext(false);
      update();
    }
  }

  setAvilableNext(bool value) {
    this._avilableNext = value;
    update();
  }

  setHaveWpp(bool value) {
    this._haveWpp = value;
    update();
  }

  disposeForm() {
    this._avilableSend = false;
    update();
  }
}
