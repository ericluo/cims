require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/issues/index.html.haml" do
  include IssuesHelper

  before(:each) do
    assigns[:issues] = [
      stub_model(Issue),
      stub_model(Issue)
    ]
  end

  it "renders a list of issues" do
    render
  end
end
