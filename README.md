Flutter application for learning Integration of Flutter with Firebase.

## Steps 
1. Create Firebase app in console and follow all the steps. 

2. Depend on firebase_auth and cloud_firestore packages. 

3. Draw the widget tree

![Brew_crew](https://user-images.githubusercontent.com/40830235/74108027-ba8c6a80-4b9b-11ea-8581-b1c910d29d01.png)

4. Create subfolders under *lib* folder
<pre>
  - main.dart
  - models
    - brew.dart
    - user.dart
  - screens
    - authenticate
      - authenticate.dart
      - register.dart
      - sign_in.dart
    - home
      - brew_list.dart
      - brew_tile.dart
      - home.dart
      - settings_form.dart
    - wrapper.dart
  - services
    - auth.dart
    - database.dart
  - shared
    - constants.dart
    - loading.dart
</pre>

5. Create text widgets inside (i) auth.dart and (ii) home.dart, wrapper.dart should call one of these (i) and (ii) widgets based on whether the user is logged in or not. Initially call any one from wrapper.dart file.

6. Clear all unnecessary part of main.dart and leave only MyApp to return Wrapper widget.

7. In Firebase console of the app, set up Sign-in method under Authentication. (Email and Password, Anonymous)

8. Edit auth.dart to contain a class called AuthService to assist in sign in anonymously, sign in with email and password, register with email, sign out.
Create FirebaseAuth instance and use the instance to create a (Future) function for signing in
anonymously and return the user.
  
9. Create user.dart file that returns uid of the user if signed in

10. Use Stream of FirebaseUser to listen to auth changes

11. In main.dart, wrap MaterialApp with StreamProvider widget to provide data to all widget descendants

12. Edit auth.dart to implement sign out functionality

13. Sign in and Register screens created using Form Widget after creating a new file called register.dart under Authentication

14. Create Toggle function to toggle between the 2 screens (Sign in and Register) in the authenticate.dart and pass them while calling widget SignIn() or Register() and create Logout button in Home Screen to logout.

15. Use GlobalKey<FormState> formkey to validate if email and password is valid, in register.dart file. In auth.dart file, create new function registerWithEmailAndPassword(email, password).
  
16. Create new function to signInWithEmailAndPassword in auth.dart file and formkey in sign_in.dart
file.

17. Format the input text box using InputDecoration (constants.dart) and add Loading screen (loading.dart)

18. Create database.dart file. Create a class DatabaseService that takes 'uid' as parameter.

19. Create a collection reference called brewCollection (Firestore instance) that can contain all
user data for a particular uid.

20. Create a function called updateUserData that takes parameters sugars, name, strength and
updates the value to the user document in Firestore (if document doesn't exist, it creates a
document for the uid).

21. Call updateUserData function in database.dart from registerWithEmailAndPassword function to
create new user document after registering and the cloud firestore 'brews' gets updated (website).

22. Setup a stream (get brews in database.dart) to listen to firestore and get the collection's
documents snapshots and use provider to get the data on home.dart and print it.

23. Create a model class Brew (brew.dart) for storing brew values like user.dart. After we get
brews, it is converted to List of Brew using \_brewListFromSnapshot() in database.dart. Update
StreamProvider type to List of Brew in home.dart file and Provider's type in brew.dart file.

24. Create brew_tile.dart file to design tile (item) of the brew list in brew_list.dart file.

25. Create a function \_showSettingsPanel to display bottom sheet in home.dart file on clicking
settings icon.

26. Create settings_form.dart file for updating brew settings that contain a TextFormField,
DropdownButtonFormField and Slider for updating name, sugars and strength respectively.

27. Create UserData class in user.dart file to hold current user's data. After we get userData
snapshot, it is converted to UserData object by using \_userDataFromSnapshot() in database.dart.

28. Setup StreamBuilder in home.dart file to receive UserData and update it both in the list and
bottom sheet using updateUserData() in database.dart file.

29. Update CircleAvatar image to the coffee_icon.png in brew_tile.dart file and backgroundImage to
home.dart file.