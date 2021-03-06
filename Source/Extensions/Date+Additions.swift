//
//  Date+Additions.swift
//  IDIAZM
//
//  Created by Iván Díaz Molina on 05/09/2020.
//

public extension Date {
    
    /// Get the first day of current month
    var firstDayOfCurrentMonth: Date {
        return (Calendar.current.date(from: Calendar.current.dateComponents([.year, .month], from: self)))!
    }
    
    /// Check if the day is the day of current month
    var isFirstDayOfCurrentMonth: Bool {
        return self == firstDayOfCurrentMonth
    }
    
    /// Get the last day of current month
    var lastDayOfCurrentMonth: Date {
        return Calendar.current.date(byAdding: DateComponents(month: 1, day: -1), to: firstDayOfCurrentMonth)!
    }
    
    /// Get current year
    var year: Int {
        let calendar = Calendar.current
        return calendar.component(.year, from: self)
    }
    
    /// Get current month
    var month: Int {
        let calendar = Calendar.current
        return calendar.component(.month, from: self)
    }
    
    /// Get current day
    var day: Int {
        let calendar = Calendar.current
        return calendar.component(.day, from: self)
    }
    
    /// Get current hour
    var hour: Int {
        let calendar = Calendar.current
        return calendar.component(.hour, from: self)
    }
    
    /// Get current minutes
    var minute: Int {
        let calendar = Calendar.current
        return calendar.component(.minute, from: self)
    }
    
    /// Add or substract years from date object
    ///
    /// Usage:
    ///
    ///     let date = Date()
    ///     date.add(years: 1) // add
    ///     date.add(years: -1) // subtract
    ///
    /// - Returns: String date formated
    func add(years: Int) -> Date {
        return Calendar(identifier: .gregorian).date(byAdding: .year, value: years, to: self)!
    }
    
    /// Add or substract months from date object
    ///
    /// Usage:
    ///
    ///     let date = Date()
    ///     date.add(months: 1) // add
    ///     date.add(months: -1) // subtract
    ///
    /// - Returns: String date formated
    func add(months: Int) -> Date {
        return Calendar(identifier: .gregorian).date(byAdding: .month, value: months, to: self)!
    }
    
    /// Add or substract days from date object
    ///
    /// Usage:
    ///
    ///     let date = Date()
    ///     date.add(days: 1) // add
    ///     date.add(days: -1) // subtract
    ///
    /// - Returns: String date formated
    func add(days: Int) -> Date {
        return Calendar(identifier: .gregorian).date(byAdding: .day, value: days, to: self)!
    }
    
    /// Add or substract hours from date object
    ///
    /// Usage:
    ///
    ///     let date = Date()
    ///     date.add(hours: 1) // add
    ///     date.add(hours: -1) // subtract
    ///
    /// - Returns: String date formated
    func add(hours: Int) -> Date {
        return Calendar(identifier: .gregorian).date(byAdding: .hour, value: hours, to: self)!
    }
    
    /// Add or substract minutes from date object
    ///
    /// Usage:
    ///
    ///     let date = Date()
    ///     date.add(minutes: 1) // add
    ///     date.add(minutes: -1) // subtract
    ///
    /// - Returns: String date formated
    func add(minutes: Int) -> Date {
        return Calendar(identifier: .gregorian).date(byAdding: .minute, value: minutes, to: self)!
    }
        
    /// Convert a date to string with a specific format
    ///
    /// - Returns: String date formated
    func stringFromDate(format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
    
    /// Enum of the days of week
    enum WeekDays: Int {
        
        case sunday = 0, monday, tuesday, wednesday, thursday, friday, saturday
        
        private func dateFormatter() -> DateFormatter {
            let dateFormatter = DateFormatter()
            return dateFormatter
        }
        
        /// Get the short symbol of day
        ///
        /// Usage:
        ///
        ///     let day: Date.WeekDays = .friday
        ///     day.getShortWeekdaySymbols() // result -> Fri
        ///
        /// - Returns: String with the short format of day
        public func getVeryShortWeekdaySymbols() -> String? {
            return dateFormatter().veryShortWeekdaySymbols.getElement(self.rawValue)
        }
        
        /// Get the short symbol of day
        ///
        /// Usage:
        ///
        ///     let day: Date.WeekDays = .friday
        ///     day.getShortWeekdaySymbols() // result -> F
        ///
        /// - Returns: String with the short format of day
        public func getShortWeekdaySymbols() -> String? {
            return dateFormatter().shortWeekdaySymbols.getElement(self.rawValue)
        }
    }
}
