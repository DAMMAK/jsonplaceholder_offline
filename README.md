# jsonplaceholder_offline

A simple package that allows you to get data for your flutter project on the go without relying on the network
## Installation
Add this to your package's pubspec.yaml file

```dart
dependencies:
    jsonplaceholder_offline: 1.0.0
```
and run
```dart
flutter packages get
```
## How it work
The package is offline version of[JsonPlaceholder](https://jsonplaceholder.typicode.com)
Jsonplaceholder has 6 different data categories:
- User
- Post
- Comment
- Album
- Photo
- Todo

you can get data in two format either object or json.

- to get object data you will need to call `getData<T>(length:1)` method with length as a parameter
- to get json data you will need to call `getJsonData<T>(length:1)` method with length as a parameter

***NB:***
- *length is number of data you wish to return. from (min 1 - max 100)*
- *T is the generic reference of your category.*

  # Usage

  ## Getting Object data
### list of Users
```dart
      JsonPlaceholder jsonPlaceholder = JsonPlaceholder();
      List<User> users = jsonPlaceholder.getData<User>(length: 20);
```
### a single User object

```dart
      JsonPlaceholder jsonPlaceholder = JsonPlaceholder();
      User user = jsonPlaceholder.getData<User>(length:1);
```

## Getting Json data
### list of users data
```dart
      JsonPlaceholder jsonPlaceholder = JsonPlaceholder();
      List<Map<String, dynamic>> users = jsonPlaceholder.getJsonData<User>(length: 20);
```
### a single User json

```dart
      JsonPlaceholder jsonPlaceholder = JsonPlaceholder();
      Map<String, dynamic> user = jsonPlaceholder.getJsonData<User>(length:1);
```