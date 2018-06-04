Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  field :me, Types::UserType do
    description 'Logged in user'
    resolve lambda { |_obj, _args, ctx|
      ctx[:current_user]
    }
  end

  field :lan, Types::LanType do
    description 'Currently running or upcoming LAN'
    resolve lambda { |_obj, _args, _ctx|
      Lan.first_current_or_upcoming
    }
  end

  field :ticket, Types::TicketType do
    description 'My ticket'
    resolve lambda { |_obj, _args, ctx|
      Ticket.find_by(user: ctx[:current_user], lan: Lan.first_current_or_upcoming)
    }
  end
end
