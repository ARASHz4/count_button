# CountButton

[![pub package](https://img.shields.io/pub/v/count_button.svg)](https://pub.dev/packages/count_button)

A Jalali/**Persian** Date Time Picker with Format Date to Persian for Android, iOS, macOS, Windows, Linux and Web


## Platform Support

| Android | iOS | macOS | Web | Windows | Linux |
| :-----: | :-: | :---: | :-: | :-----: | :---: |
|   ✔️    | ✔️   |  ✔️  | ✔️  |   ✔️   |  ✔️   |

## Getting Started


### Add dependency

```yaml
dependencies:
  count_button: ^1.0.0 #latest version
```

This sample open DatePicker and return the selected Date

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
