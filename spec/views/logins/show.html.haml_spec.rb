require 'spec_helper'

describe "logins/show" do
  before(:each) do
    @login = assign(:login, stub_model(Login,
      :person_id => 1,
      :login_key => "Login Key"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Login Key/)
  end
end
