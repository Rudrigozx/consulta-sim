require "application_system_test_case"

class ConsultoriosTest < ApplicationSystemTestCase
  setup do
    @consultorio = consultorios(:one)
  end

  test "visiting the index" do
    visit consultorios_url
    assert_selector "h1", text: "Consultorios"
  end

  test "should create consultorio" do
    visit consultorios_url
    click_on "New consultorio"

    click_on "Create Consultorio"

    assert_text "Consultorio was successfully created"
    click_on "Back"
  end

  test "should update Consultorio" do
    visit consultorio_url(@consultorio)
    click_on "Edit this consultorio", match: :first

    click_on "Update Consultorio"

    assert_text "Consultorio was successfully updated"
    click_on "Back"
  end

  test "should destroy Consultorio" do
    visit consultorio_url(@consultorio)
    click_on "Destroy this consultorio", match: :first

    assert_text "Consultorio was successfully destroyed"
  end
end
