# Calculadora minimalista (Flutter)

[![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter&logoColor=white)](https://flutter.dev/)
[![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?logo=dart&logoColor=white)](https://dart.dev/)
[![MIT](https://img.shields.io/badge/Licencia-MIT-green)](LICENSE)

[Español](#español) · [English](#english)

---

## Español

### Índice

- [Descripción](#descripción)
- [Características](#características)
- [Requisitos](#requisitos)
- [Instalación](#instalación)
- [Uso](#uso)
- [Estructura del proyecto](#estructura-del-proyecto)
- [Licencia](#licencia)

### Descripción

Calculadora **Flutter** de estilo minimalista inspirada en el diseño de iOS: números grandes, contraste alto y cero elementos decorativos de más. Funciona en Android, iOS, escritorio y web desde el mismo código.

### Características

- **Operaciones básicas**: suma, resta, multiplicación y división.
- **Diseño responsivo**: se adapta a móvil, tableta, escritorio y navegador.
- **Interfaz limpia**: tipografía clara, colores contrastados y botones amplios.
- **Manejo de errores**: división por cero y entradas inválidas controladas, sin cerrar la app.
- **Sin dependencias externas**: solo el SDK de Flutter.

### Requisitos

- [Flutter SDK](https://docs.flutter.dev/get-started/install) instalado.
- Un emulador configurado, un dispositivo conectado o Chrome para la versión web.

### Instalación

```bash
git clone https://github.com/alberto2005-coder/flutter-minimalist-calculator.git
cd flutter-minimalist-calculator
flutter pub get
flutter run
```

Variantes útiles:

```bash
flutter run -d chrome        # versión web
flutter build apk --release  # Android
flutter build web            # sitio estático en build/web
```

### Uso

Pulsa los números y los operadores para construir la operación. `C` borra la pantalla y `=` muestra el resultado. La pantalla se ajusta automáticamente para no truncar números largos.

### Estructura del proyecto

```text
flutter-minimalist-calculator/
├── lib/
│   └── main.dart        # Interfaz, estado y lógica de la calculadora
├── test/                # Pruebas de widgets
├── android/ · ios/ · web/ · windows/ · linux/ · macos/
├── pubspec.yaml
├── LICENSE
└── README.md
```

### Licencia

**MIT** — consulta [LICENSE](LICENSE).

---

## English

### Table of contents

- [Overview](#overview)
- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Project structure](#project-structure)
- [License](#license)

### Overview

A minimalist **Flutter** calculator inspired by iOS design: large numbers, high contrast and no unnecessary decoration. One codebase runs on Android, iOS, desktop and the web.

### Features

- **Basic operations**: addition, subtraction, multiplication and division.
- **Responsive design**: adapts to phones, tablets, desktop and browsers.
- **Clean interface**: clear typography, contrasting colours and comfortable tap targets.
- **Error handling**: division by zero and invalid input are caught without crashing.
- **No external dependencies**: just the Flutter SDK.

### Requirements

- [Flutter SDK](https://docs.flutter.dev/get-started/install) installed.
- A configured emulator, a connected device, or Chrome for the web build.

### Installation

```bash
git clone https://github.com/alberto2005-coder/flutter-minimalist-calculator.git
cd flutter-minimalist-calculator
flutter pub get
flutter run
```

Useful variants:

```bash
flutter run -d chrome        # web build
flutter build apk --release  # Android
flutter build web            # static site in build/web
```

### Usage

Tap numbers and operators to build the expression. `C` clears the display and `=` shows the result. The display shrinks automatically so long numbers are not truncated.

### Project structure

```text
flutter-minimalist-calculator/
├── lib/
│   └── main.dart        # UI, state and calculator logic
├── test/                # Widget tests
├── android/ · ios/ · web/ · windows/ · linux/ · macos/
├── pubspec.yaml
├── LICENSE
└── README.md
```

### License

**MIT** — see [LICENSE](LICENSE).
