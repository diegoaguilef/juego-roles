require "application_system_test_case"

class HabilitiesTest < ApplicationSystemTestCase
  setup do
    @hability = habilities(:one)
  end

  test "visiting the index" do
    visit habilities_url
    assert_selector "h1", text: "Habilities"
  end

  test "should create hability" do
    visit habilities_url
    click_on "New hability"

    fill_in "Category", with: @hability.category
    fill_in "Damage points", with: @hability.damage_points
    fill_in "Description", with: @hability.description
    fill_in "Name", with: @hability.name
    fill_in "Race", with: @hability.race_id
    click_on "Create Hability"

    assert_text "Hability was successfully created"
    click_on "Back"
  end

  test "should update Hability" do
    visit hability_url(@hability)
    click_on "Edit this hability", match: :first

    fill_in "Category", with: @hability.category
    fill_in "Damage points", with: @hability.damage_points
    fill_in "Description", with: @hability.description
    fill_in "Name", with: @hability.name
    fill_in "Race", with: @hability.race_id
    click_on "Update Hability"

    assert_text "Hability was successfully updated"
    click_on "Back"
  end

  test "should destroy Hability" do
    visit hability_url(@hability)
    click_on "Destroy this hability", match: :first

    assert_text "Hability was successfully destroyed"
  end
end
