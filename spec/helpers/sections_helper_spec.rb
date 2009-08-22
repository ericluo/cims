# encoding: utf-8
# require 'haml'
require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

text = <<-EOF
%span.prepend-1= section.name
.section-content
  %table
    %tr
      %th 姓名
EOF

describe Haml do
  before :each do
    @section = Factory.create(:section, name: '这里')
  end

  it "should render template with utf-8 encoding" do
    engine = Haml::Engine.new(text)
    output = engine.render(Object.new, section: @section)
    output.encoding.should == Encoding::UTF_8
  end
end
