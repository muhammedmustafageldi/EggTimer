import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
    var timer: Timer?
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var timerProgressView: UIProgressView!
    var totalTime = 0
    var secondsPassed = 0
    var player: AVAudioPlayer?
    
    @IBAction func hardnesSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle
        if hardness == "Hard" {
            totalTime = eggTimes["Hard"]! * 60
        } else if hardness == "Medium" {
            totalTime = eggTimes["Medium"]! * 60
        } else if hardness == "Soft" {
            totalTime = eggTimes["Soft"]! * 60
        }
        // Change title to hardness level
        titleLabel.text = hardness
        // Reset progress
        resetProgress()
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    @objc func updateCounter() {
        //example functionality
        if secondsPassed < totalTime {
            secondsPassed += 1
            timerProgressView.progress = calculatePercentage(secondsPassed)
        } else {
            timer?.invalidate()
            titleLabel.text = "Time's Up!"
            playSound("alarm_sound")
        }
    }
    
    private func resetProgress() {
        timerProgressView.progress = 0
        timer?.invalidate()
        secondsPassed = 0
    }
    
    private func playSound(_ soundName: String) {
        guard let url = Bundle.main.url(forResource: soundName, withExtension: "mp3") else {
            print("File is not found.")
            return
        }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch {
            print("An error occurred while playing the audio file: \(error.localizedDescription)")
        }
    }
    
    
    private func calculatePercentage(_ secondsPassed: Int) -> Float {
        return Float(secondsPassed) / Float(totalTime)
    }
    
}
