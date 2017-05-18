class Player
  include Mongoid::Document

  field :player_id, type: String
  field :line_id, type: String
  field :name, type: String
  field :gender, type: String
  field :hp_permission, type: String
  field :ranking_permission, type: String
  field :image, type: String
  field :content, type: String
  field :join_year, type: Integer
  field :regitry_status, type: Boolean
  field :regitry_hash, type: String
 
end
