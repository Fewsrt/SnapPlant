import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class SnapPlantFirebaseUser {
  SnapPlantFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

SnapPlantFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<SnapPlantFirebaseUser> snapPlantFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<SnapPlantFirebaseUser>(
        (user) => currentUser = SnapPlantFirebaseUser(user));
