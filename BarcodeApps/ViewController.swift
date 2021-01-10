/*
The MIT License (MIT)

Copyright (c) 2015 bpyamasinn.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
*/

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

