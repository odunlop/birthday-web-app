require 'date'

class BirthdayChecker

  attr_reader :day, :month

  def initialize(day, month)
    @day = day
    @month = month
    @year = Time.now.year
    @today = Date.new(Time.now.year, Time.now.month, Time.now.day)
  end

  def birthday?
    Time.now.month == self.month && Time.now.day == self.day
  end

  def days_left
    month_to_integer
    @year += 1 if @month <= Time.now.month
    birthday = Date.new(@year, @month, @day)
    birthday - @today
  end

  private
  
  def month_to_integer
    months = { "January" => 1, "February" => 2, "March" => 3,
               "April" => 4, "May" => 5, "June" => 6, "July" => 7,
               "August" => 8, "September" => 9, "October" => 10,
               "November" => 11, "December" => 12}
    @month = months[@month]
  end
end