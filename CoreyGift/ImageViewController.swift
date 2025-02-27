//
//  ImageViewController.swift
//  CoreyGift
//
//  Created by Gardner von Holt on 12/25/21.
//  Copyright © 2021 Gardner von Holt. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    @IBOutlet weak var experimentImage: UIImageView!

    var images: [UIImage] = []

    var timer: Timer!

    override func viewDidLoad() {
        super.viewDidLoad()
        images.removeAll()
        for i in 0...10 {
            if let url = NSURL(string: "http://gardnervonholt.com/experiment\(i).jpeg") {
                if let data = NSData(contentsOf: url as URL) {
                    if let image = UIImage(data: data as Data) {
                        images.append(image)
                        experimentImage.image = image
                    } else {
                        break
                    }
                } else {
                    break
                }
            } else {
                break
            }
        }

    }

    override func viewWillAppear(_ animated: Bool) {
        timer = Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { timer in
            DispatchQueue.main.async {
                self.refresh()
            }
        }
    }

    override func viewWillDisappear(_ animated: Bool) {
        timer?.invalidate()
        timer = nil
    }

    func refresh() {
        let max = images.count
        let randomInt = Int.random(in: 0..<max)
        experimentImage.image = images[randomInt]
        experimentImage.setNeedsDisplay()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
