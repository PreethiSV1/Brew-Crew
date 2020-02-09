# brew_crew

A new Flutter application for learning Integration of Flutter with Firebase.

## Steps 
1. Create Firebase app in console and follow all the steps. 

2. Depend on firebase_auth and cloud_firestore packages. 

3. Draw the widget tree

4. Create subfolders under *lib* folder
<pre>
  - main.dart
  - screens
    - wrapper.dart
    - authentication
      - auth.dart
    - home
      - home.dart
  - services
    - auth.dart
</pre>

5. Create text widgets inside (i) auth.dart and (ii) home.dart, wrapper.dart should call one of these (i) and (ii) widgets based on whether the user is logged in or not. Initially call any one from wrapper.dart file.

6. Clear all unnecessary part of main.dart and leave only MyApp to return Wrapper widget.

7. In Firebase console of the app, set up Sign-in method under Authentication. (Email and Password, Anonymous)

8. Edit auth.dart to contain a class called AuthService to assist in sign in anonymously, sign in with email and password, register with email.


