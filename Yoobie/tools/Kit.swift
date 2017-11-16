

import Foundation
import UIKit

class Kit{
    
    private init(){
        
    }
    
    class func pop(contex: UIViewController, id: String){
        let pop = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: id)
        contex.addChildViewController(pop)
        pop.view.frame = (contex.view.frame)
        contex.view.addSubview(pop.view)
        pop.didMove(toParentViewController: contex)

    }
    
    class func goTo(contex: UIViewController, id: String){
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let toController = storyBoard.instantiateViewController(withIdentifier: id)
        contex.present(toController, animated:true, completion:nil)
       // contex.dismiss(animated: true)
        
    }
}
