class Pool < Space
  extend Enumerize

  enumerize :kind, in: { swimming: 1, diving: 2 }
end
