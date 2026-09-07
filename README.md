# Flutter Counter Cubit App

A Flutter project created to practice state management using Cubit and the `flutter_bloc` package.

The application demonstrates `CounterCubit`, `BlocProvider`, `BlocBuilder`, `BlocListener`, and `BlocConsumer`.

## Features

- Counter state management using Cubit
- Increment counter
- Decrement counter
- Warning dialog when the counter becomes negative
- SnackBar when the counter reaches `10`
- SnackBar when the counter reaches `-10`
- BlocProvider
- BlocBuilder
- BlocListener
- BlocConsumer
- Clean project structure

## Counter Cubit

The `CounterCubit` manages an integer state.

Initial state:

```dart
0
```

The Cubit provides two methods:

```dart
increment()
decrement()
```

### Increment Flow

```text
User taps +
    ↓
increment()
    ↓
emit(state + 1)
    ↓
UI updates
```

### Decrement Flow

```text
User taps -
    ↓
decrement()
    ↓
emit(state - 1)
    ↓
UI updates
```

## BlocProvider

`BlocProvider` makes the `CounterCubit` available to the widget tree.

```dart
BlocProvider(
  create: (context) => CounterCubit(),
  child: const MaterialApp(
    home: CounterScreen(),
  ),
)
```

## BlocBuilder

`BlocBuilder` rebuilds the UI whenever the Cubit emits a new state.

## BlocListener

`BlocListener` is used for side effects.

In this application, it displays a warning dialog whenever the counter value becomes negative.

Example:

```text
Counter = -1
     ↓
BlocListener
     ↓
Warning Dialog
```

## BlocConsumer

`BlocConsumer` combines:

```text
BlocBuilder + BlocListener
```

It is used to:

- rebuild the counter UI
- show a SnackBar when the value reaches `10`
- show a SnackBar when the value reaches `-10`

## Project Structure

```text
lib/
├── main.dart
├── cubit/
│   └── counter_cubit.dart
└── ui/
    └── home_page.dart
```

## Run the Project

Install dependencies:

```bash
flutter pub get
```

Run the application:

```bash
flutter run
```

## Code Quality

Format the source code:

```bash
dart format lib
```

Analyze the project:

```bash
flutter analyze
```

## Technologies

- Flutter
- Dart
- flutter_bloc
- Cubit
- Git
- GitHub

## Git Workflow

This project uses a GitFlow-style workflow:

```text
feature/* -> develop -> main
```

- `main` contains the stable version
- `develop` contains integrated development work
- `feature/counter-cubit` contains the Cubit implementation
