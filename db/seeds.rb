Image.create!([
  {url: "https://www.knoll.com/static_resources/images/products/catalog/eco/parts/70L/70L-C_(K1806)_K18062_K18062_~_~_FZ.jpg", product_id: 3, name: "Womb Chair"},
  {url: "https://www.knoll.com/static_resources/images/products/catalog/eco/parts/1205CS1/1205CS1-(PC)_~_(K1206)_K120613_FZ.jpg", product_id: 4, name: "Florence Knoll Lounge Chair"},
  {url: "https://www.knoll.com/static_resources/images/products/catalog/eco/parts/196625/196625-(WWW)_W_W_W_FZ.jpg", product_id: 6, name: "1966 Lounge Chair"},
  {url: "https://www.knoll.com/static_resources/images/products/catalog/eco/parts/657/657-BLBLCK_PTBLCK_FZ.jpg", product_id: 7, name: "Pollock Arm Chair"},
  {url: "https://www.knoll.com/static_resources/images/products/catalog/eco/parts/50L/50L-(PC)_BLBLCK_FZ.jpg", product_id: 5, name: "Wassily Chair"},
  {url: "https://www.knoll.com/static_resources/images/products/catalog/eco/parts/421L/421L-C_K_(K2026)_K20268_~_FZ.jpg", product_id: 1, name: "Good Chair"},
  {url: "https://www.knoll.com/static_resources/images/products/catalog/eco/parts/250L/250L-C_~_(VO)_VOBLK_FZ.jpg", product_id: 2, name: "Barcelona Chair"},
  {url: "http://s7d2.scene7.com/is/image/DesignWithinReach/PD_5702_MAIN?$main$", product_id: 4, name: "Florence Knoll Lounge Chair in Volo Leather"}
])
Product.create!([
  {name: "Womb Chair", price: 3917, description: "Designed by Eero Saarinen in 1948", supplier_id: 2},
  {name: "Florence Knoll Lounge Chair", price: 5095, description: "Designed by Florence Knoll in 1954", supplier_id: 1},
  {name: "1966 Lounge Chair", price: 1427, description: "Designed by Richard Schultz in 1966", supplier_id: 2},
  {name: "Pollock Arm Chair", price: 2525, description: "Designed by Charles Pollock in 1960", supplier_id: 3},
  {name: "Wassily Chair", price: 2572, description: "Designed by Marcel Breuer in 1925", supplier_id: 3},
  {name: "Good Chair", price: 2000, description: nil, supplier_id: 3},
  {name: "Barcelona Chair", price: 5760, description: "Ludwig Mies van der Rohe 1929", supplier_id: 2},
  {name: "Test", price: 23, description: "Testing", supplier_id: 1},
  {name: "test 2", price: 5678, description: "testing default image", supplier_id: 1}
])
Supplier.create!([
  {name: "CB2", email: "cb2@cb2.com", phone: "312-222-2222"},
  {name: "Knoll", email: "knoll@knoll.com", phone: "312-333-4455"},
  {name: "West Elm", email: "westelm@westelm.com", phone: "312-230-6641"}
])
