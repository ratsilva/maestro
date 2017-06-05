require 'rails_helper'

RSpec.describe "orcamentos/new", type: :view do
  before(:each) do
    assign(:orcamento, Orcamento.new(
      :id => "",
      :description => "MyString",
      :text => "MyString",
      :employess_projects => nil,
      :clients => nil
    ))
  end

  it "renders new orcamento form" do
    render

    assert_select "form[action=?][method=?]", orcamentos_path, "post" do

      assert_select "input#orcamento_id[name=?]", "orcamento[id]"

      assert_select "input#orcamento_description[name=?]", "orcamento[description]"

      assert_select "input#orcamento_text[name=?]", "orcamento[text]"

      assert_select "input#orcamento_employess_projects_id[name=?]", "orcamento[employess_projects_id]"

      assert_select "input#orcamento_clients_id[name=?]", "orcamento[clients_id]"
    end
  end
end
