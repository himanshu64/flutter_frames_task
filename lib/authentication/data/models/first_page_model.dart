
import 'package:flutter_frames/authentication/domain/entities/first_page_entity.dart';

class FirstPageModel extends FirstPageEntity {
  const FirstPageModel({required bool isLoggedIn,required bool isVerifyingEmail})
      : super( isLoggedIn: isLoggedIn , isVerifyingEmail: isVerifyingEmail);
}
