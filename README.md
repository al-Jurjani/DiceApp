# Flutter Dice Roller App

This is a simple mobile app built with Flutter that simulates rolling a pair of dice. Tapping either of the dice on the screen will "roll" both of them, generating new random faces.

---

## About This Project

This application was developed as a hands-on learning exercise while taking the **"Flutter & Dart - The Complete Guide"** course by Maximilian Schwarzmüller on Udemy. This project was key to understanding how to manage and update the state of widgets in response to user input.

You can find the course here: [Flutter & Dart - The Complete Guide on Udemy](https://www.udemy.com/course/learn-flutter-dart-to-build-ios-android-apps/)

## Core Concepts Practiced

This project focuses heavily on the fundamentals of state management and user interaction in Flutter:

-   **Stateful Widgets**: Using `StatefulWidget` and `setState()` to update the UI when the dice values change.
-   **Asset Management**: Including and loading image assets (`dice1.png`, `dice2.png`, etc.) using the `pubspec.yaml` file.
-   **User Input**: Making the dice images tappable and responsive to user actions.
-   **Random Number Generation**: Using Dart's `Random` class to simulate the dice rolls.
-   **Basic Layout**: Structuring the UI with `Row`, `Expanded`, and `Center` to create a responsive layout.

## Key Points

- Primarily the 'main.dart' and 'my_container.dart' files are used.
- All the other files were used to learning and testing.
- The course I am following: https://www.udemy.com/course/learn-flutter-dart-to-build-ios-android-apps

## Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

Ensure you have the Flutter SDK installed on your system. For detailed instructions, please refer to the [official Flutter installation guide](https://flutter.dev/docs/get-started/install).

### Installation & Execution

1.  **Clone the repository:**
    ```sh
    git clone https://github.com/al-Jurjani/DiceApp.git
    cd DiceApp
    ```

2.  **Install dependencies:**
    Run the following command to get all the required packages for the project.
    ```sh
    flutter pub get
    ```

3.  **Run the application:**
    Open an emulator or connect a physical device and run the following command to start the app.
    ```sh
    flutter run
    ```
