import UIKit
import CoreGraphics
import PlaygroundSupport
import Darwin

let size100 = CGSize(width: 100, height: 100)
let view = UIView()
view.backgroundColor = UIColor.white
view.frame = CGRect(origin: .zero, size: CGSize(width: 400, height: 500))
PlaygroundPage.current.liveView = view

let layer = view.layer

let gradientLayer = CAGradientLayer()
gradientLayer.startPoint = .zero
gradientLayer.endPoint = CGPoint(x: 1, y: 1)
gradientLayer.colors = [
    UIColor.red.cgColor.copy(alpha: 0.1) as Any,
    UIColor.orange.cgColor.copy(alpha: 0.1) as Any,
    UIColor.yellow.cgColor.copy(alpha: 0.1) as Any,
    UIColor.green.cgColor.copy(alpha: 0.1) as Any,
    UIColor.blue.cgColor.copy(alpha: 0.1) as Any,
    UIColor.purple.cgColor.copy(alpha: 0.1) as Any,
]
gradientLayer.frame = layer.bounds
layer.addSublayer(gradientLayer)

let body = CALayer()
body.backgroundColor = UIColor(red: 160/255, green: 227/255, blue: 104/255, alpha: 1).cgColor
body.frame = CGRect(
    origin: CGPoint(x: 130, y: 220),
    size: CGSize(width: 150, height: 150)
)
body.cornerRadius = 75
layer.addSublayer(body)

let eye = CALayer()
eye.backgroundColor = UIColor.white.cgColor
eye.frame = CGRect(
    origin: CGPoint(x: 168, y: 252),
    size: CGSize(width: 73, height: 73)
)
eye.cornerRadius = 35
layer.addSublayer(eye)

let eye2 = CALayer()
eye2.backgroundColor = UIColor(red: 1/255, green: 127/255, blue: 72/255, alpha: 1).cgColor
eye2.frame = CGRect(
    origin: CGPoint(x: 183, y: 268),
    size: CGSize(width: 42, height: 42)
)
eye2.cornerRadius = 20
layer.addSublayer(eye2)

let eye3 = CALayer()
eye3.backgroundColor = UIColor.black.cgColor
eye3.frame = CGRect(
    origin: CGPoint(x: 191, y: 276),
    size: CGSize(width: 25, height: 25)
)
eye3.cornerRadius = 12
layer.addSublayer(eye3)

let eye4 = CALayer()
eye4.backgroundColor = UIColor.white.cgColor
eye4.frame = CGRect(
    origin: CGPoint(x: 210, y: 278),
    size: CGSize(width: 7, height: 7)
)
eye4.cornerRadius = 2
layer.addSublayer(eye4)

let mouth = CALayer()
mouth.backgroundColor = UIColor.black.cgColor
mouth.frame = CGRect(
    origin: CGPoint(x: 178, y: 335),
    size: CGSize(width: 50, height: 10)
)
mouth.cornerRadius = 17
layer.addSublayer(mouth)

let mouth1 = CALayer()
mouth1.backgroundColor =  UIColor(red: 160/255, green: 227/255, blue: 104/255, alpha: 1).cgColor
mouth1.frame = CGRect(
    origin: CGPoint(x: 182, y: 326),
    size: CGSize(width: 42, height: 14)
)
mouth1.cornerRadius = 13
layer.addSublayer(mouth1)

let arml = CALayer()
arml.backgroundColor =  UIColor(red: 160/255, green: 227/255, blue: 104/255, alpha: 1).cgColor
arml.frame = CGRect(
    origin: CGPoint(x: 125, y: 300),
    size: CGSize(width: 13, height: 50)
)
arml.cornerRadius = 0
layer.addSublayer(arml)

let armlc = CALayer()
armlc.backgroundColor =  UIColor(red: 160/255, green: 227/255, blue: 104/255, alpha: 1).cgColor
armlc.frame = CGRect(
    origin: CGPoint(x: 121, y: 346),
    size: CGSize(width: 21, height: 21)
)
armlc.cornerRadius = 11
layer.addSublayer(armlc)

let arml1 = CALayer()
arml1.backgroundColor =  UIColor(red: 160/255, green: 227/255, blue: 104/255, alpha: 1).cgColor
arml1.frame = CGRect(
    origin: CGPoint(x: 125, y: 287),
    size: CGSize(width: 21, height: 21)
)
arml1.cornerRadius = 11
layer.addSublayer(arml1)

