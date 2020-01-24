# jsonplaceholder_offline

A simple JsonPlaceholder https://jsonplaceholder.typicode.com/  offline package that allows you to get data for your flutter project on the go without relying on the network
## Installation
Add this to your package's pubspec.yaml file

```dart
dependencies:
    jsonplaceholder_offline:0.0.1
```
and run
```dart
flutter packages get
```
## How it work
The package is offline version of https://jsonplaceholder.typicode.com/ JsonPlaceholder.
Jsonplaceholder has 5 different data categories:
- User
- Post
- Comment
- Album
- Photo
- Todo

to get data you will need to call `getData<T>()` method with length as a parameter
***NB:***
- *length is number of data you wish to return.*
- *T is the generic reference of your category.*

  ## Usage
  ### Getting list of users object data
```dart
      JsonPlaceholder jsonPlaceholder = JsonPlaceholder();
      List<User> users = jsonPlaceholder.getData<User>(length: 20);
```
### Getting user data

```dart
      JsonPlaceholder jsonPlaceholder = JsonPlaceholder();
      User user = jsonPlaceholder.getData<User>(length:1);
```

### Getting list of users json data
```dart
      JsonPlaceholder jsonPlaceholder = JsonPlaceholder();
      List<Map<String,dynamic>> users = jsonPlaceholder.getJsonData<User>(length: 20);
```
### Getting user data

```dart
      JsonPlaceholder jsonPlaceholder = JsonPlaceholder();
      Map<String,dynamic> user = jsonPlaceholder.getJsonData<User>(length:1);
```