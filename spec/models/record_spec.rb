require 'rails_helper'

RSpec.describe Record, type: :model do
  describe '#create' do
    let(:record) {build_stubbed(:record)}
    context 'can save' do
      it "is valid with a entered_at,exited_at,user_id" do
        expect(record).to be_valid
      end
      it "is valid without a exited_at" do
        record.exited_at = ""
        expect(record).to be_valid
      end
    end
    context 'can not save' do
      it "is invalid without a entered_at" do
        record.entered_at = ""
        expect(record).to be_invalid
      end
      it "is invalid without a user_id" do
        record.user_id = ""
        expect(record).to be_invalid
      end
    end
  end
end
