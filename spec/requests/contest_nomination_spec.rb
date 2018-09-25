require 'rails_helper'

RSpec.describe 'contest_nomination', type: :request do

	let!(:contest_nominations) { create_list(:contest_nomination, 10) }
	let(:contest_nomination_id) { contest_nominations.first.id }

	describe 'GET /contest_nomination' do

		before { get '/contest_nomination' }

		it 'returns contest_nomination' do
			expect(json).not_to be_empty
			expect(json.size==2)
		end

		it 'returns 200' do
			expect(response).to have_http_status(200)
		end

	end

	describe 'GET /contest_nomination/:id' do 
		
		before { get "/contest_nomination/#{contest_nomination_id}" }

		context 'json exists' do

			it 'returns contest_nomination' do 
				expect(json).not_to be_empty
				expect(json['id']==contest_nomination_id)
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

	describe 'POST /contest_nomination' do

		context 'valid post request' do 

			let(:valid_attributes) {{caption:'YoloCaption'}.to_json}

			before {post '/contest_nomination',params: valid_attributes, headers: headers}

			it 'creates contest_nomination' do
				expect(json['caption']=='YoloCaption')
			end

			it 'returns 201' do
				expect(response).to have_http_status(201)
			end

		end
		
		context 'invalid post request' do 

			let(:invalid_attributes) {{caption: nil}.to_json}

			before {post '/contest_nomination',params: invalid_attributes, headers: headers}

			it 'returns validation failure' do
				expect(json['caption']==nil)
			end

			it 'returns 201' do
				expect(response).to have_http_status(201)
			end

		end
	end

end