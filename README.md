<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

A core plugin for develop Flutter project fast
Include Widgets what is used regularly 

## Features


## Getting started


## Usage

Let's try: 
```dart
class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const InkWellButton(
      width: 100,
      height: 40,
      backgroundColor: Colors.transparent,
      radius: 20,
      borderWidth: 1.5,
      primaryColor: Colors.blueAccent,
      child: Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w500,
          )
      )
      ,
    );
  }
}
```


It is equivalent to:

```dart
class InkWellButton extends StatelessWidget {
  const InkWellButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            splashColor: Colors.primaryColor,
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.all(Radius.circular(radius)),
                border: Border.all(color: Colors.primaryColor, width: 1.5),
              ),
              height: 40.0,
              width: 100.0,
              child: Center(
                  child: Text(
                      label,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: isCheck ? Colors.white : Colors.primaryColor,
                      )
                  )
              ),
            ),
            onTap: () {
              onTap();
            }
        ),
      ),
    );
  }
}

```

## Additional information

