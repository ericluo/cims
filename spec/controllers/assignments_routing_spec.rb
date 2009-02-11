require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe AssignmentsController do
  describe "route generation" do
    it "should map #index" do
      route_for(:controller => "assignments", :action => "index").should == "/assignments"
    end
  
    it "should map #new" do
      route_for(:controller => "assignments", :action => "new").should == "/assignments/new"
    end
  
    it "should map #show" do
      route_for(:controller => "assignments", :action => "show", :id => 1).should == "/assignments/1"
    end
  
    it "should map #edit" do
      route_for(:controller => "assignments", :action => "edit", :id => 1).should == "/assignments/1/edit"
    end
  
    it "should map #update" do
      route_for(:controller => "assignments", :action => "update", :id => 1).should == "/assignments/1"
    end
  
    it "should map #destroy" do
      route_for(:controller => "assignments", :action => "destroy", :id => 1).should == "/assignments/1"
    end
  end

  describe "route recognition" do
    it "should generate params for #index" do
      params_from(:get, "/assignments").should == {:controller => "assignments", :action => "index"}
    end
  
    it "should generate params for #new" do
      params_from(:get, "/assignments/new").should == {:controller => "assignments", :action => "new"}
    end
  
    it "should generate params for #create" do
      params_from(:post, "/assignments").should == {:controller => "assignments", :action => "create"}
    end
  
    it "should generate params for #show" do
      params_from(:get, "/assignments/1").should == {:controller => "assignments", :action => "show", :id => "1"}
    end
  
    it "should generate params for #edit" do
      params_from(:get, "/assignments/1/edit").should == {:controller => "assignments", :action => "edit", :id => "1"}
    end
  
    it "should generate params for #update" do
      params_from(:put, "/assignments/1").should == {:controller => "assignments", :action => "update", :id => "1"}
    end
  
    it "should generate params for #destroy" do
      params_from(:delete, "/assignments/1").should == {:controller => "assignments", :action => "destroy", :id => "1"}
    end
  end
end
