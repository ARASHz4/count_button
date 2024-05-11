# CountButton

[![pub package](https://img.shields.io/pub/v/count_button.svg)](https://pub.dev/packages/count_button)

Count Button is a Flutter package that allows you to easily implement a customizable item count widget with increment and decrement buttons.
This widget is particularly useful in scenarios where you need to manage the quantity of items,
such as in a shopping cart or inventory management system. for Android, iOS, macOS, Windows, Linux and Web

![Screenshot](https://github.com/ARASHz4/count_button/blob/master/ScreenShot.png)


## features

- Increment and decrement buttons for adjusting the item count.
- Define the minimum and maximum values for the item count.
- Customizable button icon, colors, sizes, and text styles.
- Callback function to handle changes to the item count.

## Platform Support

| Android | iOS | macOS | Web | Windows | Linux |
| :-----: | :-: | :---: | :-: | :-----: | :---: |
|   ✔️    | ✔️   |  ✔️  | ✔️  |   ✔️   |  ✔️   |

## Getting Started


### Add dependency

```yaml
dependencies:
  count_button: ^1.0.1 #latest version
```

This sample to use the CountButton widget in your Flutter app:

```dart
CountButton(
  selectedValue: countValue,
  minValue: 0,
  maxValue: 99,
  foregroundColor: Colors.white,
  onChanged: (value) {
    setState(() {
      countValue = value;
    });
  },
  valueBuilder: (value) {
    return Text(
      value.toString(),
      style: const TextStyle(fontSize: 20.0),
    );
  },
);
```
