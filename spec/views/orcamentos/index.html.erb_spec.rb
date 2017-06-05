require 'rails_helper'

RSpec.describe "orcamentos/index", type: :view do
  before(:each) do
    assign(:orcamentos, [
      Orcamento.create!(
        :id => "",
        :description => "Description",
        :text => "Text",
        :employess_projects => nil,
        :clients => nil
      ),
      Orcamento.create!(
        :id => "",
        :description => "Description",
        :text => "Text",
        :employess_projects => nil,
        :clients => nil
      )
    ])
  end

  it "renders a list of orcamentos" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Text".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
