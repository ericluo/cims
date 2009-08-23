require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/issues/new.html.haml" do
  include IssuesHelper

  before(:each) do
    # assigns[:issue] = stub_model(Issue,
      # :new_record? => true
    # )
    assigns[:issue] = Factory.build(:issue)
  end

  it "renders new issue form" do
    render

    response.should have_tag("form[action=?][method=post]", issues_path) do
    end
  end
end
