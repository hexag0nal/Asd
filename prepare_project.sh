#!/bin/sh
# Prepare the Flutter project: generate android/ios folders if missing, fetch packages.
flutter pub get
if [ ! -d "android" ]; then
  echo "android/ not found — running flutter create . to generate platform folders"
  flutter create .
fi
flutter pub get
echo "Done. Now run flutter build apk --release (or use CI)"
