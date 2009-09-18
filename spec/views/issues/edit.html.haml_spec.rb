require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/issues/edit.html.haml" do
  include IssuesHelper

  before(:each) do
    issue = stub_model(Issue, :new_recore? => false)
    # issue.should_receive(:subject).and_return("0x5e4f")
    issue.subject = "0x5e4f"
    assigns[:issue] = @issue = issue
    # assigns[:issue] = @issue = stub_model(Issue,
      # :new_record? => false
    # )
    # assigns[:issue] = @issue = Factory.create(:issue)
    # @issue.subject = "0x14"
  end

  it "renders the edit issue form" do
    render
    response.should have_tag("form[action=#{issue_path(@issue)}][method=post]") do
    end
  end
end
