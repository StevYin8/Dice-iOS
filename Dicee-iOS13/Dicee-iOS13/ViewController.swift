//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Shaojun Yin on 03/21/2023.
//
//

import UIKit

class ViewController: UIViewController {
    
    // diceImageViews
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView3: UIImageView!
    @IBOutlet weak var diceImageView4: UIImageView!
    @IBOutlet weak var diceImageView5: UIImageView!
    @IBOutlet weak var diceImageView6: UIImageView!
    @IBOutlet weak var diceStepLabel: UILabel!
    let images = [#imageLiteral(resourceName: "Bdice1"), #imageLiteral(resourceName: "Bdice2"), #imageLiteral(resourceName: "Bdice3"), #imageLiteral(resourceName: "Bdice4"), #imageLiteral(resourceName: "Bdice5"), #imageLiteral(resourceName: "Bdice6")]
    var imagesRandom = [0,0,0,0,0,0]
    

     
    // Hide and Show function
    var hide: Int = 0
    @IBAction func showButton(_ sender: Any) {
        if hide == 1
        {
            diceImageView1.image = images[imagesRandom[0]]
            diceImageView2.image = images[imagesRandom[1]]
            diceImageView3.image = images[imagesRandom[2]]
            diceImageView4.image = images[imagesRandom[3]]
            diceImageView5.image = images[imagesRandom[4]]
            diceImageView6.image = images[imagesRandom[5]]
            hide = 0
        }
        
    }
    
    @IBAction func hideButton(_ sender: Any) {
        if hide == 0{
            diceImageView1.image = #imageLiteral(resourceName: "diceHide")
            diceImageView2.image = #imageLiteral(resourceName: "diceHide")
            diceImageView3.image = #imageLiteral(resourceName: "diceHide")
            diceImageView4.image = #imageLiteral(resourceName: "diceHide")
            diceImageView5.image = #imageLiteral(resourceName: "diceHide")
            diceImageView6.image = #imageLiteral(resourceName: "diceHide")
            hide = 1
        }
        
    }
    var imageCount: Int = 1
    @IBOutlet weak var imageLogo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceImageView1.image = #imageLiteral(resourceName: "Bdice1")
        diceImageView1.alpha = 1
        diceImageView1.frame = CGRect(x:132, y:373, width: 150, height: 150)
        //Logo Doble click
        let imgClick = UITapGestureRecognizer(target: self, action: #selector(imAction))
        imgClick.numberOfTapsRequired = 2
        imageLogo.addGestureRecognizer(imgClick)
        //开启 isUserInteractionEnabled 手势否则点击事件会没有反应
        imageLogo.isUserInteractionEnabled = true

    }
    
    //LOGO点击事件方法
    @objc func imAction() -> Void {
        if hide == 0{
            diceImageView1.image = #imageLiteral(resourceName: "Bdice1")
            diceImageView2.image = #imageLiteral(resourceName: "Bdice1")
            diceImageView3.image = #imageLiteral(resourceName: "Bdice1")
            diceImageView4.image = #imageLiteral(resourceName: "Bdice1")
            diceImageView5.image = #imageLiteral(resourceName: "Bdice1")
            diceImageView6.image = #imageLiteral(resourceName: "Bdice1")
            imagesRandom = [0,0,0,0,0,0]
        }else{
            //PopUp
            showHub(message: "Dice can’t be reset while hidden.")
        }
       
    }

    
    @IBAction func diceStepper(_ sender: UIStepper) {
        imageCount = Int(sender.value.rounded())
        diceStepLabel.text = String(imageCount)
        diceImageView1.image = #imageLiteral(resourceName: "Bdice1")
        diceImageView2.image = #imageLiteral(resourceName: "Bdice1")
        diceImageView3.image = #imageLiteral(resourceName: "Bdice1")
        diceImageView4.image = #imageLiteral(resourceName: "Bdice1")
        diceImageView5.image = #imageLiteral(resourceName: "Bdice1")
        diceImageView6.image = #imageLiteral(resourceName: "Bdice1")
        
        switch imageCount
        {
            case 1:
                diceImageView1.frame = CGRect(x:132, y:373, width: 150, height: 150)
                diceImageView1.alpha = 1
                diceImageView2.alpha = 0
                diceImageView3.alpha = 0
                diceImageView4.alpha = 0
                diceImageView5.alpha = 0
                diceImageView6.alpha = 0

            case 2:
                diceImageView1.frame = CGRect(x:62, y:383, width: 130, height: 130)
                diceImageView2.frame = CGRect(x:222, y:383, width: 130, height: 130)
                diceImageView1.alpha = 1
                diceImageView2.alpha = 1
                diceImageView3.alpha = 0
                diceImageView4.alpha = 0
                diceImageView5.alpha = 0
                diceImageView6.alpha = 0

            case 3:
                diceImageView1.frame = CGRect(x:87, y:344, width: 110, height: 110)
                diceImageView2.frame = CGRect(x:217, y:344, width: 110, height: 110)
                diceImageView3.frame = CGRect(x:152, y:488, width: 110, height: 110)
                diceImageView1.alpha = 1
                diceImageView2.alpha = 1
                diceImageView3.alpha = 1
                diceImageView4.alpha = 0
                diceImageView5.alpha = 0
                diceImageView6.alpha = 0
            

            case 4:
                diceImageView1.frame = CGRect(x:87, y:344, width: 110, height: 110)
                diceImageView2.frame = CGRect(x:217, y:344, width: 110, height: 110)
                diceImageView3.frame = CGRect(x:87, y:488, width: 110, height: 110)
                diceImageView4.frame = CGRect(x:217, y:488, width: 110, height: 110)
                diceImageView1.alpha = 1
                diceImageView2.alpha = 1
                diceImageView3.alpha = 1
                diceImageView4.alpha = 1
                diceImageView5.alpha = 0
                diceImageView6.alpha = 0
            case 5:
                diceImageView1.frame = CGRect(x:87, y:315, width: 100, height: 100)
                diceImageView2.frame = CGRect(x:227, y:315, width: 100, height: 100)
                diceImageView3.frame = CGRect(x:87, y:443, width: 100, height: 100)
                diceImageView4.frame = CGRect(x:227, y:443, width: 100, height: 100)
                diceImageView5.frame = CGRect(x:157, y:572, width: 100, height: 100)
                diceImageView1.alpha = 1
                diceImageView2.alpha = 1
                diceImageView3.alpha = 1
                diceImageView4.alpha = 1
                diceImageView5.alpha = 1
                diceImageView6.alpha = 0

            case 6:
                diceImageView1.frame = CGRect(x:87, y:315, width: 100, height: 100)
                diceImageView2.frame = CGRect(x:227, y:315, width: 100, height: 100)
                diceImageView3.frame = CGRect(x:87, y:443, width: 100, height: 100)
                diceImageView4.frame = CGRect(x:227, y:443, width: 100, height: 100)
                diceImageView5.frame = CGRect(x:87, y:572, width: 100, height: 100)
                diceImageView6.frame = CGRect(x:227, y:572, width: 100, height: 100)
                diceImageView1.alpha = 1
                diceImageView2.alpha = 1
                diceImageView3.alpha = 1
                diceImageView4.alpha = 1
                diceImageView5.alpha = 1
                diceImageView6.alpha = 1
            default:
                diceImageView1.frame = CGRect(x:140, y:391, width: 150, height: 150)
                diceImageView1.alpha = 1

        }
        
    }
    

    @IBAction func rollButtonPressed(_ sender: Any) {
        if hide == 0{
            for i in 0..<images.count{
                imagesRandom[i] = Int.random(in: 0...5)
            }
            diceImageView1.image = images[imagesRandom[0]]
            diceImageView2.image = images[imagesRandom[1]]
            diceImageView3.image = images[imagesRandom[2]]
            diceImageView4.image = images[imagesRandom[3]]
            diceImageView5.image = images[imagesRandom[4]]
            diceImageView6.image = images[imagesRandom[5]]
        }else{
            //PopUp
            showHub(message: "Dice can‘t be roll while hidden. ")
        }
        
    }
    
    
    //PopUp
    func showHub(message: String) {
        let hubView = UIView()
        hubView.backgroundColor = UIColor.black.withAlphaComponent(0.7)
        hubView.layer.cornerRadius = 15
        
        let label = UILabel()
        label.text = message
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 0
        
        hubView.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(hubView)
        hubView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            hubView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            hubView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            hubView.widthAnchor.constraint(equalToConstant: 200),
            hubView.heightAnchor.constraint(equalToConstant: 80),
            
            label.centerXAnchor.constraint(equalTo: hubView.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: hubView.centerYAnchor),
            label.leadingAnchor.constraint(equalTo: hubView.leadingAnchor, constant: 10),
            label.trailingAnchor.constraint(equalTo: hubView.trailingAnchor, constant: -10)
        ])
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            UIView.animate(withDuration: 0.3, animations: {
                hubView.alpha = 0
            }) { _ in
                hubView.removeFromSuperview()
            }
        }
    }

    

}

