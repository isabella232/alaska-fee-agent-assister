require "rails_helper"

RSpec.describe AttachDocumentsSignpostController do
  it_behaves_like "form controller base behavior", is_last_section: true
  it_behaves_like "form controller always shows"
end