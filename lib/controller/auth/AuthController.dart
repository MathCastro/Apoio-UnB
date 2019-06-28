import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import '../../model/User.dart';

class AuthController {
  final reference = FirebaseDatabase.instance.reference();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  static bool logged = false;
  static User loggedUser;

  void registerUser(User user) async {
    final String id =
        await signUpWithEmailAndPassword(user.email, user.password);
    final userReference =
        FirebaseDatabase.instance.reference().child("user").child(id);

    var newUser = <String, dynamic>{
      'name': user.name,
      'matricula': user.matricula,
      'email': user.email,
      'password': user.password,
      'phone': user.phone,
    };
    userReference.set(newUser);
    loggedUser = user;
    logged = true;
  }

  Future<String> signUpWithEmailAndPassword(
      String email, String password) async {
    final FirebaseUser userFirebase =
        await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userFirebase.uid;
  }

  Future<bool> signInWithEmailAndPassword(String email, String password) async {
    final FirebaseUser userFirebase = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    loggedUser = await getUserData();
    logged = true;
    return userFirebase != null;
  }

  Future<String> getCurrentUser() async {
    FirebaseUser user = await _auth.currentUser();
    return user.uid;
  }

  Future<User> getUserData() async {
    final String id = await AuthController().getCurrentUser();
    User user;
    Map<dynamic, dynamic> maps;
    await FirebaseDatabase.instance
        .reference()
        .child('user')
        .child(id)
        .once()
        .then(
      (DataSnapshot snapshot) {
        maps = snapshot.value;
        // print('Data : ${snapshot.value.values}');
      },
    );

    user = User(
        matricula: maps["address"],
        email: maps["email"],
        id: id,
        name: maps["name"],
        password: maps["password"],
        phone: maps["phone"]);
    return user;
  }

  Future<void> signOut() async {
    logged = false;
    loggedUser = null;
    return _auth.signOut();
  }

}