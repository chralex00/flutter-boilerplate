install:
	flutter pub get

lint:
	dart analyze .

clean:
	flutter clean

run:
	flutter run

android-apk-build:
	flutter build apk

android-appbundle-build:
	flutter build appbundle

windows-desktop-build:
	flutter build windows

web-build:
	flutter build web