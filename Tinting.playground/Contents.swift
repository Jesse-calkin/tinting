//: Tinting an asset

import UIKit
import XCPlayground

let page = XCPlaygroundPage.currentPage

let view = UIImageView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
page.liveView = view

var star = UIImage(named: "star")
star = star?.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate) // Always draw the image as a template image, ignoring its color information

view.image = star
view.tintColor = UIColor.orangeColor()

func randomColor() -> UIColor{

    let randomRed:CGFloat = CGFloat(drand48())
    let randomGreen:CGFloat = CGFloat(drand48())
    let randomBlue:CGFloat = CGFloat(drand48())

    return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
}

func invincibleStar() {
    UIView.animateWithDuration(0.05, animations: { () -> Void in
        view.tintColor = randomColor()
        }) { (finished) -> Void in
            if finished {
                invincibleStar()
            }
    }
}

invincibleStar()
