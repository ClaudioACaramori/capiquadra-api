class Court < Space
  extend Enumerize

  enumerize :kind, in: { poli: 3, volley: 4, sand: 5, tennis: 6 }
end
