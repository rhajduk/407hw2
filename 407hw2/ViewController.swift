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
    //variable for selected date
    @IBOutlet weak var monthLabel: UILabel!
    var month: Int = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
       monthLabel.text = formatMonth(calendarView.presentedDate.month)
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
    
    func presentedDateUpdated(date: Date){
        monthLabel.text = formatMonth(calendarView.presentedDate.month)
    }

    func formatMonth(month: Int) -> String{
        var monthString: String = "";
        if (month == 1){ monthString = "January" }
        if (month == 2){ monthString = "February" }
        if (month == 3){ monthString = "March" }
        if (month == 4){ monthString = "April" }
        if (month == 5){ monthString = "May" }
        if (month == 6){ monthString = "June" }
        if (month == 7){ monthString = "July" }
        if (month == 8){ monthString = "August" }
        if (month == 9){ monthString = "September" }
        if (month == 10){ monthString = "October" }
        if (month == 11){ monthString = "November" }
        if (month == 12){ monthString = "December" }
        
        
        return monthString
    }

}

