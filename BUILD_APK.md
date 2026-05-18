# Building APK for Honey Cave

## Prerequisites

1. **Godot Engine 3.4+**
   - Download: https://godotengine.org/download/3.x

2. **Android SDK** (via Android Studio)
   - Download: https://developer.android.com/studio
   - Minimum API Level: 21 (Android 5.0)

3. **Java JDK 8+**
   - Download: https://www.oracle.com/java/technologies/javase-jdk11-downloads.html

## Steps to Build APK

### 1. Configure Godot for Android

- Open Godot
- Go to **Project → Project Settings → Export**
- Click **Add Platform → Android**
- Set paths for:
  - Android SDK Path: (e.g., `C:\Android\sdk` or `/home/user/Android/Sdk`)
  - Java SDK Path: (e.g., `C:\Program Files\Java\jdk-11` or `/usr/lib/jvm/java-11`)

### 2. Configure Export Settings

In the Export Android dialog:
- **Package:** `com.example.honeycave`
- **Version:** `1.0`
- **Orientation:** Portrait or Landscape (your choice)
- **Permissions:** Internet (only if needed)

### 3. Export as APK

- Click **Export Project**
- Choose where to save (e.g., `honey_cave.apk`)
- Wait for compilation to complete

### 4. Install on Android Device

**Via adb (Android Debug Bridge):**
```bash
adb install honey_cave.apk
```

**Via USB:**
1. Connect tablet via USB cable
2. Enable "Developer Mode" and "USB Debugging" on tablet
3. Godot will detect device automatically
4. Click "Deploy to Device" in export dialog

### 5. Test on Tablet

- Open the installed app
- Use arrows/buttons to move
- Activate checkpoints
- Open the door

## Troubleshooting

### "Android SDK not found"
- Install Android Studio
- Copy SDK path to Godot settings

### "JDK not found"
- Install Java JDK 8 or higher
- Set correct path in Godot

### App crashes on start
- Check Godot console for errors
- Ensure minimum API level is 21+

## Recommended

For easy APK building, use:
- **BuildFarm** (cloud Godot export)
- **GitHub Actions** (automated builds)

---

**Need help?** Check Godot official docs:
https://docs.godotengine.org/en/3.4/getting_started/workflow/export/exporting_for_android.html
