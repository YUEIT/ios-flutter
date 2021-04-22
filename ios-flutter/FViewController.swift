import UIKit
import flutter_boost

class FViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
    }

    @IBAction func onClickPushFlutterPage(_ sender: UIButton, forEvent event: UIEvent){
        
        FlutterBoost.instance().open("flutter://example/flutterPage",arguments: ["animated":true])
    }
   
}
