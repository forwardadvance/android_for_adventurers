require 'spec_helper'

describe "logins/index" do
  before(:each) do
    assign(:logins, [
      stub_model(Login,
        :person_id => 1,
        :login_key => "Login Key"
      ),
      stub_model(Login,
        :person_id => 1,
        :login_key => "Login Key"
      )
    ])
  end

  it "renders a list of logins" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Login Key".to_s, :count => 2
  end
end
