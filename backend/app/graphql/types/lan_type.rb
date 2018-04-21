Types::LanType = GraphQL::ObjectType.define do
  name 'Lan'
  description ''

  field :id, !types.ID
  field :name, !types.String
  field :startsAt, !Types::DateTimeType, property: :starts_at
  field :endsAt, !Types::DateTimeType, property: :ends_at
  field :plannedSeats, !types.Int, property: :planned_seats
  field :description, types.String
  field :tickets, types[Types::TicketType]
end
