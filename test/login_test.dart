import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

void main() async {
  group('testing of user credential ', () {
    test('returns a user credential after sign in', () async {
      final auth = MockFirebaseAuth();
      final credential = FakeAuthCredential();

      final result = await auth.signInWithCredential(credential);
      final user = result.user;
      expect(user.uid, isNotEmpty);
      expect(user.displayName, isNotEmpty);
      expect(await user.getIdToken(), isNotEmpty);
      expect(auth.onAuthStateChanged, emitsInOrder([isA<User>()]));
    });

    test('Returns a user credential if it is signed in', () async {
      final auth = MockFirebaseAuth(signedIn: true);
      final user = auth.currentUser;
      expect(user.uid, isNotEmpty);
      expect(user.displayName, isNotEmpty);
      expect(await user.getIdToken(), isNotEmpty);
    });
  });

  group('returns null after sign out', () {
    test('testing sign out ', () async {
      final auth = MockFirebaseAuth(signedIn: true);
      final user = auth.currentUser;

      await auth.signOut();
      expect(auth.currentUser, isNull);
      expect(auth.onAuthStateChanged, emitsInOrder([user, null]));
    });
  });
}

class FakeAuthCredential extends Mock implements AuthCredential {}
