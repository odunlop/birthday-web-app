require 'birthday_checker'

describe BirthdayChecker do

  it "knows the month of the user's birthday" do
    test = BirthdayChecker.new(6, "February")
    expect(test.month).to eq "February"
  end

  it "knows the day of the user's birthday" do
    test = BirthdayChecker.new(6, "February")
    expect(test.day).to eq 6
  end

  it "can check if it's the user's birthday" do
    test = BirthdayChecker.new(6, "February")
    expect(test).not_to be_birthday
  end

  it "can calculate how many days until the user's next birthday" do
    test = BirthdayChecker.new(6, "January")
    expect(test.days_left).to eq 360
  end
end