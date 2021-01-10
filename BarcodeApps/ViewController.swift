//
//  ViewController.swift
//  BarcodeApps
//
//  Created by しゅん on 2021/01/10.
//

import UIKit
// 以下を追加(ライブラリ)
import RSBarcodes_Swift
import AVFoundation

class ViewController: UIViewController {
    
    // コード文字列
    let studentCode:String = "20183060"
    // 参照させ続けたいためweakを削除
    @IBOutlet var barcode: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print ("バーコードを生成:" + studentCode)
        
        // バーコードを生成(nilだとしてもアンラップしたものして扱うため!を付与)
        let code:UIImage = RSUnifiedCodeGenerator.shared.generateCode(studentCode, machineReadableCodeObjectType: AVMetadataObject.ObjectType.code128.rawValue)!
        
        // バーコードを画像化
        barcode.image = code
    }
}

