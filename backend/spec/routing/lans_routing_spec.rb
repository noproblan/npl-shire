require 'rails_helper'

RSpec.describe LansController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/lans').to route_to('lans#index')
    end

    it 'routes to #new' do
      expect(get: '/lans/new').to route_to('lans#new')
    end

    it 'routes to #show' do
      expect(get: '/lans/1').to route_to('lans#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/lans/1/edit').to route_to('lans#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/lans').to route_to('lans#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/lans/1').to route_to('lans#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/lans/1').to route_to('lans#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/lans/1').to route_to('lans#destroy', id: '1')
    end
  end
end
