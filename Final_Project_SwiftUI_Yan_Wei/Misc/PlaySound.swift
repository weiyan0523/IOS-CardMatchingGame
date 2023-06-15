//
//  PlaySound.swift
//  Final_Project_SwiftUI_Yan_Wei
//
//  Created by Wei Yan on 11/28/22.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func PlaySound(sound: String, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            //Infinite loop
            audioPlayer?.numberOfLoops = -1
            audioPlayer?.play()
           
        }catch{
            print("Can not find the mp3 file")
        }
    }
}
