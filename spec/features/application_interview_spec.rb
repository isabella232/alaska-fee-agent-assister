require "rails_helper"

RSpec.feature "Interview for new application", :js do
  scenario "Assisting client with application interview" do
    visit "/"

    click_on "Help someone now", match: :first

    expect(page).to have_content "What are you helping the client with today?"
    click_on "Submit an application"

    expect(page).to have_content "How it works"
    click_on "Let's get started"

    expect(page).to have_content "Let's start with the interview"
    click_on "Continue"

    expect(page).to have_content "First, tell us about you, the fee agent"
    fill_in "What is the fee agent's name", with: "Anne M. FeeAgent"
    fill_in "What is the fee agent's email address", with: "feeagent@example.com"
    fill_in "What is the fee agent's phone number", with: "555-555-5555"
    click_on "Continue"

    expect(page).to have_content "Tell us about the applicant"
    fill_in "What is the applicant's name?", with: "Jane McClient"
    fill_in "What are the last four digits of the applicant's SSN?", with: "1111"
    fill_in "List the name(s) of the person(s) who attended the interview.", with: "Jane"
    click_on "Continue"

    expect(page).to have_content "What program(s) is the applicant applying for?"

    check "Food stamps"
    check "Medicaid"
    click_on "Continue"

    expect(page).to have_content "Let's review some of the important details"
    click_on "Continue"
  end
end