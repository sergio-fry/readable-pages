require "spec_helper"

include Web::Logic

describe Web::Logic::Page do
  let(:page) { Page.new }

  it 'can be initialized' do
    page.must_be_kind_of Page
    page.title.must_equal
  end
end
