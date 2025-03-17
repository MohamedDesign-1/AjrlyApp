
# 🚗 Ajirly – Peer-to-Peer Car Rental App  

**Ajirly** is a **secure, commission-free** peer-to-peer car rental platform that connects car owners with renters directly. Built with **Flutter, Firebase, and REST APIs**, it provides an easy-to-use, transparent, and secure rental experience.  

---

## 📌 Features  
✔️ **User Authentication** (Firebase Auth, Google & Phone login)  
✔️ **Car Listing & Management** (Owners can add, edit, and remove listings)  
✔️ **Real-Time Booking & Approvals**  
✔️ **Secure Payments** (Integrated payment gateways)  
✔️ **Identity Verification & User Reviews**  
✔️ **Push Notifications for Booking Updates**  
✔️ **Admin Panel for Monitoring & Support**  

---

## 🚀 Technologies Used  
- **Frontend:** Flutter & Dart  
- **Backend:** REST APIs
- **API Development:** REST APIs  
- **UI/UX Design:** Figma  
- **Payment Integration:** Stripe / PayPal (or preferred gateway)  
- **Security:** End-to-End Encryption, Secure Authentication  

---

## 📂 Project Structure  
```
├── .gitignore
├── .metadata
├── README.md
├── analysis_options.yaml
├── android
    ├── .gitignore
    ├── app
    │   ├── build.gradle
    │   └── src
    │   │   ├── debug
    │   │       └── AndroidManifest.xml
    │   │   ├── main
    │   │       ├── AndroidManifest.xml
    │   │       ├── kotlin
    │   │       │   └── com
    │   │       │   │   └── example
    │   │       │   │       └── ajrly
    │   │       │   │           └── MainActivity.kt
    │   │       ├── logo.png
    │   │       ├── play_store_512.png
    │   │       └── res
    │   │       │   ├── drawable-v21
    │   │       │       └── launch_background.xml
    │   │       │   ├── drawable
    │   │       │       └── launch_background.xml
    │   │       │   ├── mipmap-anydpi-v26
    │   │       │       └── ic_launcher.xml
    │   │       │   ├── mipmap-hdpi
    │   │       │       ├── ic_launcher.png
    │   │       │       ├── ic_launcher_background.png
    │   │       │       ├── ic_launcher_foreground.png
    │   │       │       └── ic_launcher_monochrome.png
    │   │       │   ├── mipmap-mdpi
    │   │       │       ├── ic_launcher.png
    │   │       │       ├── ic_launcher_background.png
    │   │       │       ├── ic_launcher_foreground.png
    │   │       │       └── ic_launcher_monochrome.png
    │   │       │   ├── mipmap-xhdpi
    │   │       │       ├── ic_launcher.png
    │   │       │       ├── ic_launcher_background.png
    │   │       │       ├── ic_launcher_foreground.png
    │   │       │       └── ic_launcher_monochrome.png
    │   │       │   ├── mipmap-xxhdpi
    │   │       │       ├── ic_launcher.png
    │   │       │       ├── ic_launcher_background.png
    │   │       │       ├── ic_launcher_foreground.png
    │   │       │       └── ic_launcher_monochrome.png
    │   │       │   ├── mipmap-xxxhdpi
    │   │       │       ├── ic_launcher.png
    │   │       │       ├── ic_launcher_background.png
    │   │       │       ├── ic_launcher_foreground.png
    │   │       │       └── ic_launcher_monochrome.png
    │   │       │   ├── values-night
    │   │       │       └── styles.xml
    │   │       │   └── values
    │   │       │       └── styles.xml
    │   │   └── profile
    │   │       └── AndroidManifest.xml
    ├── build.gradle
    ├── gradle.properties
    ├── gradle
    │   └── wrapper
    │   │   └── gradle-wrapper.properties
    └── settings.gradle
├── assets
    └── images
    │   └── logo.png
├── ios
    ├── .gitignore
    ├── Flutter
    │   ├── AppFrameworkInfo.plist
    │   ├── Debug.xcconfig
    │   └── Release.xcconfig
    ├── Runner.xcodeproj
    │   ├── project.pbxproj
    │   ├── project.xcworkspace
    │   │   ├── contents.xcworkspacedata
    │   │   └── xcshareddata
    │   │   │   ├── IDEWorkspaceChecks.plist
    │   │   │   └── WorkspaceSettings.xcsettings
    │   └── xcshareddata
    │   │   └── xcschemes
    │   │       └── Runner.xcscheme
    ├── Runner.xcworkspace
    │   ├── contents.xcworkspacedata
    │   └── xcshareddata
    │   │   ├── IDEWorkspaceChecks.plist
    │   │   └── WorkspaceSettings.xcsettings
    ├── Runner
    │   ├── AppDelegate.swift
    │   ├── Assets.xcassets
    │   │   ├── AppIcon.appiconset
    │   │   │   ├── AppIcon-20@2x.png
    │   │   │   ├── AppIcon-20@2x~ipad.png
    │   │   │   ├── AppIcon-20@3x.png
    │   │   │   ├── AppIcon-20~ipad.png
    │   │   │   ├── AppIcon-29.png
    │   │   │   ├── AppIcon-29@2x.png
    │   │   │   ├── AppIcon-29@2x~ipad.png
    │   │   │   ├── AppIcon-29@3x.png
    │   │   │   ├── AppIcon-29~ipad.png
    │   │   │   ├── AppIcon-40@2x.png
    │   │   │   ├── AppIcon-40@2x~ipad.png
    │   │   │   ├── AppIcon-40@3x.png
    │   │   │   ├── AppIcon-40~ipad.png
    │   │   │   ├── AppIcon-60@2x~car.png
    │   │   │   ├── AppIcon-60@3x~car.png
    │   │   │   ├── AppIcon-83.5@2x~ipad.png
    │   │   │   ├── AppIcon@2x.png
    │   │   │   ├── AppIcon@2x~ipad.png
    │   │   │   ├── AppIcon@3x.png
    │   │   │   ├── AppIcon~ios-marketing.png
    │   │   │   ├── AppIcon~ipad.png
    │   │   │   ├── Contents.json
    │   │   │   ├── Icon-App-1024x1024@1x.png
    │   │   │   ├── Icon-App-20x20@1x.png
    │   │   │   ├── Icon-App-20x20@2x.png
    │   │   │   ├── Icon-App-20x20@3x.png
    │   │   │   ├── Icon-App-29x29@1x.png
    │   │   │   ├── Icon-App-29x29@2x.png
    │   │   │   ├── Icon-App-29x29@3x.png
    │   │   │   ├── Icon-App-40x40@1x.png
    │   │   │   ├── Icon-App-40x40@2x.png
    │   │   │   ├── Icon-App-40x40@3x.png
    │   │   │   ├── Icon-App-60x60@2x.png
    │   │   │   ├── Icon-App-60x60@3x.png
    │   │   │   ├── Icon-App-76x76@1x.png
    │   │   │   ├── Icon-App-76x76@2x.png
    │   │   │   └── Icon-App-83.5x83.5@2x.png
    │   │   └── LaunchImage.imageset
    │   │   │   ├── AppIcon-20@2x.png
    │   │   │   ├── AppIcon-20@2x~ipad.png
    │   │   │   ├── AppIcon-20@3x.png
    │   │   │   ├── AppIcon-20~ipad.png
    │   │   │   ├── AppIcon-29.png
    │   │   │   ├── AppIcon-29@2x.png
    │   │   │   ├── AppIcon-29@2x~ipad.png
    │   │   │   ├── AppIcon-29@3x.png
    │   │   │   ├── AppIcon-29~ipad.png
    │   │   │   ├── AppIcon-40@2x.png
    │   │   │   ├── AppIcon-40@2x~ipad.png
    │   │   │   ├── AppIcon-40@3x.png
    │   │   │   ├── AppIcon-40~ipad.png
    │   │   │   ├── AppIcon-60@2x~car.png
    │   │   │   ├── AppIcon-60@3x~car.png
    │   │   │   ├── AppIcon-83.5@2x~ipad.png
    │   │   │   ├── AppIcon@2x.png
    │   │   │   ├── AppIcon@2x~ipad.png
    │   │   │   ├── AppIcon@3x.png
    │   │   │   ├── AppIcon~ios-marketing.png
    │   │   │   ├── AppIcon~ipad.png
    │   │   │   ├── Contents.json
    │   │   │   ├── LaunchImage.png
    │   │   │   ├── LaunchImage@2x.png
    │   │   │   ├── LaunchImage@3x.png
    │   │   │   └── README.md
    │   ├── Base.lproj
    │   │   ├── LaunchScreen.storyboard
    │   │   └── Main.storyboard
    │   ├── Info.plist
    │   └── Runner-Bridging-Header.h
    └── RunnerTests
    │   └── RunnerTests.swift
├── lib
    ├── config
    │   └── routes
    │   │   ├── route_manger.dart
    │   │   └── routes.dart
    ├── core
    │   ├── api
    │   │   ├── api_manager.dart
    │   │   └── end_pointes.dart
    │   ├── components
    │   │   ├── custom_all_screens_appbar.dart
    │   │   ├── custom_appbar.dart
    │   │   ├── custom_botton.dart
    │   │   ├── custom_password_filed.dart
    │   │   ├── custom_text_filed.dart
    │   │   ├── general_buttom.dart
    │   │   ├── not_have_items.dart
    │   │   ├── spinner_button.dart
    │   │   └── validators.dart
    │   ├── errors
    │   │   ├── execptions.dart
    │   │   └── failures.dart
    │   └── utils
    │   │   ├── assets_manager.dart
    │   │   ├── color_mananger.dart
    │   │   ├── constants_manager.dart
    │   │   ├── font_manager.dart
    │   │   ├── group_fees_card.dart
    │   │   ├── shared_pref_utils.dart
    │   │   ├── short_text_utils.dart
    │   │   ├── styles_manager.dart
    │   │   ├── toast_utils.dart
    │   │   ├── values_manager.dart
    │   │   └── warning_screen.dart
    ├── features
    │   └── splash_screen
    │   │   └── presentation
    │   │       └── pages
    │   │           └── splash_screen.dart
    └── main.dart
├── pubspec.lock
├── pubspec.yaml
└── test
    └── widget_test.dart
```

---

## 🛠️ Setup & Installation  

### 1️⃣ Clone the Repository  
```bash
git clone https://github.com/your-username/ajirly.git
cd ajirly
```

### 2️⃣ Install Dependencies  
```bash
flutter pub get
```

### 3️⃣ Set Up Firebase  
- Create a Firebase project  
- Enable **Authentication**, **Firestore**, and **Cloud Functions**  
- Download **google-services.json** (Android) & **GoogleService-Info.plist** (iOS) and place them in the project  

### 4️⃣ Run the App  
```bash
flutter run
```

---

## 📢 Contribution Guidelines  
👥 We welcome contributions! Feel free to submit **pull requests**, report bugs, or suggest improvements.  

1. Fork the repo 🍴  
2. Create a new branch:  
   ```bash
   git checkout -b feature-branch
   ```
3. Make your changes & commit:  
   ```bash
   git commit -m "Added new feature"
   ```
4. Push to your branch:  
   ```bash
   git push origin feature-branch
   ```
5. Open a **Pull Request** 🚀  

---

## 📄 License  
This project is licensed under the **MMA License**.  

---

