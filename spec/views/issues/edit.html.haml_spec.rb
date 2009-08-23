require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/issues/edit.html.haml" do
  include IssuesHelper

  before(:each) do
    assigns[:issue] = @issue = stub_model(Issue,
      :new_record? => false
    )
    # assigns[:issue] = Factory.create(:issue)
  end

  it "renders the edit issue form" do
    render

    response.should have_tag("form[action=#{issue_path(@issue)}][method=post]") do
    end
  end
end
