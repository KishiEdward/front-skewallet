# Skewallet Frontend App

<div align="center">
  <img width="300" height="301" alt="Institut Teknologi dan Bisnis Bina Sarana Global" src="https://github.com/user-attachments/assets/1e84f66a-135b-4cf2-b07a-b2a9098ce119" width="200"/>
</div>

<div align="center">
Institut Teknologi dan Bisnis Bina Sarana Global <br>
FAKULTAS TEKNOLOGI INFORMASI & KOMUNIKASI <br>
https://global.ac.id/
</div>

## Project UAS

- Nim : 1123150045
- Nama : Dzidan Rafi Habibie
- Mata Kuliah : Pemrograman Mobile Lanjutan
- Kelas : TI-SE 23 M

## Deskripsi Project

Project ini adalah aplikasi frontend mobile untuk dompet digital Skewallet, dibangun menggunakan Flutter dengan bahasa Dart. Aplikasi ini menerapkan Clean Architecture (layer data, domain, presentation) dengan BLoC pattern untuk state management, serta terintegrasi dengan Firebase dan backend Skewallet (Go) untuk proses autentikasi, OTP, dan pembayaran. Aplikasi ini juga mendukung deep link dengan aplikasi Skenaid untuk alur checkout dan pembayaran lintas aplikasi.

## Demo Video

Lihat demo aplikasi dan alur fitur yang tersedia dalam video berikut.

**[Watch Full Demo on YouTube]()**

Alternative link: **[Google Drive Demo]()**

## Fitur Utama

- Autentikasi pengguna (login, register) dengan Firebase Authentication
- Splash screen dan onboarding
- Manajemen akun dan profil pengguna
- Top up saldo dompet digital
- Transfer saldo antar pengguna
- Riwayat transaksi (history)
- Pembayaran ke merchant
- Halaman sukses transaksi
- Deep link integration dengan aplikasi Skenaid untuk proses checkout dan callback pembayaran
- State management menggunakan BLoC pattern
- Dependency injection untuk manajemen service dan repository

## Teknologi yang Digunakan

- **[Flutter](https://flutter.dev/)** - Framework UI mobile cross-platform
- **[Dart](https://dart.dev/)** - Bahasa pemrograman
- **[flutter_bloc](https://pub.dev/packages/flutter_bloc)** - State management dengan BLoC pattern
- **[Firebase](https://firebase.google.com/)** - Authentication
- **[get_it](https://pub.dev/packages/get_it)** - Dependency injection
- **[go_router](https://pub.dev/packages/go_router)** - Navigasi dan routing

## Persyaratan Sistem

Pastikan perangkat Anda sudah memiliki:

- Flutter SDK (versi terbaru yang stabil)
- Android Studio / Xcode (untuk emulator/simulator)
- Firebase project yang sudah dikonfigurasi
- Backend Skewallet API sudah berjalan
- Git

## Cara Menjalankan Project

### 1. Clone Repository

```bash
git clone https://github.com/KishiEdward/front-skewallet.git
cd skewallet
```

### 2. Install Dependency

```bash
flutter pub get
```

### 3. Siapkan Firebase

- Buat project Firebase
- Aktifkan Authentication
- Download file `google-services.json` (Android) / `GoogleService-Info.plist` (iOS)
- Pastikan `firebase_options.dart` sudah sesuai dengan konfigurasi project Firebase Anda

### 4. Siapkan Konfigurasi Backend

Sesuaikan base URL API backend Skewallet pada file konfigurasi network di `lib/core/network`, contohnya:

```dart
const String baseUrl = "http://localhost:8081/v1";
```

### 5. Jalankan Aplikasi

```bash
flutter run
```

## Struktur Project

```bash
lib/
├── core/                        # Komponen inti yang digunakan lintas layer
│   ├── constants/
│   ├── error/
│   ├── network/
│   ├── router/
│   ├── services/
│   ├── theme/
│   └── utils/
├── data/                        # Layer data
│   ├── datasources/
│   │   ├── local/
│   │   └── remote/
│   ├── models/
│   └── repositories/
├── domain/                      # Layer domain (business logic)
│   ├── entities/
│   ├── repositories/
│   └── usecases/
│       ├── account/
│       ├── auth/
│       └── payment/
├── injection/                   # Dependency injection setup
├── presentation/                # Layer presentation (UI)
│   ├── blocs/
│   │   ├── account/
│   │   ├── auth/
│   │   ├── home/
│   │   └── payment/
│   └── pages/
│       ├── account/
│       ├── auth/
│       ├── history/
│       ├── home/
│       ├── merchant/
│       ├── payment/
│       ├── splash/
│       ├── success/
│       ├── topup/
│       ├── transfer/
│       └── widgets/
├── firebase_options.dart        # Konfigurasi Firebase
└── main.dart                    # Entry point aplikasi
```

## Arsitektur Aplikasi

Aplikasi ini menerapkan **Clean Architecture** dengan tiga layer utama:

- **Data Layer** - Mengelola sumber data lokal dan remote, model, serta implementasi repository
- **Domain Layer** - Berisi entities, kontrak repository, dan usecase yang merepresentasikan business logic (account, auth, payment)
- **Presentation Layer** - Berisi UI (pages) dan state management (blocs) yang menampilkan data ke pengguna

## Integrasi Deep Link

Aplikasi ini mendukung alur pembayaran lintas aplikasi bersama Skenaid:

- Aplikasi Skenaid memanggil skema `skewallet://pay` untuk membuka aplikasi Skewallet dan memproses pembayaran.
- Setelah transaksi selesai, Skewallet mengarahkan callback kembali ke Skenaid melalui skema `skenaid://payment-callback`.

## Lisensi

Project ini dilisensikan di bawah MIT License.

## Ucapan Terima Kasih

- [Flutter Community](https://flutter.dev/community)
- [Firebase](https://firebase.google.com/)
- [Bloc Library](https://bloclibrary.dev/)

---

<div align="center">
  <p>© 2026 Skewallet Frontend App. All rights reserved.</p>
</div>
