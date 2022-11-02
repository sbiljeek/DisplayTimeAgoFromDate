//
//  ViewController.swift
//  DisplayTimeAgoFromDate
//
//  Created by Salman Biljeek on 11/2/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemPink
        
        let labelFont: UIFont = .boldSystemFont(ofSize: 15)
        let labelTextColor: UIColor = .white
        
        let label1: UILabel = {
            let label = UILabel()
            label.font = labelFont
            label.textColor = labelTextColor
            return label
        }()
        let label2: UILabel = {
            let label = UILabel()
            label.font = labelFont
            label.textColor = labelTextColor
            return label
        }()
        let label3: UILabel = {
            let label = UILabel()
            label.font = labelFont
            label.textColor = labelTextColor
            return label
        }()
        let label4: UILabel = {
            let label = UILabel()
            label.font = labelFont
            label.textColor = labelTextColor
            return label
        }()
        let label5: UILabel = {
            let label = UILabel()
            label.font = labelFont
            label.textColor = labelTextColor
            return label
        }()
        let label6: UILabel = {
            let label = UILabel()
            label.font = labelFont
            label.textColor = labelTextColor
            return label
        }()
        let label7: UILabel = {
            let label = UILabel()
            label.font = labelFont
            label.textColor = labelTextColor
            return label
        }()
        let label8: UILabel = {
            let label = UILabel()
            label.font = labelFont
            label.textColor = labelTextColor
            return label
        }()
        let label9: UILabel = {
            let label = UILabel()
            label.font = labelFont
            label.textColor = labelTextColor
            return label
        }()
        let label10: UILabel = {
            let label = UILabel()
            label.font = labelFont
            label.textColor = labelTextColor
            return label
        }()
        let label11: UILabel = {
            let label = UILabel()
            label.font = labelFont
            label.textColor = labelTextColor
            return label
        }()
        let label12: UILabel = {
            let label = UILabel()
            label.font = labelFont
            label.textColor = labelTextColor
            return label
        }()
        let label13: UILabel = {
            let label = UILabel()
            label.font = labelFont
            label.textColor = labelTextColor
            return label
        }()
        let label14: UILabel = {
            let label = UILabel()
            label.font = labelFont
            label.textColor = labelTextColor
            return label
        }()
        
        let separatorView: UIView = {
            let view = UIView()
            view.backgroundColor = .secondaryLabel
            view.translatesAutoresizingMaskIntoConstraints = false
            view.widthAnchor.constraint(equalToConstant: 0.5).isActive = true
            return view
        }()
        
        let calendar = Calendar(identifier: .gregorian)
        
        let three: Int = 3
        
        let threeSecondsAgoDate = calendar.date(byAdding: .second, value: -three, to: Date()) ?? Date(timeIntervalSince1970: Date().timeIntervalSince1970 - Double(three))
        let threeMinutesAgoDate = calendar.date(byAdding: .minute, value: -three, to: Date()) ?? Date(timeIntervalSince1970: Date().timeIntervalSince1970 - Double(three))
        let threeHoursAgoDate = calendar.date(byAdding: .hour, value: -three, to: Date()) ?? Date(timeIntervalSince1970: Date().timeIntervalSince1970 - Double(three))
        let threeDaysAgoDate = calendar.date(byAdding: .day, value: -three, to: Date()) ?? Date(timeIntervalSince1970: Date().timeIntervalSince1970 - Double(three))
        let threeWeeksAgoDate = calendar.date(byAdding: .weekOfMonth, value: -three, to: Date()) ?? Date(timeIntervalSince1970: Date().timeIntervalSince1970 - Double(three))
        let threeMonthsAgoDate = calendar.date(byAdding: .month, value: -three, to: Date()) ?? Date(timeIntervalSince1970: Date().timeIntervalSince1970 - Double(three))
        let threeYearsAgoDate = calendar.date(byAdding: .year, value: -three, to: Date()) ?? Date(timeIntervalSince1970: Date().timeIntervalSince1970 - Double(three))
        
        label1.text = self.getTimeSince(date: threeSecondsAgoDate, isShort: false)
        label2.text = self.getTimeSince(date: threeMinutesAgoDate, isShort: false)
        label3.text = self.getTimeSince(date: threeHoursAgoDate, isShort: false)
        label4.text = self.getTimeSince(date: threeDaysAgoDate, isShort: false)
        label5.text = self.getTimeSince(date: threeWeeksAgoDate, isShort: false)
        label6.text = self.getTimeSince(date: threeMonthsAgoDate, isShort: false)
        label7.text = self.getTimeSince(date: threeYearsAgoDate, isShort: false)
        
        label8.text = self.getTimeSince(date: threeSecondsAgoDate, isShort: true)
        label9.text = self.getTimeSince(date: threeMinutesAgoDate, isShort: true)
        label10.text = self.getTimeSince(date: threeHoursAgoDate, isShort: true)
        label11.text = self.getTimeSince(date: threeDaysAgoDate, isShort: true)
        label12.text = self.getTimeSince(date: threeWeeksAgoDate, isShort: true)
        label13.text = self.getTimeSince(date: threeMonthsAgoDate, isShort: true)
        label14.text = self.getTimeSince(date: threeYearsAgoDate, isShort: true)
        
        let leftStack = UIStackView(arrangedSubviews: [
            label1,
            label2,
            label3,
            label4,
            label5,
            label6,
            label7
        ])
        leftStack.axis = .vertical
        leftStack.spacing = 4
        
        let rightStack = UIStackView(arrangedSubviews: [
            label8,
            label9,
            label10,
            label11,
            label12,
            label13,
            label14
        ])
        rightStack.axis = .vertical
        rightStack.spacing = 4
        rightStack.alignment = .trailing
        
        let mainStack = UIStackView(arrangedSubviews: [
            leftStack,
            separatorView,
            rightStack
        ])
        mainStack.axis = .horizontal
        mainStack.spacing = 10
        mainStack.distribution = .equalCentering
        mainStack.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(mainStack)
        mainStack.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 40).isActive = true
        mainStack.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -60).isActive = true
        mainStack.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -50).isActive = true
    }
    
    func getTimeSince(date: Date, isShort: Bool = false) -> String {
        var formattedString = String()
        let now = Date()
        let secondsAgo = Int(now.timeIntervalSince(date))
        
        let twoSeconds = 2
        let minute = 60
        let twoMinutes = minute * 2
        let hour = 60 * minute
        let twoHours = hour * 2
        let day = 24 * hour
        let twoDays = day * 2
        let week = 7 * day
        let twoWeeks = week * 2
        let month = 4 * week
        let twoMonths = month * 2
        let year = 12 * month
        let twoYears = year * 2
        
        let secondString = isShort ? "s ago" : " second ago"
        let secondsString = isShort ? "s ago" : " seconds ago"
        let minuteString = isShort ? "m ago" : " minute ago"
        let minutesString = isShort ? "m ago" : " minutes ago"
        let hourString = isShort ? "h ago" : " hour ago"
        let hoursString = isShort ? "h ago" : " hours ago"
        let dayString = isShort ? "d ago" : " day ago"
        let daysString = isShort ? "d ago" : " days ago"
        let weekString = isShort ? "w ago" : " week ago"
        let weeksString = isShort ? "w ago" : " weeks ago"
        let monthString = isShort ? "mo ago" : " month ago"
        let monthsString = isShort ? "mo ago" : " months ago"
        let yearString = isShort ? "y ago" : " year ago"
        let yearsString = isShort ? "y ago" : " years ago"
        
        if secondsAgo < twoSeconds {
            formattedString = "\(secondsAgo)\(secondString)"
        } else if secondsAgo < minute {
            formattedString = "\(secondsAgo)\(secondsString)"
        } else if secondsAgo < twoMinutes {
            formattedString = "\(secondsAgo / minute)\(minuteString)"
        } else if secondsAgo < hour {
            formattedString = "\(secondsAgo / minute)\(minutesString)"
        } else if secondsAgo < twoHours {
            formattedString = "\(secondsAgo / hour)\(hourString)"
        } else if secondsAgo < day {
            formattedString = "\(secondsAgo / hour)\(hoursString)"
        } else if secondsAgo < twoDays {
            formattedString = "\(secondsAgo / day)\(dayString)"
        } else if secondsAgo < week {
            formattedString = "\(secondsAgo / day)\(daysString)"
        } else if secondsAgo < twoWeeks {
            formattedString = "\(secondsAgo / week)\(weekString)"
        } else if secondsAgo < month {
            formattedString = "\(secondsAgo / week)\(weeksString)"
        } else if secondsAgo < twoMonths {
            formattedString = "\(secondsAgo / month)\(monthString)"
        } else if secondsAgo < year {
            formattedString = "\(secondsAgo / month)\(monthsString)"
        } else if secondsAgo < twoYears {
            formattedString = "\(secondsAgo / year)\(yearString)"
        } else {
            formattedString = "\(secondsAgo / year)\(yearsString)"
        }
        return formattedString
    }
}

