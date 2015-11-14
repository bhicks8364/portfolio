require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :name => "MyString",
      :description => "MyText",
      :img_url => "MyString",
      :price => "9.99",
      :qty => 1
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_name[name=?]", "product[name]"

      assert_select "textarea#product_description[name=?]", "product[description]"

      assert_select "input#product_img_url[name=?]", "product[img_url]"

      assert_select "input#product_price[name=?]", "product[price]"

      assert_select "input#product_qty[name=?]", "product[qty]"
    end
  end
end
