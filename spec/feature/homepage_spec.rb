describe "homepage", type: :feature do
  it "a user sees how many days until their birthday" do
    
    visit '/' 
    fill_in "Name", with: "Orla"
    fill_in :day, with: "6"
    select "February", :from => "month"
    click_button "Submit"

    expect(page).to have_content "Orla - there are 25 days left until your birthday"
  end
end