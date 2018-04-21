include FactoryBot::Syntax::Methods

user = User.new(nickname: 'sadi', email: 'sadi@noproblan.ch', password: '12345678')
user.skip_confirmation!
user.save!

create(:lan, :past, name: 'v4.5', tickets: [build(:ticket, user: user)])
create(:lan, :now, name: 'v31.3', tickets: [build(:ticket, user: user)])
create(:lan, :coming, name: 'v1337.1', tickets: [build(:ticket, user: user)])
