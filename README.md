# DRP Task - Logistics App

A Flutter-based logistics management app that allows users to manage trips, vehicles, and drivers efficiently. The app demonstrates the use of **Provider** for state management, **ScreenUtil** for responsive UI, and structured Flutter architecture.

---

## Features

### 🚛 Trips
- View a list of trips with driver, vehicle, pickup, and drop-off locations
- Filter trips by status: Pending, In Progress, Completed
- Search trips by driver name or vehicle
- Update trip status from the trip details page

### 🚗 Vehicles
- View a list of vehicles with name/number, type, and availability status
- Vehicle details include assigned driver and current trip (if any)

### 👨‍💼 Drivers
- View a list of drivers with name, license, and current status
- Driver details include assigned vehicle and current trip (if any)

### 🧭 Navigation
- BottomNavigationBar to switch between Trips, Vehicles, and Drivers screens

---

## 📁 Folder Structure

```
lib/
│
├── main.dart
│
├── core/
│   ├── theme/
│   └── utils/
│
├── features/
│   ├── trips/
│   ├── vehicles/
│   └── drivers/
│
└── README.md
```

---

## 🚀 Getting Started

### Prerequisites
- Flutter SDK >= 3.0.0
- Dart SDK >= 2.17.0

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/KhalidAbdelrazek/DRP-Task.git
   cd DRP-Task
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Run the app on your desired platform:**
   ```bash
   flutter run
   ```

---

## 📦 Dependencies

| Package | Description |
|---------|-------------|
| `provider` | State management solution |
| `flutter_screenutil` | Responsive UI utilities |

### Add to your `pubspec.yaml`:
```yaml
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.0.5
  flutter_screenutil: ^5.9.0
```

---

## 🏗️ Architecture

The app follows a feature-based architecture with separation of concerns:

- **Core**: Contains shared utilities, themes, and constants
- **Features**: Organized by domain (trips, vehicles, drivers)
- **State Management**: Provider pattern for reactive state updates
- **Responsive Design**: ScreenUtil for consistent UI across devices

---

## 📱 Screenshots

*Add your app screenshots here*

---

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 👨‍💻 Author

**Khalid Abdelrazek**
- GitHub: [@KhalidAbdelrazek](https://github.com/KhalidAbdelrazek)

---

## 📞 Support

If you have any questions or run into issues, please open an issue on GitHub.
