import UIKit

class initialScreen2ViewController: UIViewController
{
    var currentEpisode: String?
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if(segue.identifier == "InitialScreen")
        {
            let controller = segue.destination as! InitiallScreen2ViewController
            controller.currentE = currentEpisode
        }
    }
    @IBAction func workButton(_ sender: Any)
    {
        currentEpisode = "work"
        performSegue(withIdentifier: "InitialScreen", sender: self)
    }
    @IBAction func schoolButton(_ sender: Any)
    {
        currentEpisode = "school"
        performSegue(withIdentifier: "InitialScreen", sender: self)
    }
    @IBAction func funButton(_ sender: Any)
    {
        currentEpisode = "fun"
        performSegue(withIdentifier: "InitialScreen", sender: self)
    }
}
