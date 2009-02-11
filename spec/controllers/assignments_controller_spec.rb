require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe AssignmentsController do

  def mock_assignment(stubs={})
    @mock_assignment ||= mock_model(Assignment, stubs)
  end
  
  describe "responding to GET index" do

    it "should expose all assignments as @assignments" do
      Assignment.should_receive(:find).with(:all).and_return([mock_assignment])
      get :index
      assigns[:assignments].should == [mock_assignment]
    end

    describe "with mime type of xml" do
  
      it "should render all assignments as xml" do
        request.env["HTTP_ACCEPT"] = "application/xml"
        Assignment.should_receive(:find).with(:all).and_return(assignments = mock("Array of Assignments"))
        assignments.should_receive(:to_xml).and_return("generated XML")
        get :index
        response.body.should == "generated XML"
      end
    
    end

  end

  describe "responding to GET show" do

    it "should expose the requested assignment as @assignment" do
      Assignment.should_receive(:find).with("37").and_return(mock_assignment)
      get :show, :id => "37"
      assigns[:assignment].should equal(mock_assignment)
    end
    
    describe "with mime type of xml" do

      it "should render the requested assignment as xml" do
        request.env["HTTP_ACCEPT"] = "application/xml"
        Assignment.should_receive(:find).with("37").and_return(mock_assignment)
        mock_assignment.should_receive(:to_xml).and_return("generated XML")
        get :show, :id => "37"
        response.body.should == "generated XML"
      end

    end
    
  end

  describe "responding to GET new" do
  
    it "should expose a new assignment as @assignment" do
      Assignment.should_receive(:new).and_return(mock_assignment)
      get :new
      assigns[:assignment].should equal(mock_assignment)
    end

  end

  describe "responding to GET edit" do
  
    it "should expose the requested assignment as @assignment" do
      Assignment.should_receive(:find).with("37").and_return(mock_assignment)
      get :edit, :id => "37"
      assigns[:assignment].should equal(mock_assignment)
    end

  end

  describe "responding to POST create" do

    describe "with valid params" do
      
      it "should expose a newly created assignment as @assignment" do
        Assignment.should_receive(:new).with({'these' => 'params'}).and_return(mock_assignment(:save => true))
        post :create, :assignment => {:these => 'params'}
        assigns(:assignment).should equal(mock_assignment)
      end

      it "should redirect to the created assignment" do
        Assignment.stub!(:new).and_return(mock_assignment(:save => true))
        post :create, :assignment => {}
        response.should redirect_to(assignment_url(mock_assignment))
      end
      
    end
    
    describe "with invalid params" do

      it "should expose a newly created but unsaved assignment as @assignment" do
        Assignment.stub!(:new).with({'these' => 'params'}).and_return(mock_assignment(:save => false))
        post :create, :assignment => {:these => 'params'}
        assigns(:assignment).should equal(mock_assignment)
      end

      it "should re-render the 'new' template" do
        Assignment.stub!(:new).and_return(mock_assignment(:save => false))
        post :create, :assignment => {}
        response.should render_template('new')
      end
      
    end
    
  end

  describe "responding to PUT udpate" do

    describe "with valid params" do

      it "should update the requested assignment" do
        Assignment.should_receive(:find).with("37").and_return(mock_assignment)
        mock_assignment.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :assignment => {:these => 'params'}
      end

      it "should expose the requested assignment as @assignment" do
        Assignment.stub!(:find).and_return(mock_assignment(:update_attributes => true))
        put :update, :id => "1"
        assigns(:assignment).should equal(mock_assignment)
      end

      it "should redirect to the assignment" do
        Assignment.stub!(:find).and_return(mock_assignment(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(assignment_url(mock_assignment))
      end

    end
    
    describe "with invalid params" do

      it "should update the requested assignment" do
        Assignment.should_receive(:find).with("37").and_return(mock_assignment)
        mock_assignment.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :assignment => {:these => 'params'}
      end

      it "should expose the assignment as @assignment" do
        Assignment.stub!(:find).and_return(mock_assignment(:update_attributes => false))
        put :update, :id => "1"
        assigns(:assignment).should equal(mock_assignment)
      end

      it "should re-render the 'edit' template" do
        Assignment.stub!(:find).and_return(mock_assignment(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end

    end

  end

  describe "responding to DELETE destroy" do

    it "should destroy the requested assignment" do
      Assignment.should_receive(:find).with("37").and_return(mock_assignment)
      mock_assignment.should_receive(:destroy)
      delete :destroy, :id => "37"
    end
  
    it "should redirect to the assignments list" do
      Assignment.stub!(:find).and_return(mock_assignment(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(assignments_url)
    end

  end

end
