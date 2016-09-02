require 'rails_helper'

RSpec.describe "components/new", type: :view do
  before(:each) do
    assign(:component, Component.new(
      :name => "MyString",
      :status => "MyString"
    ))
  end

  it "renders new component form" do
    render

    assert_select "form[action=?][method=?]", components_path, "post" do

      assert_select "input#component_name[name=?]", "component[name]"

      assert_select "input#component_status[name=?]", "component[status]"
    end
  end
end
