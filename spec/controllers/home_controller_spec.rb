require 'spec_helper'

describe HomeController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
    it "returns all the posts" do
      get 'index',{}
      assigns(:posts).should eq([])
    end
  end

end
