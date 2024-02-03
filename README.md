# Shoe Shop Flutter App

Welcome to Shoe Shop, a mobile application built with Flutter that allows users to browse and purchase shoes. This app utilizes the Provider package for state management, enabling a seamless shopping experience.

## Features

- Browse a variety of shoes
- Add shoes to the shopping cart
- Manage shopping cart items
- Proceed to checkout and place orders

## Getting Started

Follow these instructions to set up and run the Shoe Shop app on your local machine.

### Prerequisites

- Ensure you have Flutter installed on your machine. If not, follow the official installation guide [here](https://flutter.dev/docs/get-started/install).
- Basic knowledge of Flutter and Dart programming languages.
- Familiarity with the Provider package for state management.

### Installation

1. Clone the repository to your local machine:
```
    git clone https://github.com/kaybrian/Shoe-shop.git
```

2. Navigate to the project directory:
```
    cd Shoe-shop
```

3. Install dependencies:
```
    flutter pub get
```

4. Run the app:
```
    flutter run
```


### How to Use

- Upon launching the app, you'll land on the home screen displaying various shoes.
- Tap on any shoe to view detailed information.
- To add a shoe to your shopping cart, tap the '+' button on the shoe details screen.
- To manage your shopping cart, navigate to the cart screen by tapping on the cart icon.

## State Management with Provider

The Provider package is used for state management in this application. Provider is a simple yet powerful state management solution that helps manage application state efficiently and effortlessly.

### Provider Setup

1. Add Provider dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.0.0

