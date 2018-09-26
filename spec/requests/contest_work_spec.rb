require 'rails_helper'

RSpec.describe 'contest_work' do
	
	let!(:contest_nomination) { create(:contest_nomination) }
	let!(:contest_works) { create_list(:contest_work,10,contest_nomination_id: contest_nomination.id)}

	let(:contest_nomination_id) { contest_nomination.id }
	let(:id) { contest_works.first.id }


	describe 'GET /contest_nomination/:contest_nomination_id/contest_work' do

		before { get "/contest_nomination/#{contest_nomination_id}/contest_work" }

		context 'contest_nom exists' do

			it 'returns all contest_works' do
				expect(json['data'].size).to eq(10)
			end

			it 'returns 200' do
				expect(response).to have_http_status(200)
			end
		end

		context 'contest_nom doesnt exists' do

			let(:contest_nomination_id) { 0 }

			it 'returns NOT FOUND' do
				expect(response.body).to match(/Couldn't find ContestNomination/)
			end

			it 'returns 404' do
				expect(response).to have_http_status(404)
			end
		end
	end

	describe 'GET /contest_nomination/:contest_nomination_id/contest_work/:id' do

		before { get "/contest_nomination/#{contest_nomination_id}/contest_work/#{id}"}

		context 'contest_work exists' do

			it 'returns contest_work' do
				expect(json['data']['id']).to eq(id)
			end

			it 'returns 200' do
				expect(response).to have_http_status(200)
			end
		end

		context 'contest_work doesnt exists' do

			let(:id) { 0 }

			it 'returns NOT FOUND' do
				expect(response.body).to match(/Couldn't find ContestWork/)
			end

			it 'returns 404' do
				expect(response).to have_http_status(404)
			end
		end
	end

	describe 'POST /contest_nomination/:contest_nomination_id/contest_work' do

		context 'valid post request' do 

			before {post "/contest_nomination/#{contest_nomination_id}/contest_work", headers: headers}

			it 'returns 201' do
				expect(response).to have_http_status(201)
			end

		end
		
		context 'invalid post request' do 

			let(:invalid_attributes) {{first_name: nil}}
			before {post "/contest_nomination/#{contest_nomination_id}/contest_work",params: invalid_attributes, headers: headers}

			it 'returns validation failure' do
				expect(json['data']['first_name']).to eq(nil)
			end

			it 'returns 201' do
				expect(response).to have_http_status(201)
			end

		end
	end

	describe 'PUT /contest_nomination/:contest_nomination_id/contest_work/:id' do
		
		let(:valid_attributes) {{first_name: 'Alex'}}
		before {put "/contest_nomination/#{contest_nomination_id}/contest_work/#{id}",params: valid_attributes}

		context 'contest_work exists' do 

			it 'updates contest_work' do
				upd_contest_work=ContestWork.find(id)
				expect(upd_contest_work.first_name).to match(/Alex/)
			end

			it 'returns 204' do
				expect(response).to have_http_status(204)
			end

		end

		context 'contest_work doesnt exists' do 

			let(:id) {0}

			it 'returns NOT FOUND' do
				expect(response.body).to match(/Couldn't find/)
			end

			it 'returns 404' do
				expect(response).to have_http_status(404)
			end

		end

	end

	describe 'DELETE /contest_nomination/:id' do 

		before {delete "/contest_nomination/#{contest_nomination_id}/contest_work/#{id}"}

		it 'returns 204' do
			expect(response).to have_http_status(204)
		end

	end

end