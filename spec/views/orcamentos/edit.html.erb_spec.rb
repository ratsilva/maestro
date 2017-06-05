require 'rails_helper'

RSpec.describe "orcamentos/edit", type: :view do
  before(:each) do
    @orcamento = assign(:orcamento, Orcamento.create!(
      :id => "",
      :description => "MyString",
      :text => "MyString",
      :employess_projects => nil,
      :clients => nil
    ))
  end

  it "renders the edit orcamento form" do
    render

    assert_select "form[action=?][method=?]", orcamento_path(@orcamento), "post" do

      assert_select "input#orcamento_id[name=?]", "orcamento[id]"

      assert_select "input#orcamento_description[name=?]", "orcamento[description]"

      assert_select "input#orcamento_text[name=?]", "orcamento[text]"

      assert_select "input#orcamento_employess_projects_id[name=?]", "orcamento[employess_projects_id]"

      assert_select "input#orcamento_clients_id[name=?]", "orcamento[clients_id]"
    end
  end
end
