# frozen_string_literal: true

RSpec.describe "Movies" do
  describe "GET /movies" do
    it "returns OK" do
      get movies_path
      expect(response).to have_http_status(200)
    end

    context 'With a single movie' do
      let!(:movie) { create(:movie) }

      it 'returns the id, title & plot' do
        get movies_path

        expect(
          returned_json.first
        ).to have_id movie.id.to_s
        expect(
          returned_json.first
        ).to have_attribute(:title).with_value(movie.title)
        expect(
          returned_json.first
        ).to have_attribute(:plot).with_value(movie.plot)
      end
    end

    context 'With two movies' do
      let!(:now) { create(:movie) }
      let!(:newest) { travel(1.second) { create(:movie) } }

      it 'returns two movies' do
        get movies_path

        expect(returned_json.count).to eq 2
      end

      it 'lists the newest one first' do
        get movies_path

        expect(
          returned_json.first
        ).to have_id newest.id.to_s
        expect(
          returned_json.last
        ).to have_id now.id.to_s
      end
    end
  end

  def returned_json
    JSON.parse(response.body)['data']
  end
end
