//
//  ViewController.swift
//  Music
//
//  Created by 吉田郭冶 on 2018/10/22.
//  Copyright © 2018年 吉田郭冶. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //シンバルの音源ファイルを指定
    let cymbalPath = Bundle.main.bundleURL.appendingPathComponent("cymbal.mp3")
    //シンバル用のプレイヤーインスタンスを生成
    var cymbalPlayer = AVAudioPlayer()

    @IBAction func cymbal(_ sender: Any) {
        do{
            cymbalPlayer = try AVAudioPlayer(contentsOf: cymbalPath,fileTypeHint: nil)
            cymbalPlayer.play()
        }catch{
            print("シンバルでエラーが発生しました")
        }
        }
    let guitarPath = Bundle.main.bundleURL.appendingPathComponent("guitar.mp3")
    //シンバル用のプレイヤーインスタンスを生成
    var guitarPlayer = AVAudioPlayer()
    

    @IBAction func guitar(_ sender: Any) {
        do{
            guitarPlayer = try AVAudioPlayer(contentsOf: guitarPath,fileTypeHint: nil)
            guitarPlayer.play()
        }catch{
            print("ギターでエラーが発生しました。")
        }
        }
    
    
    
}
    


