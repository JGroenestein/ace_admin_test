require 'spec_helper'

describe "AceAdminPanels" do
  describe "GET /ace_admin_panels" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get ace_admin_panels_path
      response.status.should be(200)
    end
  end
end
