item_category_1 = ItemCategory.create(name: "Men's Clothing")

item_category_1_item_1 = item_category_1.items.create(name: "Seven Rocks Men's Cotton T-Shirt", rate: 600.0)
item_category_1_item_2 = item_category_1.items.create(name: "KILLER Men's Checkered Slim Fit T-Shirt", rate: 800.0)
item_category_1_item_3 = item_category_1.items.create(name: "Symbol Men's Printed Regular Fit T-Shirt", rate: 788.0)
item_category_1_item_4 = item_category_1.items.create(name: "Wrangler Men's Solid Regular Fit T-Shirt", rate: 359.0)
item_category_1_item_5 = item_category_1.items.create(name: "Flying Machine Men's Solid Regular Fit T-Shirt", rate: 499.0 )

item_category_1_item_1.item_taxes.create(tax_type: "percentage",tax: 2)
item_category_1_item_1.item_taxes.create(tax_type: "value",tax: 10)

item_category_1_item_2.item_taxes.create(tax_type: "percentage",tax: 1.5)
item_category_1_item_2.item_taxes.create(tax_type: "value",tax: 5)

item_category_1_item_3.item_taxes.create(tax_type: "percentage",tax: 2.5)
item_category_1_item_3.item_taxes.create(tax_type: "value",tax: 10)

item_category_1_item_4.item_taxes.create(tax_type: "percentage",tax: 4)
item_category_1_item_4.item_taxes.create(tax_type: "value",tax: 8)

item_category_1_item_5.item_taxes.create(tax_type: "percentage",tax: 9)
item_category_1_item_5.item_taxes.create(tax_type: "value",tax: 15)

item_category_2 = ItemCategory.create(name: "Televisions")


item_category_2_item_1 = item_category_2.items.create(name: "BPL 109 cm (43 inches) Vivid", rate: 17990.0)
item_category_2_item_2 = item_category_2.items.create(name: "Sanyo 108.2 cm (43 inches) XT", rate: 19990.0)
item_category_2_item_3 = item_category_2.items.create(name: "Panasonic 147 cm (58 inches) TH", rate: 48990.0)
item_category_2_item_4 = item_category_2.items.create(name: "Samsung 80 cm (32 inches) M", rate: 21990.0)
item_category_2_item_5 = item_category_2.items.create(name: "LG 32LK510 (32 inches) HD", rate: 75990.0 )

item_category_2_item_1.item_taxes.create(tax_type: "percentage",tax: 5)
item_category_2_item_1.item_taxes.create(tax_type: "value",tax: 150)

item_category_2_item_2.item_taxes.create(tax_type: "percentage",tax: 8)
item_category_2_item_2.item_taxes.create(tax_type: "value",tax: 100)

item_category_2_item_3.item_taxes.create(tax_type: "percentage",tax: 9)
item_category_2_item_3.item_taxes.create(tax_type: "value",tax: 200)

item_category_2_item_4.item_taxes.create(tax_type: "percentage",tax: 7)
item_category_2_item_4.item_taxes.create(tax_type: "value",tax: 188)

item_category_2_item_5.item_taxes.create(tax_type: "percentage",tax: 10)
item_category_2_item_5.item_taxes.create(tax_type: "value",tax: 152)


