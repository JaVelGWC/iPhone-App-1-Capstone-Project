import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool
    {
        let defaults = UserDefaults.standard
        if defaults.object(forKey: "isFirstTime") == nil
        {
            defaults.set("Yes", forKey:"isFirstTime")
            let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
            let controller = storyboard.instantiateViewController(withIdentifier: "info")
            window?.makeKeyAndVisible()
            window?.rootViewController?.present(controller, animated: true, completion: nil)
        }
        return false
    }
    
    func applicationWillResignActive(_ application: UIApplication)
    {
    }
    
    func applicationDidEnterBackground(_ application: UIApplication)
    {
    }
    
    func applicationWillEnterForeground(_ application: UIApplication)
    {
    }
    
    func applicationDidBecomeActive(_ application: UIApplication)
    {
    }
    
    func applicationWillTerminate(_ application: UIApplication)
    {
        self.saveContext()
    }

    lazy var persistentContainer: NSPersistentContainer =
        {
        let container = NSPersistentContainer(name: "capstoneProject")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError?
            {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    func saveContext ()
    {
        let context = persistentContainer.viewContext
        if context.hasChanges
        {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
        
    }
    
}

