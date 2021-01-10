# 【iOSゼミ】バーコードアプリ
[![issues](https://img.shields.io/github/issues/shun-shun/iOS-barcodeApp)](https://img.shields.io/github/issues/shun-shun/iOS-barcodeApp)
[![forks](https://img.shields.io/github/forks/shun-shun/iOS-barcodeApp)](https://img.shields.io/github/forks/shun-shun/iOS-barcodeApp)
[![stars](https://img.shields.io/github/stars/shun-shun/iOS-barcodeApp)](https://img.shields.io/github/stars/shun-shun/iOS-barcodeApp)
[![lisence](https://img.shields.io/github/license/shun-shun/iOS-barcodeApp)](https://img.shields.io/github/license/shun-shun/iOS-barcodeApp)
## 目的
iOSゼミ生が参考するためのバーコードアプリを作成です。動作確認やソースを確認しながらご覧ください。  
**ただバーコードが表示されるアプリです**  
私が利用したライブラリは[こちら](https://github.com/yeahdongcn/RSBarcodes_Swift)

## 導入方法
1. [CocoaPods](http://cocoapods.org)に以下のライブラリを追加してください

```ruby
# required by Cocoapods 0.36.0.rc.1 for Swift Pods
use_frameworks!
# 以下を追加
pod 'RSBarcodes_Swift', '~> 5.1.0'
```

2. 次のライブラリをインポートします

``` swift
import RSBarcodes_Swift
import AVFoundation
```

3. バーコードを生成したい場合は、以下のようになります。
```
RSUnifiedCodeGenerator.shared.generateCode("20201010", machineReadableCodeObjectType: AVMetadataObject.ObjectType.code128.rawValue)!
```
これらのソースはプロジェクトにありますのでご確認ください。

## 注意
1. 以下のバージョンにて作成しております。
- Xcode：12.3
- Swift:5.3.2
※記載以外のXcode、もしくはSwiftのバージョンでは動作しない可能性があります。ご了承ください。

2. このプロジェクトはMIT LICENSEを取得しております。  
一定の条件の下でソフトウェアの使用、複製、改変、（複製物または二次的著作物の）再頒布を認めます。  
ご利用される場合はご注意ください。 詳しくは[こちら](https://qiita.com/shibukk/items/67ad0a5eda5a94e5c032)

## License

    The MIT License (MIT)

    Copyright (c) 2012-2014 P.D.Q.

    Permission is hereby granted, free of charge, to any person obtaining a copy of
    this software and associated documentation files (the "Software"), to deal in
    the Software without restriction, including without limitation the rights to
    use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
    the Software, and to permit persons to whom the Software is furnished to do so,
    subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
    FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
    COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
    IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
    CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

    Copyright (c) 2020 shun.g

    Permission is hereby granted, free of charge, to any person obtaining a copy of 
    this software and associated documentation files (the "Software"), to deal in 
    the Software without restriction, including without limitation the rights to 
    use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of 
    the Software, and to permit persons to whom the Software is furnished to do so, 
    subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all 
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS 
    FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT 
    HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF 
    CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE 
    OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
