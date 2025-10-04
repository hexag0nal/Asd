# LoriBudget - Flutter Prototype (ZIP)

This archive contains the Flutter source code for *LoriBudget* (dark theme, Turkish default).
It includes the `lib/` folder and `pubspec.yaml`. To produce Android APK/AAB you have two options:

1. **Local: generate platform folders & build**
   - Requirements: Flutter SDK, Android SDK, Java (keytool)
   - Steps:
     ```bash
     # unzip and enter project folder
     flutter pub get
     # If android/ or ios/ folders are missing, run:
     flutter create .
     flutter pub get
     # Then build debug apk
     flutter build apk --debug
     # Or build release (create keystore and key.properties first)
     flutter build apk --release --split-per-abi
     ```

2. **Codemagic (or any CI):**
   - Upload this ZIP to Codemagic *Upload your app manually*.
   - If Codemagic cannot find android/ folder, add a pre-build script step to run `flutter create .` and `flutter pub get`.
   - Or generate android locally then ZIP full project including `android/` and upload.

Notes:
- Default app language is Turkish.
- The project is local-only (SQLite) and prototype-ready.
- If you want, I can generate a full android/ folder and resend a larger ZIP (will be heavier).
