import UIKit

class ViewController: UIViewController {
    
    // UIImageViewをアウトレット接続
    @IBOutlet weak var image: UIImageView!
    // Labelにボタンが押した回数が表示される変数を定義
    var num = 0
    
    // 画像用の変数を定義
    let pic0f3 = UIImage(named: "3")
    let pic0f15 = UIImage(named: "15")
    let picUsual = UIImage(named: "usual")
    
    let trivias = ["ナベアツはKARAのファンである","ナベアツというアニメーターの女性がいる","ナベアツはリンスはしない派である"]
    
    
    
    @IBOutlet weak var result: UILabel!
    
    @IBOutlet weak var type: UILabel!
    
    @IBOutlet weak var information: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let triviaNum = Int.random(in: 0..<trivias.count)
        result.text = "\(num)回目の"
        if (num %  15 == 0){
            image.image = pic0f15
            type.text = "ドヤ顔のナベアツです"
        }else if(num % 3 == 0 || num % 10 == 3 || num % 10 == 3){
            image.image = pic0f3
            type.text = "アホになったナベアツです"
        } else {
            image.image = picUsual
            type.text = "いつものナベアツです"
        }
        
        if num >= 100 {
            num = 0
        }
        information.text = trivias[triviaNum]
    }
}
