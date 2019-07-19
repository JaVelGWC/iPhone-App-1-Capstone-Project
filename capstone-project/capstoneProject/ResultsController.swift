import UIKit

class ResultsController: UIViewController
{
    @IBOutlet weak var backgroundiMG: UIImageView!
    //IB Outlet that will display the background image
    @IBOutlet weak var outcomeLabel: UILabel!
    //IB Outlet that will display the outcome
    @IBOutlet weak var statisticsLabel: UILabel!
    //IB Outlet that will display statistics
    var current: String?
    var currentResult: [String: Any] = [:]
    
    var Results = [
        "work" : [
            "outcome" : "Your male colleague approaches the customer and suggests making them a new meal. They immediately agree and walk away to wait for their meal.",
                "statistics" : "In 2012, Women made comparatively 77.5% of what men made. Even women who work in unionized professions only make about 82% of men’s income and as women go up the pay gap get bigger, 72.3% in upper-level women executive salaries based on statistics provided by the Bureau of Labor Statistics and the U.S. Department of Labor. According to NPRs latest Survey about 38 percent of women have said to have experience sexual harassment at the workplace.",
                    "background" : UIImage(named: "work")!,
        ],
        "school"  : [
            "outcome" : "The other members don’t let you contribute and dismiss you because you just joined. They told you that you must not know as much as they do, so everything you say doesn’t mean much.",
                "statistics" : "About 74 percent of young girls express interest in STEM fields and computer science according to the Observer. However, only 28 percent of Computer Science Degrees are earned by women. Since 1991, peaking at 36 percent the rate of women in computing roles has begun to decline. According to the National Center for Women and Information Technology 49 percent of the Intel Science and Engineering Fair 2018 finalist were female.",
                    "background" : UIImage(named: "school")!,
        ],
        "fun"   : [
            "outcome" : "He brings back the check for the table and writes “I hope you babes enjoyed the food 😉” You pay and leave feeling disgusted and uncomfortable, that you and your friends were treated that way; you were wanting to have a good time.",
                "statistics" : "According to the National Museum of Women in the Arts and a recent data survey of the permanent collections of 18 prominent art museums in the U.S. out of over ten thousand artist, 87 percent of them are male. According to the Observer, the tech industry isn’t any better; women own only five percent of startups even though they perform three times better than those with male CEOs.",
                    "background" : UIImage(named: "restaurant")!,
        ]
]
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setResults()
    }
    func setResults()
    {
        currentResult = Results[current!] as! [String: Any]
        backgroundiMG.image = currentResult["background"] as! UIImage
        outcomeLabel.text = currentResult["outcome"] as! String
        statisticsLabel.text = currentResult["statistics"] as! String
    }
    
}
