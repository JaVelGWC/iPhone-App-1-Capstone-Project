import UIKit

class InitiallScreen2ViewController: UIViewController
{
    @IBOutlet weak var backgroundIMG: UIImageView!
    //IB Outlet that displays background
    @IBOutlet weak var initialLabel: UILabel!
    //IB Outlet that displays the initial screen
    var currentE: String?
    var initials = [
        "work" : "You work Del Taco. You’re just trying to get through your day, but you might find some bumps along the road. Just kidding, they’re more like boulders.",
        "school" : "Jackie, you recently joined the robotics club for your school, as you want to pursue a career in engineering. The club has 8 members and you are the only girl.",
        "fun"   : "You and your friends decide to go to the mall near your school to eat and work on you upcoming essay together. You go and sit down at BWC restaurant. First the waiter comes to take your drink order. You and your friends look at each other in discomfort as the waiter cringely winks at you.",
    ]
    var backgroundIMGS = [
        "work" : UIImage(named: "work")!,
        "school"  :  UIImage(named: "school")!,
        "fun" : UIImage(named: "restaurant")!,
    ]
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setInitial()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if(segue.identifier == "StartOptions")
        {
            let controller = segue.destination as! ScenarioViewController
            controller.currentEpisode = currentE
        }
    }
    func setInitial()
    {
        if(currentE != nil)
        {
            backgroundIMG.image = backgroundIMGS[currentE!]
            initialLabel.text = initials[currentE!]
        }
    }
    @IBAction func nextButton(_ sender: Any)
    {
        performSegue(withIdentifier: "StartOptions", sender: self)
    }
    
}
