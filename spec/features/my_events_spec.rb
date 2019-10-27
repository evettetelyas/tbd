require 'rails_helper'

describe 'My Events Index Page' do
  it 'a logged in user can click on My Events and see a page of all the events they have conversed in' do
    user = create(:user)


    visit '/'

  end
end
