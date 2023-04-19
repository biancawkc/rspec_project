require 'rails_helper'

RSpec.describe Song, type: :model do
    before(:all) do
        @song = Song.create(title: "Like a Rolling Stone")
    end

    it 'checks that a song can be created' do
        expect(@song).to be_valid
    end

    it 'checks that a song can be read' do
        expect(Song.find_by_title("Like a Rolling Stone")) == @song.title
    end

    it 'checks that a song can be updated' do
        @song.update(:title => "Like a Rolling Stone - Remastered")
        expect(Song.find_by_title("Like a Rolling Stone - Remastered")).to eq(@song)
    end

    it 'checks that a song can be destroyed' do
        @song.destroy
        expect(Song.find_by(title: "Like a Rolling Stone - Remastered")).to be_nil
    end

end