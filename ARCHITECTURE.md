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

### Naming conventions

Apply these conventions when naming files and classes:

* **Data sources:**
    * Class name `<Name>DataSource`
    * File name `<name>_ds.dart`
    * Folder name `datasources/`
    * Parent folder name `data`
* **Data source contracts:**
    * Class name `I<Name>DataSource`
    * File name `i_<name>_ds.dart`
    * Folder name `datasources/`
    * Parent folder name `interactor`
* **Data transfer objects (Dtos):**
    * Class name `<Name>DTO`
    * File name `<name>_dto.dart`
    * Folder name `dtos/`
    * Parent folder name `data` or `interactor`
* **Entities:**
    * Class name `<Name>Entity`
    * File name `<name>_entity.dart`
    * Folder name `entities/`
    * Parent folder name `interactor`
* **Pages:**
    * Class name `<Name>Page`
    * File name `<name>_page.dart`
    * Folder name `pages/`
    * Parent folder name `ui` or `(public)`
* **Repositories:**
    * Class name `<Name>Repository`
    * File name `<name>_repository.dart`
    * Folder name `repositories/`
    * Parent folder name `data`
* **Repository contracts:**
    * Class name `I<Name>Repository`
    * File name `i_<name>_repository.dart`
    * Folder name `repositories/`
    * Parent folder name `interactor`
* **Services:**
    * Class name `<Name>Service`
    * File name `<name>_service.dart`
    * Folder name `services/`
    * Parent folder name `data` or `interactor`
* **Use Cases:**
    * Class name `<Name>UseCase`
    * File name `<name>_uc.dart`
    * Folder name `usecases/`
    * Parent folder name `interactor`
* **Value Objects:**
    * Class name `<Name>VO`
    * File name `<name>_vo.dart`
    * Folder name `vos/`
    * Parent folder name `interactor`
* **Widgets:**
    * Class name `<Name>Widget`
    * File name `<name>_widget.dart`
    * Folder name `widgets/`
    * Parent folder name `ui`

Keep these files inside the feature that they belong or in a `shared` folder if its use is common.

> Special case for `pages` if using routefly, they are keep inside the `(public)` folder.

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
