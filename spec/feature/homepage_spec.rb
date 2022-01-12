describe "homepage", type: :feature do
  it "a user sees {}" do
    visit '/' 
    fill_in "Name", with: "Orla"
    find("option[value='6']").click
    find("option[value='February']").click
    click_button "Submit"

    expect(page).to have_content "There are 25 days left until your birthday"
  end
end