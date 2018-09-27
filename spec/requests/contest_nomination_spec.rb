require 'rails_helper'

RSpec.describe 'contest_nominations', type: :request do

	let!(:contest_nominations) { create_list(:contest_nomination, 5) }
	let(:contest_nomination_id) { contest_nominations.first.id }

	describe 'GET /contest_nominations' do

		before { get "/contest_nominations" }

		it 'returns contest_nominations' do
			expect(json).not_to be_empty
			expect(json['data'].size).to eq(5)
		end

		it 'returns 200' do
			expect(response).to have_http_status(200)
		end

	end

	describe 'GET /contest_nominations/:id' do 
		
		before { get "/contest_nominations/#{contest_nomination_id}" }

		context 'json exists' do

			it 'returns contest_nominations' do 
				expect(json).not_to be_empty
				expect(json['data']['id']).to eq(contest_nomination_id)
			end

			it 'returns 200' do 
				expect(response).to have_http_status(200)
			end

		end

		context 'json doesnt exist' do 

			let(:contest_nomination_id) { 100 }

			it 'returns 404' do 
				expect(response).to have_http_status(404)
			end

			it 'returns NOT FOUND' do 
				expect(response.body).to match(/Couldn't find ContestNomination/)
			end
		end
	end

	describe 'POST /contest_nominations' do

		context 'valid post request' do 

			let(:valid_attributes) {{caption:'YoloCaption'}}

			before {post "/contest_nominations",params: valid_attributes, headers: headers}

			it 'creates contest_nominations' do
				expect(json['data']['caption']).to eq('YoloCaption')
			end

			it 'returns 201' do
				expect(response).to have_http_status(201)
			end

		end
		
		context 'invalid post request' do 

			let(:invalid_attributes) {{caption: nil}}

			before {post "/contest_nominations",params: invalid_attributes, headers: headers}

			it 'returns validation failure' do
				expect(json['data']['caption']).to eq(nil)
			end

			it 'returns 201' do
				expect(response).to have_http_status(201)
			end

		end
	end

	describe 'PUT /contest_nominations/:id' do 

		let(:valid_attributes) {{caption: "Yolo"}}

		context 'json exists' do
			before {put "/contest_nominations/#{contest_nomination_id}", params: valid_attributes, headers: headers}

			it 'updates json' do
				expect(response.body).to be_empty
			end

			it 'returns 204' do 
				expect(response).to have_http_status(204)
			end

		end

	end

	describe 'DELETE /contest_nominations/:id' do
		
		before {delete "/contest_nominations/#{contest_nomination_id}"}

		it 'returns 204'do
			expect(response).to have_http_status(204)
		end
	end
end