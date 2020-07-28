require 'rails_helper'

RSpec.feature "AddToCarts", type: :feature do
   
  # SETUP
   before :each do
    @category = Category.create! name: 'Apparel'

    1.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "The cart is updated on the home page after adding a product" do
    # ACT
    visit root_path

    first('article.product').find_button('Add').click
    puts page.html

    # DEBUG
    # save_screenshot

    # VERIFY
    expect(page).to have_content 'My Cart (1)'
  end
end