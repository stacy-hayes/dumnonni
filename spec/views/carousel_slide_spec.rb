require "rails_helper"

RSpec.describe "Alchemy carousel partials" do
  let(:carousel_partial) do
    Rails.root.join("app/views/alchemy/elements/_carousel.html.erb").read
  end

  let(:slide_partial) do
    Rails.root.join("app/views/alchemy/elements/_carousel_slide.html.erb").read
  end

  it "uses a Stimulus carousel controller" do
    expect(carousel_partial).to include('data-controller="carousel"')
  end

  it "renders a horizontal carousel viewport and track" do
    expect(carousel_partial).to include("content-carousel-viewport")
    expect(carousel_partial).to include("content-carousel-track")
    expect(carousel_partial).to include('data-carousel-target="track"')
  end

  it "links the carousel image and title to the selected page" do
    expect(slide_partial).to include('link_to page_url, class: "carousel-image-link"')
    expect(slide_partial).to include('link_to title, page_url, class: "carousel-title-link"')
    expect(slide_partial).to include("carousel-text")
    expect(slide_partial).not_to include('link_to page_url, class: "carousel-card"')
  end

  it "renders carousel slide content without card outline markup" do
    expect(slide_partial).to include("carousel-slide-content")
    expect(slide_partial).not_to include("carousel-card-body")
  end

  it "renders previous and next arrow buttons" do
    expect(carousel_partial).to include("content-carousel-arrow")
    expect(carousel_partial).to include("content-carousel-arrow-left")
    expect(carousel_partial).to include("content-carousel-arrow-right")
    expect(carousel_partial).to include('data-action="carousel#previous"')
    expect(carousel_partial).to include('data-action="carousel#next"')
  end

  it "renders each nested element through the carousel slide partial" do
    expect(carousel_partial).to include('partial: "alchemy/elements/carousel_slide"')
    expect(carousel_partial).to include("collection: slides")
    expect(carousel_partial).to include("as: :element")
  end

  it "does not use CSS anchor pagination or Bootstrap carousel markup" do
    expect(carousel_partial).not_to include("previous_page_id")
    expect(carousel_partial).not_to include("next_page_id")
    expect(carousel_partial).not_to include("carousel-item")
    expect(carousel_partial).not_to include("data-bs-slide")
  end

  it "renders carousel slide cards without Bootstrap carousel item markup" do
    expect(slide_partial).to include("carousel-card")
    expect(slide_partial).not_to include("carousel-item")
  end

  it "uses Alchemy element values for slide content" do
    expect(slide_partial).to include("element.value_for(:linked_page)")
    expect(slide_partial).to include("element.value_for(:title)")
    expect(slide_partial).to include("element.value_for(:description)")
    expect(slide_partial).not_to include("el.ingredient")
  end
end