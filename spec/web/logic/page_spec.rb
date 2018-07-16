require "spec_helper"

include Web::Logic

describe Web::Logic::Page do
  let(:page) { Page.new '' }

  it 'can be created' do
    page.must_be_kind_of Page
  end
end
