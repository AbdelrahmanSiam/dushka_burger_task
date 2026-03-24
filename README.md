# 🍔 Dushka Burger — Food Ordering App

> A Flutter mobile application built as a technical assessment for **Trust Development**.  
> Implements a complete food ordering experience across 4 screens with Clean Architecture and modern Flutter best practices.

---

## 📱 Screenshots

| Language Selection | Home / Categories | Product Details | Cart |
|:-:|:-:|:-:|:-:|
| ![Language](screenshots/language.png) | ![Home](screenshots/home.png) | ![Product](screenshots/product_details.png) | ![Cart](screenshots/cart.png) |

---

## ✨ Features

- 🌍 **EN / AR Localization** with full RTL support
- 🗂️ **Categories Screen** with horizontal tab navigation
- 🍔 **Product Details Screen** with addon groups and quantity selector
- 🛒 **Cart Screen** with quantity controls, coupon input, and payment summary
- 💀 **Skeleton Loading** — built without any external package (pure Flutter animation)
- 🎬 **Animations** — cart bounce, tab transitions, quantity switcher
- 📐 **Fully Responsive UI** — no hardcoded pixel values

---

## 🏗️ Architecture

This project follows **Clean Architecture** with strict layer separation:

```
lib/
├── core/
│   ├── constants/       # API URLs, Hive keys, app constants
│   ├── di/              # Dependency injection (get_it)
│   ├── error/           # Failures & Exceptions
│   ├── network/         # Dio API client with Basic Auth
│   ├── routing/         # GoRouter navigation
│   ├── storage/         # Hive local storage
│   ├── theme/           # Colors & ThemeData
│   └── utils/           # Responsive helper
│
└── features/
    ├── language/         # Locale Cubit + Language selection screen
    ├── categories/       # Home screen with product listing
    │   ├── data/         # Models, DataSources, Repository impl
    │   ├── domain/       # Entities, Repository interface, Use Cases
    │   └── presentation/ # Cubit, Pages, Widgets
    ├── product_details/  # Product info + addon groups
    │   ├── data/
    │   ├── domain/
    │   └── presentation/
    └── cart/             # Cart management
        ├── data/
        ├── domain/
        └── presentation/
```

### Data Flow

```
UI → Cubit → UseCase → Repository (interface)
                            ↓
                    RepositoryImpl → DataSource → API / Hive
```

---

## 🛠️ Tech Stack

| Category | Technology | Why |
|----------|-----------|-----|
| Framework | Flutter | Cross-platform mobile |
| State Management | flutter_bloc (Cubit) | Predictable, testable state |
| Architecture | Clean Architecture | Separation of concerns |
| DI | get_it | Lightweight service locator |
| Navigation | go_router | Declarative routing |
| Network | dio | HTTP client with interceptors |
| Local Storage | hive_flutter | Fast key-value storage (no SharedPreferences) |
| Error Handling | dartz (Either) | Functional error handling |
| Localization | Flutter Intl (ARB) | Generated S.of(context).key |
| Images | cached_network_image | Efficient image caching |
| Icons | iconsax_flutter | Clean modern icon set |

---

## 🚀 Getting Started

### Prerequisites
```
Flutter SDK >= 3.0.0
Dart >= 3.0.0
```

### Installation

```bash
# 1. Clone the repository
git clone https://github.com/AbdelrahmanSiam/dushka_burger_task.git

# 2. Navigate to the project
cd dushka_burger_task

# 3. Install dependencies
flutter pub get

# 4. Generate localization files
flutter gen-l10n

# 5. Run the app
flutter run
```

---

## 🔌 API Integration

The app is built to consume the **Dushka Burger WordPress REST API**.

| # | Endpoint | Method | Description |
|---|----------|--------|-------------|
| 1 | `guestcart/v1/guestid` | GET | Get guest session ID |
| 2 | `custom-api/v1/categories` | GET | Get all categories with products |
| 3 | `custom-api/v1/products?product_id={id}` | GET | Get product details |
| 4 | `proaddon/v1/get2/?product_id2={id}` | GET | Get product addons |
| 5 | `guestcart/v1/cart?guest_id={id}` | GET | Get cart items |
| 6 | `guestcart/v1/cart` | POST | Add item to cart |
| 7 | `guestcart/v1/cart` | DELETE | Remove item from cart |

### ⚠️ Note on API Status

The API credentials provided in the task expired before the submission deadline.  
The app is **fully built and ready for live integration** — the architecture is clean and the data layer is completely separated from the UI.

To connect the real API, simply update the datasource implementations in:
```
lib/features/*/data/datasources/
```

---

## 🎨 UI Highlights

### Skeleton Loading (No Package)
Built using pure `AnimationController` + `Opacity` — no shimmer package needed.

### Responsive Design
All sizing uses a custom `Responsive` helper:
```dart
Responsive.wp(context, 4)   // 4% of screen width
Responsive.hp(context, 2)   // 2% of screen height
Responsive.sp(context, 14)  // scaled font size
```

### Animations
- Cart FAB bounce when item is added
- `AnimatedSwitcher` on quantity numbers
- `AnimatedContainer` on category tab selection
- `AnimatedScale` on cart badge appearance

---

## 📋 SOLID Principles Applied

| Principle | Example |
|-----------|---------|
| **S** — Single Responsibility | Each widget has one job: `CartItemCard`, `QuantitySelector`, `AddonGroupWidget` |
| **O** — Open/Closed | `Failure` is abstract — add new types without modifying existing |
| **L** — Liskov Substitution | `CategoryModel extends CategoryEntity` — used anywhere entity is expected |
| **I** — Interface Segregation | Each repository interface has focused, minimal methods |
| **D** — Dependency Inversion | Cubits depend on Use Case abstractions, not concrete implementations |

---

## 👨‍💻 Author

**Abdelrahman Siam**  
Flutter Mobile Application Developer

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue?logo=linkedin)](https://linkedin.com/in/abdelrahman-siam-2a66072ba)
[![GitHub](https://img.shields.io/badge/GitHub-Follow-black?logo=github)](https://github.com/AbdelrahmanSiam)

📧 syamabdo382@gmail.com  
📱 +201282387620
