//
//  ViewController.swift
//  animation
//
//  Created by Элина Абдрахманова on 29.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        NotificationCenter.default.addObserver(
            self, selector: #selector(reanimate),
            name: UIApplication.willEnterForegroundNotification,
            object: nil
        )
        
    }
    
    @objc func reanimate() {
        animate()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        startTimer()
        CABasicAnimation1()
        animate()
    }
    
    
    func startTimer() {
        timer?.invalidate()
        if timer == nil {
            timer = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(self.labelWowActivate), userInfo: nil, repeats: true)
        }
    }
    func stopTimer() {
        timer?.invalidate()
        timer = nil
        
        labelWow.isHidden = true
        labelWow2.isHidden = true
        labelWow3.isHidden = true
        labelWow4.isHidden = true
        labelWow5.isHidden = true
        labelWow6.isHidden = true
    }
    var timer: Timer?
    private let animatingView: UIView = .init()
    private let label: UILabel = .init()
    private let labelWow: UILabel = .init()
    private let labelWow2: UILabel = .init()
    private let labelWow3: UILabel = .init()
    private let labelWow4: UILabel = .init()
    private let labelWow5: UILabel = .init()
    private let labelWow6: UILabel = .init()
    private let button: UIButton = .init()
    private let image: UIImageView = .init(image: UIImage(named: "IMG_2356.jpg"))
    private let labelAfter: UILabel = .init()
    private let imageMamont: UIImageView = .init(image: UIImage(named: "mamont.png"))
    private let imageHaha: UIImageView = .init(image: UIImage(named: "haha.png"))
    
    private func setup() {
        view.backgroundColor = .white
        
        labelWow.text = "!!!СЕНСАЦИЯ!!!"
        labelWow.textColor = .red
        labelWow.sizeToFit()
        labelWow.font = .systemFont(ofSize: 40)
        labelWow.frame = CGRect(x: 50, y: 90, width: 300, height: 70)
        view.addSubview(labelWow)
        
        labelWow2.text = "!!!СЕНСАЦИЯ!!!"
        labelWow2.textColor = .red
        labelWow2.sizeToFit()
        labelWow2.font = .systemFont(ofSize: 40)
        labelWow2.frame = CGRect(x: 50, y: 140, width: 300, height: 70)
        view.addSubview(labelWow2)
        
        labelWow3.text = "!!!СЕНСАЦИЯ!!!"
        labelWow3.textColor = .red
        labelWow3.sizeToFit()
        labelWow3.font = .systemFont(ofSize: 40)
        labelWow3.frame = CGRect(x: 50, y: 190, width: 300, height: 70)
        view.addSubview(labelWow3)
        
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "Акушер сбежал от роженицы, когда увидел, кто из неё лезет..."
        label.sizeToFit()
        label.font = .systemFont(ofSize: 20)
        label.frame = CGRect(x: 50, y: 525, width: 300, height: 50)
        view.addSubview(label)
        
        button.setTitle("Читать далее...", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.frame = CGRect(x: 0, y: 570, width: 400, height: 50)
        view.addSubview(button)
        button.addTarget(self, action: #selector(buttonDidTap), for: .touchDown)
        button.tag = 1
        
        image.frame = CGRect(x: 25, y: 270, width: 360, height: 250)
        view.addSubview(image)
        
        labelWow4.text = "!!!СЕНСАЦИЯ!!!"
        labelWow4.textColor = .red
        labelWow4.sizeToFit()
        labelWow4.font = .systemFont(ofSize: 40)
        labelWow4.frame = CGRect(x: 50, y: 610, width: 300, height: 70)
        view.addSubview(labelWow4)
        
        labelWow5.text = "!!!СЕНСАЦИЯ!!!"
        labelWow5.textColor = .red
        labelWow5.sizeToFit()
        labelWow5.font = .systemFont(ofSize: 40)
        labelWow5.frame = CGRect(x: 50, y: 660, width: 300, height: 70)
        view.addSubview(labelWow5)
        
        labelWow6.text = "!!!СЕНСАЦИЯ!!!"
        labelWow6.textColor = .red
        labelWow6.sizeToFit()
        labelWow6.font = .systemFont(ofSize: 40)
        labelWow6.frame = CGRect(x: 50, y: 710, width: 300, height: 70)
        view.addSubview(labelWow6)
        
        labelAfter.isHidden = true
        labelAfter.lineBreakMode = .byWordWrapping
        labelAfter.numberOfLines = 0
        labelAfter.text = "ЗаСкАмИл МаМоНтА"
        labelAfter.textColor = .red
        labelAfter.sizeToFit()
        labelAfter.font = .systemFont(ofSize: 30)
        labelAfter.frame = CGRect(x: 60, y: 160, width: 400, height: 400)
        view.addSubview(labelAfter)
        
        imageMamont.isHidden = true
        imageMamont.frame = CGRect(x: 40, y: 440, width: 320, height: 220)
        view.addSubview(imageMamont)
        
        imageHaha.isHidden = true
        imageHaha.frame = CGRect(x: 100, y: 120, width: 200, height: 200)
        view.addSubview(imageHaha)
        
        
    }
    @IBAction func buttonDidTap(_ sender: UIButton!) {
        let buttonAction: UIButton = sender
        
        if buttonAction.tag == 1 {
            view.backgroundColor = UIColor(red: 255/255, green: 148/255, blue: 169/255, alpha: 1)
            labelAfter.isHidden = false
            image.isHidden = true
            label.isHidden = true
            button.isHidden = true
            stopTimer()
            
            imageMamont.isHidden = false
            imageHaha.isHidden = false
        }
        
    }
    @objc private func animate() {
        UIView.animate(
            withDuration: 0.2,
            delay: 0,
            options: [ .repeat, .autoreverse ]
        ) { [self] in
            labelAfter.transform = .init(scaleX: 1.5, y: 1.5)
            imageMamont.transform = .init(rotationAngle: 10)
        }
        
        
        let start = self.imageMamont.center

        UIView.animateKeyframes(withDuration: 5, delay: 0, options: .calculationModeCubic, animations: {
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25) {
                self.imageMamont.transform = CGAffineTransform(scaleX: 1, y: 1)
            }

            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25) {
                self.imageMamont.center = CGPoint(x: 200, y: 500)
            }

            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.25) {
                self.imageMamont.center = CGPoint(x: 200, y: 600)
            }

            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25) {
                self.imageMamont.center = start
            }
        })
        
        let start2 = self.imageHaha.center
        
        UIView.animateKeyframes(withDuration: 5, delay: 0, options: .calculationModeCubic, animations: {
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25) {
                self.imageHaha.transform = CGAffineTransform(scaleX: 1.5, y: 1)
            }

            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25) {
                self.imageHaha.center = CGPoint(x: 50, y: 80)
            }

            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.25) {
                self.imageHaha.center = CGPoint(x: 400, y: 80)
            }

            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25) {
                self.imageHaha.center = start2
            }
        })
    }

    @objc func labelWowActivate() {
        
        labelWow.isHidden = !labelWow.isHidden
        labelWow2.isHidden = !labelWow.isHidden
        labelWow3.isHidden = !labelWow2.isHidden
        labelWow4.isHidden = !labelWow3.isHidden
        labelWow5.isHidden = !labelWow4.isHidden
        labelWow6.isHidden = !labelWow5.isHidden
    }
    
    private func CABasicAnimation1() {
            let animationShift = CABasicAnimation(keyPath: "position")
            animationShift.fromValue = CGPoint(x: 800, y: 390)
            animationShift.toValue = CGPoint(x: -300, y: 390)
            animationShift.duration = 3
            animationShift.repeatCount = .infinity
            image.layer.add(animationShift, forKey: "1")
         }
}
