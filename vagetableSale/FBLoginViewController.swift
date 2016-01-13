//
//  FBLoginViewController.swift
//  Strawman
//
//  Created by wusu chiang on 2016/1/13.
//
//

import UIKit
import FBSDKLoginKit


class FBLoginViewController: UIViewController {


    
    @IBOutlet weak var FbLoginBu: FBSDKLoginButton!
    
    
    @IBAction func FbLoginAction(sender: AnyObject) {
        
//        self.performSegueWithIdentifier("buyVegaStep1",
//            sender: nil)
    }
    
    
    override func viewDidDisappear(animated: Bool) {
        


    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        NSNotificationCenter.defaultCenter().addObserver(self,
        selector: "fbTokenChangeNoti:", name:
        FBSDKAccessTokenDidChangeNotification, object: nil)
        
        let FbLoginBu = FBSDKLoginManager()
        FbLoginBu.logInWithReadPermissions(["email"],
            fromViewController: nil) { (result:FBSDKLoginManagerLoginResult!,
            err:NSError!) -> Void in
            if err != nil {
        }
            else if result.isCancelled {
        } else {
            if result.grantedPermissions.contains("email") {
            }
            } }

        // Do any additional setup after loading the view.
    }
    
    func fbTokenChangeNoti(noti:NSNotification) { if FBSDKAccessToken.currentAccessToken() !=
        nil {
                }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */



}
