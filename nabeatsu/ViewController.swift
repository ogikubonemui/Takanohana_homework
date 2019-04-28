import UIKit

class ViewController: UIViewController {
    
    // UIImageViewをアウトレット接続
    @IBOutlet weak var image: UIImageView!
    // Labelにボタンが押した回数が表示される変数を定義
    var count = 0
    // 3、もしくは3の倍数用の変数を定義
    var flag3 = false
    // 5、もしくは5の倍数用の変数を定義
    var flag5 = false
    
    @IBOutlet weak var gameNumber: UILabel!
    // 画像用の変数を定義
    let pic0f3 = UIImage(named: "3")
    let pic0f5 = UIImage(named: "5")
    let pic0f15 = UIImage(named: "15")
    let picUsual = UIImage(named: "usual")
    
    // UILabelをアウトレット接続
    @IBOutlet weak var output: UILabel!
    
    @IBOutlet weak var text: UILabel!
    // buttonをアクション接続
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func tapped(_ sender: Any) {
        
        
        count += 1
        gameNumber.text = "\(count)試合目"
        
        if(count % 3 == 0 || count % 10 == 3 || count % 10 == 3){
            flag3 = true
        }
        if(count % 5 == 0 || count % 10 == 5 || count % 10 == 5){
            flag5 = true
        }
        if flag3 && flag5 {
            image.image = pic0f15
            text.text = "先発はメルセデス投手でした"
        } else if flag3 {
            image.image = pic0f3
            text.text = "先発はメルセデス投手でした"
        } else if flag5 {
            image.image = pic0f5
            text.text = "先発はメルセデス投手でした"
            
        } else {
            image.image = picUsual
            text.text = "先発はメルセデス投手でした"
        }
        
        if count >= 30 {
            count = 0
        }
        
    }
}


