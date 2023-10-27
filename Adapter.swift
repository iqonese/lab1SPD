//
//  Adapter.swift
//  adapterPattern
//
//  Created by Said Tura Saidazimov on 27.10.2023.
//

// Adapter to make AudioPlayer compatible with ModernAudioPlayer

class AudioPlayerAdapter: ModernAudioPlayer {
    private var audioPlayer: AudioPlayer
    
    init(_ audioPlayer: AudioPlayer) {
        self.audioPlayer = audioPlayer
    }
    
    func play(file: String) {
        print("Adapter is playing audio with modern interface: \(file)")
        audioPlayer.playAudio(file: file)
    }
}
