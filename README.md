# Bug in `CupertinoDatePicker` for date column picker

Minimum reproducible bug of Cupertino Date Picker

# Use case
We want to use a `CupertinoDatePicker(mode:
CupertinoDatePickerMode.dateAndTime)` to allow the user to select a date
and a time between a range.

In our case, the range starts with a day at midnight, let's say
`2020-03-02` (ISO8601) for instance. For this reason, we use the
`minimumDate` argument on the widget:

```dart
final ourPicker = CupertinoDatePicker(
  mode: CupertinoDatePickerMode.dateAndTime,
  minimumDate: anArbitraryDateAtMidnight,
  /// more args here
);
```

## Expected behaviour
We see a wheel, whose date column starts with `2020-03-02` (displayed as
_"Mon Mar 2"_ after localization)

## Actual behaviour
We see a wheel, whose date column **starts with the previous date:
`2020-03-01`** (displayed as _"Mon Mar 2"_ after localization).

However, all times (hours, minutes and meridiem) wheel pickers are
disabled for that date if you select it.

## Reproduce
Just run the app! (`flutter run`)

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
