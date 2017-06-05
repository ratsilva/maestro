require 'rails_helper'

RSpec.describe "orcamentos/show", type: :view do
  before(:each) do
    @orcamento = assign(:orcamento, Orcamento.create!(
      :id => "",
      :description => "Description",
      :text => "Text",
      :employess_projects => nil,
      :clients => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Text/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