let armr = CALayer()
armr.backgroundColor =  UIColor(red: 160/255, green: 227/255, blue: 104/255, alpha: 1).cgColor
armr.frame = CGRect(
    origin: CGPoint(x: 272, y: 300),
    size: CGSize(width: 13, height: 50)
)
armr.cornerRadius = 0
layer.addSublayer(armr)

let armr1 = CALayer()
armr1.backgroundColor =  UIColor(red: 160/255, green: 227/255, blue: 104/255, alpha: 1).cgColor
armr1.frame = CGRect(
    origin: CGPoint(x: 264, y: 287),
    size: CGSize(width: 21, height: 21)
)
armr1.cornerRadius = 11
layer.addSublayer(armr1)

let armrc = CALayer()
armrc.backgroundColor =  UIColor(red: 160/255, green: 227/255, blue: 104/255, alpha: 1).cgColor
armrc.frame = CGRect(
    origin: CGPoint(x: 269, y: 346),
    size: CGSize(width: 21, height: 21)
)
armrc.cornerRadius = 11
layer.addSublayer(armrc)

let legl = CALayer()
legl.backgroundColor =  UIColor(red: 160/255, green: 227/255, blue: 104/255, alpha: 1).cgColor
legl.frame = CGRect(
    origin: CGPoint(x: 176, y: 360),
    size: CGSize(width: 14, height: 50)
)
legl.cornerRadius = 0
layer.addSublayer(legl)

let legl1 = CALayer()
legl1.backgroundColor =  UIColor(red: 160/255, green: 227/255, blue: 104/255, alpha: 1).cgColor
legl1.frame = CGRect(
    origin: CGPoint(x: 165, y: 400),
    size: CGSize(width: 26, height: 15)
)
legl1.cornerRadius = 8
layer.addSublayer(legl1)

let legr = CALayer()
legr.backgroundColor =  UIColor(red: 160/255, green: 227/255, blue: 104/255, alpha: 1).cgColor
legr.frame = CGRect(
    origin: CGPoint(x: 220, y: 360),
    size: CGSize(width: 14, height: 50)
)
legr.cornerRadius = 0
layer.addSublayer(legr)

let legr1 = CALayer()
legr1.backgroundColor =  UIColor(red: 160/255, green: 227/255, blue: 104/255, alpha: 1).cgColor
legr1.frame = CGRect(
    origin: CGPoint(x: 218, y: 400),
    size: CGSize(width: 26, height: 15)
)
legr1.cornerRadius = 8
layer.addSublayer(legr1)

let cap = CALayer()
cap.backgroundColor =  UIColor(red: 7/255, green: 100/255, blue: 171/255, alpha: 1).cgColor

cap.frame = CGRect(
    origin: CGPoint(x: 177, y: 198),
    size: CGSize(width: 51, height: 51)
)
cap.cornerRadius = 25
layer.addSublayer(cap)

let cap1 = CALayer()
cap1.backgroundColor =  UIColor(red: 160/255, green: 227/255, blue: 104/255, alpha: 1).cgColor

cap1.frame = CGRect(
    origin: CGPoint(x: 177, y: 231),
    size: CGSize(width: 51, height: 20)
)
cap1.cornerRadius = 0
layer.addSublayer(cap1)

let capp = CALayer()
capp.backgroundColor =  UIColor(red: 7/255, green: 100/255, blue: 171/255, alpha: 1).cgColor

capp.frame = CGRect(
    origin: CGPoint(x: 186, y: 221),
    size: CGSize(width: 33, height: 24)
)
capp.cornerRadius = 4
layer.addSublayer(capp)

let capframe = CALayer()
capframe.backgroundColor =  UIColor(red: 6/255, green: 89/255, blue: 137/255, alpha: 1).cgColor

capframe.frame = CGRect(
    origin: CGPoint(x: 180, y: 229),
    size: CGSize(width: 47, height: 2)
)
capframe.cornerRadius = 0
layer.addSublayer(capframe)

let mike = CATextLayer()
mike.foregroundColor = UIColor.white.cgColor
mike.alignmentMode = .center
mike.fontSize = 16
mike.frame = CGRect(
     origin: CGPoint(x: 48, y: 210),
     size: CGSize(width: 310, height: 70)
 )
mike.string = "M"
 layer.addSublayer(mike)

let textLayer = CATextLayer()
textLayer.foregroundColor = UIColor(red: 6/255, green: 89/255, blue: 137/255, alpha: 1).cgColor
textLayer.alignmentMode = .center
textLayer.fontSize = 34
 textLayer.frame = CGRect(
     origin: CGPoint(x: 50, y: 70),
     size: CGSize(width: 310, height: 70)
 )
 textLayer.string = "С днём субботы)))"
 layer.addSublayer(textLayer)



