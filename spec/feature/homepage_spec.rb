describe "homepage", type: :feature do
  it "a user sees how many days until their birthday" do

    visit '/' 
    fill_in "Name", with: "Orla"
    fill_in :day, with: "6"
    select "February", :from => "month"
    click_button "Submit"

    expect(page).to have_content "Orla - there are 24 days left until your birthday"
  end

  it "a user sees a different message if it's their birthday today" do

    visit '/'
    fill_in "Name", with: "Alex"
    fill_in :day, with: "#{Time.now.day}"
    select "#{month_convertor(Time.now.month)}", :from => "month"
    click_button "Submit"

    expect(page).to have_content "Congrats Alex! It's your birthday today!"
  end

  def month_convertor(int)
    months = { 1 => "January", 2 => "February", 3 => "March",
               4 => "April", 5 => "May", 6 => "June", 7 => "July",
               8 => "August", 9 => "September", 10 => "October",
               11 => "November", 12 => "December"}
    months[int]
  end
end