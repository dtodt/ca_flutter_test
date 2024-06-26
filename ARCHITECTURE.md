## Flutter Project Architecture

This document outlines the architecture guidelines for contributing to our Flutter project. These guidelines aim to ensure code quality, maintainability, and consistency across contributions.

### General Rules

* **Commits:** Follow the Conventional Commits [specification](https://www.conventionalcommits.org/en/v1.0.0/) for clear and concise commit messages.
* **Code Style:** Write code and comments in English and adhere to Flutter naming conventions for variables, functions, and classes.
* **Dependency Injection:** Use either `flutter_modular` or `auto_injector`.
* **Routing:** Use either `flutter_modular` or `routefly`.
* **State Management:** Manage state using `ValueNotifier` or `Atom` (from [asp](https://pub.dev/packages/asp)).

Our production project currently uses [`flutter_modular`](https://pub.dev/packages/flutter_modular) for dependency injection & routing and Atomic State Pattern ([`asp`](https://pub.dev/packages/asp)) for state management.

> You may opt to use `flutter_modular` or the minimalistic combination of `auto_injector` and `routefly`

### Clean Architecture

Adopt the [`Flutterando/minicore`](https://github.com/Flutterando/minicore) clean architecture approach with feature-based divisions:

* **Data:** This layer interacts with external data sources (databases, APIs) through repositories.
* **Interactor (Business Logic):** This layer houses the core business logic of the application.
* **UI (Presentation):** This layer handles user interface display and interaction.

### External Dependencies

* **Third-Party Packages:** Abstract third-party packages (analytics, geolocation, http) through service contracts (service pattern).
* **External Data Sources:** Abstract data sources (local storage, remote APIs) via repository contracts (repository pattern). Complex scenarios might introduce a datasource layer within the data layer for further abstraction.

### Testing

* **Unit Tests:** Create unit tests for business logic residing in the interactor layer.
* **Widget/Page Tests (Bonus):** Implement widget or page tests as an additional demonstration of skill.

### Sample Project Structure

#### Flutter Modular

```
.
└── lib/
    ├── features/
    │   ├── login/
    │   │   ├── data/
    │   │   ├── interactor/
    │   │   └── ui/
    │   └── ... (other feature folders)
    └── ... (other project folders, core, shared, etc)
```

#### Routefly

```
.
└── lib/
    ├── (public)/
    ├── features/
    │   ├── login/
    │   │   ├── data/
    │   │   ├── interactor/
    │   │   └── ui/
    │   └── ... (other feature folders)
    └── ... (other project folders, core, shared, etc)
```
