# OM Wallet

Welcome to the **OM Wallet** project repositories! This documentation covers two standalone projects:

1. **OM Wallet Flutter App**: A mobile application built with Flutter for wallet management.
2. **WalletAPI**: A standalone backend application developed in .NET.

---

## Table of Contents

- [Project Overview](#project-overview)
- [Features](#features)
- [Getting Started](#getting-started)
  - [OM Wallet Flutter App](#om-wallet-flutter-app)
  - [WalletAPI](#walletapi)
- [Folder Structure](#folder-structure)
- [API Integration](#api-integration)
- [Contributing](#contributing)
- [License](#license)

---

## Project Overview

The OM Wallet ecosystem consists of:

- **OM Wallet Flutter App**: A user-facing mobile application that provides wallet functionalities like balance checks, transaction history, and fund transfers.
- **WalletAPI**: A RESTful API that serves as the backend for the OM Wallet app, handling data operations and business logic.


## Getting Started

### OM Wallet Flutter App

#### Prerequisites

Ensure you have the following installed:

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- [Android Studio](https://developer.android.com/studio) or [Xcode](https://developer.apple.com/xcode/) for emulator support
- [Visual Studio Code](https://code.visualstudio.com/) with Flutter extension (optional)

#### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/AlaaMohammad/om-wallet.git
   ```
2. Navigate to the project directory:
   ```bash
   cd om-wallet/wallet_app
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Run the application:
   ```bash
   flutter run
   ```

### WalletAPI

#### Prerequisites

Ensure you have the following installed:

- [.NET SDK](https://dotnet.microsoft.com/download)
- A code editor like [Visual Studio](https://visualstudio.microsoft.com/) or [Visual Studio Code](https://code.visualstudio.com/)

#### Installation

1. Navigate to the project directory:
   ```bash
   cd wallet-api
   ```
2. Restore dependencies:
   ```bash
   dotnet restore
   ```
3. Run the application:
   ```bash
   dotnet run
   ```

---

## Folder Structure

### OM Wallet Flutter App

```
wallet_app/
├── lib/
│   ├── constants/       # Define constants like Colors, Fonts ..etc
│   ├── screens/         # UI screens
│   ├── services/        # API interactions
│   ├── utils/           # Utility functions
│   ├── widgets/         # Reusable components
│   └── main.dart        # Application entry point
├── assets/              # Images and fonts
├── test/                # Unit and widget tests
└── pubspec.yaml         # Project configuration
```

### WalletAPI

```
wallet-api/
├── Controllers/         # API controllers
├── Models/              # Data models
├── Data/                # Database context
├── Migrations/          # EF Core migrations
├── Program.cs           # Application entry point
└── appsettings.json     # Configuration settings
```




## Contact

For any inquiries or support, feel free to contact:

- **GitHub**: [AlaaMohammad](https://github.com/AlaaMohammad)
