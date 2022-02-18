import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsInitial());

  static SettingsCubit get(context) => BlocProvider.of(context);

  TextEditingController accInfoEmail = TextEditingController();
  TextEditingController accInfoFirstName = TextEditingController();
  TextEditingController accInfoLastName = TextEditingController();
  TextEditingController accInfoPhoneNum = TextEditingController();
  TextEditingController emailChangeNewMail = TextEditingController();
  TextEditingController emailChangeNewMailConfirmation =
      TextEditingController();
  TextEditingController emailChangePassConfirmation = TextEditingController();
  TextEditingController savedAddress = TextEditingController();
  TextEditingController passwordChangeOldPass = TextEditingController();
  TextEditingController passwordChangeNewPass = TextEditingController();
  TextEditingController passwordChangeNewPassConfirmation =
      TextEditingController();
  TextEditingController problemReport = TextEditingController();

  showDialog(Widget page, BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        child: page,
        color: Colors.white,
      ),
    );
  }

  File? pickedImage;

  Future pickImageFromGallery() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) {
      return;
    }
    final imageTemporary = File(image.path);
    // this.pickedImage = imageTemporary;
    setImage() {
      pickedImage = imageTemporary;
      emit(SetImageState());
    }
  }

  Future pickImageFromCamera() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) {
      return;
    }
    final imageTemporary = File(image.path);
    // this.pickedImage = imageTemporary;
    setImage() {
      pickedImage = imageTemporary;
      emit(SetImageState());
    }
  }
}
