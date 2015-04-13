class Luta < ActiveRecord::Base
  belongs_to :lutador1, :class_name => 'Lutador'
  belongs_to :lutador2, :class_name => 'Lutador'
  belongs_to :arbitro
end
