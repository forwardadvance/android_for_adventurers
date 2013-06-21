require 'spec_helper'

describe "logins/new" do
  before(:each) do
    assign(:login, stub_model(Login,
      :person_id => 1,
      :login_key => "MyString"
    ).as_new_record)
  end

  it "renders new login form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", logins_path, "post" do
      assert_select "input#login_person_id[name=?]", "login[person_id]"
      assert_select "input#login_login_key[name=?]", "login[login_key]"
    end
  end
end
