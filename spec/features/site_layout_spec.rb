require "rails_helper"

RSpec.describe "Site layout", type: :feature do
  let(:layout_path) { Rails.root.join("app/views/layouts/application.html.erb") }
  let(:layout) { layout_path.read }

  it "has the expected page title fallback" do
    expect(layout).to include('content_for(:title) || "Dumnonni Chronicles"')
  end

  it "has a useful meta description" do
    expect(layout).to include('name="description"')
    expect(layout).to include("Dumnonni Chronicles")
    expect(layout).to include("live action roleplay")
  end

  it "loads the application stylesheet and importmap" do
    expect(layout).to include("stylesheet_link_tag :app")
    expect(layout).to include("javascript_importmap_tags")
  end

  it "has a skip link for accessibility" do
    expect(layout).to have_css('a.skip-link[href="#main-content"]', text: "Skip to content")
  end

  it "has a sticky site header" do
    expect(layout).to have_css("header.site-header")
  end

  it "links the logo to the homepage" do
    expect(layout).to have_css('a.site-logo-link[href="/"]')
    expect(layout).to include('alt: "Dumnonni Chronicles"')
    expect(layout).to include('class: "site-logo"')
  end

  it "has the expected desktop navigation links" do
    expect(layout).to have_css('nav.desktop-nav[aria-label="Primary navigation"]')
    expect(layout).to have_link("About", href: "/about")
    expect(layout).to have_link("Rules", href: "/rules")
    expect(layout).to have_link("Booking", href: "/booking")
    expect(layout).to have_link("Gallery", href: "/gallery")
    expect(layout).to have_link("Contact", href: "/contact")
  end

  it "uses a native details element for the mobile menu instead of custom JavaScript" do
    expect(layout).to have_css("details.mobile-nav-details")
    expect(layout).to have_css('summary.mobile-nav-summary[aria-label="Open navigation menu"]')

    expect(layout).not_to include("mobile-menu-button")
    expect(layout).not_to include("addEventListener")
    expect(layout).not_to include("classList.toggle")
  end

  it "has the expected mobile navigation links" do
    expect(layout).to have_css('nav.mobile-menu[aria-label="Mobile navigation"]', visible: :all)
    expect(layout).to have_link("Home", href: "/", visible: :all)
    expect(layout).to have_link("About", href: "/about", visible: :all)
    expect(layout).to have_link("Rules", href: "/rules", visible: :all)
    expect(layout).to have_link("Booking", href: "/booking", visible: :all)
    expect(layout).to have_link("Gallery", href: "/gallery", visible: :all)
    expect(layout).to have_link("Contact", href: "/contact", visible: :all)
  end

  it "has a main content area" do
    expect(layout).to have_css("main#main-content.site-main")
    expect(layout).to include("<%= yield %>")
  end

  it "has the expected footer content" do
    expect(layout).to have_css("footer.site-footer")
    expect(layout).to have_link("Facebook", href: "https://www.facebook.com/dumnonni")
    expect(layout).to have_link("Discord", href: "https://discord.gg/VPaFrcg6uf")
    expect(layout).to have_link("Google Maps", href: "https://maps.app.goo.gl/mTT6yJwWq8bZPWNL6")
    expect(layout).to include("What3Words")
    expect(layout).to include("voted.leotard.canoe")
  end

  it "uses the current year dynamically in the footer" do
    expect(layout).to include("Time.current.year")
  end
end