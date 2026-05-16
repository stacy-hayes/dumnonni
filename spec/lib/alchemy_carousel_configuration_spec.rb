require "rails_helper"
require "yaml"

RSpec.describe "Alchemy carousel configuration" do
  let(:elements) do
    YAML.load_file(Rails.root.join("config/alchemy/elements.yml"))
  end

  let(:elements_by_name) do
    elements.index_by { |element| element.fetch("name") }
  end

  it "allows carousel slides to link to a page" do
    carousel_slide = elements_by_name.fetch("carousel_slide")
    ingredient_roles = carousel_slide.fetch("ingredients").map { |ingredient| ingredient.fetch("role") }

    expect(ingredient_roles).to include("image")
    expect(ingredient_roles).to include("linked_page")
    expect(ingredient_roles).to include("title")
    expect(ingredient_roles).to include("description")
  end

  it "uses a page ingredient for the linked page" do
    linked_page = elements_by_name
                    .fetch("carousel_slide")
                    .fetch("ingredients")
                    .find { |ingredient| ingredient.fetch("role") == "linked_page" }

    expect(linked_page).to include("type" => "Page")
  end
end