require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe MblogsController do

  # This should return the minimal set of attributes required to create a valid
  # Mblog. As you add validations to Mblog, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {:user => "jimray", :email => "donald@disney.com"}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # MblogsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all mblogs as @mblogs" do
      mblog = Mblog.create! valid_attributes
      get :index, {}, valid_session
      assigns(:mblogs).should eq([mblog])
    end
  end

  describe "GET show" do
    it "assigns the requested mblog as @mblog" do
      mblog = Mblog.create! valid_attributes
      get :show, {:id => mblog.to_param}, valid_session
      assigns(:mblog).should eq(mblog)
    end
  end

  describe "GET new" do
    it "assigns a new mblog as @mblog" do
      get :new, {}, valid_session
      assigns(:mblog).should be_a_new(Mblog)
    end
  end

  describe "GET edit" do
    it "assigns the requested mblog as @mblog" do
      mblog = Mblog.create! valid_attributes
      get :edit, {:id => mblog.to_param}, valid_session
      assigns(:mblog).should eq(mblog)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Mblog" do
        expect {
          post :create, {:mblog => valid_attributes}, valid_session
        }.to change(Mblog, :count).by(1)
      end

      it "assigns a newly created mblog as @mblog" do
        post :create, {:mblog => valid_attributes}, valid_session
        assigns(:mblog).should be_a(Mblog)
        assigns(:mblog).should be_persisted
      end

      it "redirects to the created mblog" do
        post :create, {:mblog => valid_attributes}, valid_session
        response.should redirect_to(Mblog.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved mblog as @mblog" do
        # Trigger the behavior that occurs when invalid params are submitted
        Mblog.any_instance.stub(:save).and_return(false)
        post :create, {:mblog => {}}, valid_session
        assigns(:mblog).should be_a_new(Mblog)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Mblog.any_instance.stub(:save).and_return(false)
        post :create, {:mblog => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested mblog" do
        mblog = Mblog.create! valid_attributes
        # Assuming there are no other mblogs in the database, this
        # specifies that the Mblog created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Mblog.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => mblog.to_param, :mblog => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested mblog as @mblog" do
        mblog = Mblog.create! valid_attributes
        put :update, {:id => mblog.to_param, :mblog => valid_attributes}, valid_session
        assigns(:mblog).should eq(mblog)
      end

      it "redirects to the mblog" do
        mblog = Mblog.create! valid_attributes
        put :update, {:id => mblog.to_param, :mblog => valid_attributes}, valid_session
        response.should redirect_to(mblog)
      end
    end

    describe "with invalid params" do
      it "assigns the mblog as @mblog" do
        mblog = Mblog.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Mblog.any_instance.stub(:save).and_return(false)
        put :update, {:id => mblog.to_param, :mblog => {}}, valid_session
        assigns(:mblog).should eq(mblog)
      end

      it "re-renders the 'edit' template" do
        mblog = Mblog.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Mblog.any_instance.stub(:save).and_return(false)
        put :update, {:id => mblog.to_param, :mblog => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested mblog" do
      mblog = Mblog.create! valid_attributes
      expect {
        delete :destroy, {:id => mblog.to_param}, valid_session
      }.to change(Mblog, :count).by(-1)
    end

    it "redirects to the mblogs list" do
      mblog = Mblog.create! valid_attributes
      delete :destroy, {:id => mblog.to_param}, valid_session
      response.should redirect_to(mblogs_url)
    end
  end

end