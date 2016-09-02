require 'rails_helper'

RSpec.describe "components/edit", type: :view do
  before(:each) do
    @component = assign(:component, Component.create!(
      :name => "MyString",
      :status => "MyString"
    ))
  end

  it "renders the edit component form" do
    render

    assert_select "form[action=?][method=?]", component_path(@component), "post" do

      assert_select "input#component_name[name=?]", "component[name]"

      assert_select "input#component_status[name=?]", "component[status]"
    end
  end
end
