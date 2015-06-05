module RFinvoice
  class AccountBic < Model
    attribute :value, ::RFinvoice::Type::NMToken8_11, required: true
    attribute :identification_scheme_name, ::RFinvoice::Type::BicScheme, required: true
  end
end