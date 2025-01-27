# Egg Timer App 🥚🍳

A simple iOS app to help you cook the perfect eggs. Choose between soft, medium, or hard boiled eggs, and let the timer do the work. This app provides a progress bar that shows the remaining time, and plays an alarm sound when the timer is up.

## Features

- Choose between 3 types of egg hardness: Soft, Medium, and Hard.
- Visual progress bar that updates in real-time as the timer counts down.
- Alarm sound plays when the timer reaches zero.
- Reset functionality to start the timer over.

## How to Use

1. When you open the app, you will see the title "How do you like your eggs?".
2. Below the title, there are 3 buttons for each egg type: Soft, Medium, and Hard.
3. Tap on one of the buttons to select your preferred egg type.
4. The progress bar will start to fill as the timer counts down.
5. When the timer reaches zero, the alarm sound will play, and the title will change to "Time's Up!".

## Demo

<p align="center">
  <img src="https://github.com/muhammedmustafageldi/My-ScreenShots-Files/blob/main/Screnshots/EggTimer/1.png" alt="Xylophone Demo" width="300">
  <img src="https://github.com/muhammedmustafageldi/My-ScreenShots-Files/blob/main/Screnshots/EggTimer/2.png" alt="Xylophone Demo" width="300">
  <img src="https://github.com/muhammedmustafageldi/My-ScreenShots-Files/blob/main/Screnshots/EggTimer/3.png" alt="Xylophone Demo" width="300">
</p>

## Code Explanation

The app is built using UIKit and AVFoundation. Here is an overview of how the code works:

- `eggTimes`: A dictionary that holds the cooking time for each egg type (in minutes).
- `totalTime`: The total time selected based on the egg type.
- `secondsPassed`: Tracks the elapsed time for the timer.
- `titleLabel`: Displays the egg type selected or "Time's Up!" when the timer finishes.
- `timerProgressView`: A progress bar that shows the progress of the timer.
- `playSound`: Plays an audio file when the timer is up.

### Key Functions

- **`hardnesSelected(_:)`**: This function is triggered when a user selects an egg type. It sets the `totalTime` and starts the timer.
- **`updateCounter()`**: This function updates the progress bar every second. When the timer finishes, it plays the alarm sound.
- **`resetProgress()`**: Resets the progress bar and the timer when a new egg type is selected.
- **`playSound(_:)`**: Plays an alarm sound when the timer reaches zero. It uses `AVAudioPlayer` to play the sound.

## Requirements

- iOS 11.0+
- Xcode 12.0 or later

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

If you like this project, don't forget to give it a star! ✨
