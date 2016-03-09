//
//  ViewController.swift
//  407hw2
//
//  Created by Rebecca Hajduk on 3/8/16.
//  Copyright © 2016 Rebecca Hajduk. All rights reserved.
//

import UIKit
import CVCalendar

class ViewController: UIViewController, CVCalendarViewDelegate, CVCalendarMenuViewDelegate{

    @IBOutlet weak var calendarView: CVCalendarView!
    @IBOutlet weak var menuView: CVCalendarMenuView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews(){
        super.viewDidLayoutSubviews()
        
        calendarView.commitCalendarViewUpdate()
        menuView.commitMenuViewUpdate()
    }
    
    func presentationMode() -> CalendarMode{
        return CalendarMode.MonthView
    }
    
    func firstWeekday() -> Weekday {
        return .Sunday
    }


}

