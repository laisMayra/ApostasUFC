class Aposta < ActiveRecord::Base
  belongs_to :tipoAposta
  belongs_to :luta
  belongs_to :jogador
end
