# Notzz

Welcome to Notzz, built using the Domain Deriven
Design pattern and Firebase as it's backend.

This project demonstrates the use of advanced topics such as Domain Deriven Design,
Firebase integration, Bloc pattern for state management and Go_route for routing.

## Structure

The application follows the principles of Domain Deriven Design and is structured
into four primary layers:

Presentation Layer: This layer is all Widgets and also the state of the Widgets

Application Layer: orchestrat all of the other layers.

Domain Layer: the pristine center of an app. It is fully self contained and it doesn't depend on any other layers.

Infrastructure Layer: Much like presentation, this layer is also at the boundary of our app. Although, of course, it's at the "opposite end" and instead of dealing with the user input and visual output, it deals with APIs, Firebase libraries, databases and device sensors.

The application has two main features/modules:

Note: Handles the creation, fetching, and management of Notes.

Tasks: Handles the creation, fetching and managements of tasks or todos.

All modules follow the above-mentioned architectural layers and are organized
accordingly within their respective directories.A few resources to get you
started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
