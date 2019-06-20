import 'package:vp_flutter/beans/movie_entity.dart';
import 'package:vp_flutter/beans/user1_entity.dart';
import 'package:vp_flutter/beans/user_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "MovieEntity") {
      return MovieEntity.fromJson(json) as T;
    } else if (T.toString() == "User1Entity") {
      return User1Entity.fromJson(json) as T;
    } else if (T.toString() == "UserEntity") {
      return UserEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}