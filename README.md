A core plugin for develop Flutter project fast
Include Widgets what is used regularly 

## Features
Contains the custom Widgets

## Getting started
The project just needs to be added and used without any constraints

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
            'Đăng nhập',
            fontWeight: FontWeight.w500,
            color: Colors.white,
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
                      'Đăng nhập',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
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

and we have a Button look like:

![DownloadButton](https://cdn.discordapp.com/attachments/960780341952544798/1013290258168827945/z3677788945730_4c58a199ab1309972048c826f795de09.jpg)

## Additional information
The package is under development and will be continuously updated