class Types::TicketStatusType < GraphQL::Schema::Enum
  value 'ordered', :ordered
  value 'paid', :paid
end
