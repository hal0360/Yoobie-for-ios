//
//  PageController.swift
//  Yoobie
//
//  Created by Ron Lu on 9/11/17.
//  Copyright © 2017 Udenconstruction. All rights reserved.
//

import UIKit

class PageController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate{
    
    var mainVC: MainViewController?
    
    lazy var vcList:[UIViewController] = {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        
        let home = sb.instantiateViewController(withIdentifier: "Home")
        let profile = sb.instantiateViewController(withIdentifier: "Profile")
        let prize = sb.instantiateViewController(withIdentifier: "Prize")
        let setting = sb.instantiateViewController(withIdentifier: "Setting")
        
        return [home, profile, prize, setting]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataSource = self
        self.delegate = self
        
        if let firstViewController =  vcList.first {
            self.setViewControllers([firstViewController], direction: .forward, animated: true, completion: nil)
        }
    }
    
    func goToPage(num: Int) {
        let viewController = self.vcList[num]
        setViewControllers([viewController], direction: .forward, animated: true, completion: nil)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool){
        if completed{
            let ind = (pageViewController.viewControllers?.first as! RootController).index
            mainVC?.setTab(num: ind)
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let vcIndex = vcList.index(of: viewController) else {return nil}
        let nextIndex = vcIndex + 1
        guard vcList.count != nextIndex else {return nil}
        guard vcList.count > nextIndex else {return nil}
        return vcList[nextIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let vcIndex = vcList.index(of: viewController) else {return nil}
        let previousIndex = vcIndex - 1
        guard previousIndex >= 0 else {return nil}
        guard vcList.count > previousIndex else {return nil}
        return vcList[previousIndex]
    }
}
