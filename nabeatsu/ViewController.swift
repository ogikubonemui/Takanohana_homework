import UIKit

class ViewController: UIViewController {
    
    // UIImageViewをアウトレット接続
    @IBOutlet weak var image: UIImageView!
    // Labelにボタンが押した回数が表示される変数を定義
    var num = 0
    // 3、もしくは3の倍数用の変数を定義
    var flag3 = false
    // 5、もしくは5の倍数用の変数を定義
    var flag5 = false
    
    // 画像用の変数を定義
    let pic0f3 = UIImage(named: "3")
    let pic0f5 = UIImage(named: "5")
    let pic0f15 = UIImage(named: "15")
    let picUsual = UIImage(named: "usual")
    
    
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        result.text = "\(num)回目のナベアツです"
        
        flag3 = false
        flag5 = false
        
        if(num % 3 == 0 || num % 10 == 3 || num % 10 == 3){
            flag3 = true
        }
        if(num % 5 == 0 || num % 10 == 5 || num % 10 == 5){
            flag5 = true
        }
        if flag3 && flag5 {
            image.image = pic0f15
        } else if flag3 {
            image.image = pic0f3
        } else if flag5 {
            image.image = pic0f5
        } else {
            image.image = picUsual
        }
        
        if num >= 100 {
            num = 0
        }
    }
}
