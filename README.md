# Doctor Booking App

![doctor app flutter](https://user-images.githubusercontent.com/55942632/75431076-50810d00-5972-11ea-8c12-b0f82073f781.png)

A beautiful Doctor Booking App UI built with Flutter. Browse doctor specialities, view doctor profiles, and book consultations — all in a clean, modern interface.

## Features

- Browse doctor categories (Adults, Children, Women, Men)
- View speciality cards (Cough & Cold, Heart Specialist, Diabetes Care)
- Doctor profile with contact options (Email, Call, Video Call)
- Doctor schedule and daily posts
- Clean Material 3 design

## Getting Started

### Prerequisites

- Flutter 3.10 or higher
- Dart 3.0 or higher

### Installation

```bash
git clone https://github.com/theindianappguy/doctor_booking_app.git
cd doctor_booking_app
flutter pub get
flutter run
```

## Project Structure

```
lib/
├── main.dart                 # App entry point with MaterialApp setup
├── data/
│   └── data.dart             # Sample speciality data
├── model/
│   └── speciality.dart       # SpecialityModel class
└── views/
    ├── home.dart             # Home page with categories and doctor list
    └── doctor_info.dart      # Doctor detail page with profile and schedule
```

## Built With

- [Flutter](https://flutter.dev/) — UI toolkit for building natively compiled applications
- Material 3 Design
- Dart 3 with sound null safety

## Created & Maintained By

[Sanskar Tiwari](https://github.com/theindianappguy) ([YouTube](https://www.youtube.com/c/SanskarTiwari))

## License

```
Copyright 2020 Sanskar Tiwari

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
