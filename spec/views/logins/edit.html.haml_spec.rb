require 'spec_helper'

describe "logins/edit" do
  before(:each) do
    @login = assign(:login, stub_model(Login,
      :person_id => 1,
      :login_key => "MyString"
    ))
  end

  it "renders the edit login form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", login_path(@login), "post" do
      assert_select "input#login_person_id[name=?]", "login[person_id]"
      assert_select "input#login_login_key[name=?]", "login[login_key]"
    end
  end
end
