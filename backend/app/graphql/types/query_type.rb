Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  field :me, Types::UserType do
    description 'Logged in user'
    resolve lambda { |_obj, _args, ctx|
      ctx[:current_user]
    }
  end

  field :lans, types[Types::LanType] do
    description 'All lans'
    resolve lambda { |_obj, _args, _ctx|
      Lan.all.order(created_at: :desc)
    }
  end

  field :tickets, Types::TicketType do
    description 'All tickets'
    # guard ->(_obj, _args, ctx) { ctx[:current_user].present? }
    resolve lambda { |_obj, _args, ctx|
      ctx[:current_user].tickets.order(created_at: :desc)
    }
  end
end
