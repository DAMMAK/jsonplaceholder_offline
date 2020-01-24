# jsonplaceholder_offline

A simple JsonPlaceholder https://jsonplaceholder.typicode.com/  offline package that allows you to get data for your flutter project on the go without relying on the network
## Installation
Add this to your package's pubspec.yaml file

```
dependencies:
    jsonplaceholder_offline:0.01
```
and run
```
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

to get data you will need to call getData<T>() method with length as a parameter
***NB:***
- *length is number of data you wish to return.*
- *T is the generic reference of your category.*

  ## Usage
```
      JsonPlaceholder jsonPlaceholder = JsonPlaceholder();
      List<User> users = jsonPlaceholder.getData<User>(length: 20);
```