class SubBoard < ApplicationRecord
  belongs_to :board
  after_initialize :init

  def init
    self.topr = ''
    self.topc = ''
    self.topl = ''
    self.midl = ''
    self.midc = ''
    self.midr = ''
    self.botl = ''
    self.botc = ''
    self.botr = ''
  end

  def board_placements
    [self.topr, self.topc, self.topl, self.midl, self.midc, self.midr, self.botl, self.botc, self.botr]
  end

  def add_move(position, player)
    self.topr = player if position == 0
    self.topc = player if position == 1
    self.topl = player if position == 2
    self.midl = player if position == 3
    self.midc = player if position == 4
    self.midr = player if position == 5
    self.botl = player if position == 6
    self.botc = player if position == 7
    self.botr = player if position == 8
    self.save!
  end
end