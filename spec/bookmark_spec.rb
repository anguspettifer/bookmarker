#require 'bookmark'

describe Bookmark do
    subject(:bookmark) { described_class }
    describe '.all' do
        it 'returns bookmarks' do
            connection = PG.connect(dbname: 'bookmark_manager_test')

            connection.exec("INSERT INTO bookmarks (url) VALUES ('https://www.facebook.com');")
            values = ["https://www.facebook.com"]
            expect(bookmark.all).to eq values
        end
    end

    describe '.add' do
      it "adds a new bookmark" do
        website = "https://www.facebook.com"
        bookmark.add(url: website)
        expect(bookmark.all).to include website
      end

      it "raises error if invalid URL" do
        website = "not a bookmark"
        expect{ bookmark.add(url: website) }.to raise_error "That is not a valid URL."
      end
    end
end
