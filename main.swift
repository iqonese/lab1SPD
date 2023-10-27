

// Modern AudioPlayer interface (Target)
protocol ModernAudioPlayer {
    func play(file: String)
}


// Client code
let legacyAudioPlayer = AudioPlayer()
let audioPlayerAdapter = AudioPlayerAdapter(legacyAudioPlayer)
audioPlayerAdapter.play(file: "song.mp3")
