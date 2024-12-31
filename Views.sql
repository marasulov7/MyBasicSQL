CREATE VIEW vw_goods AS
  SELECT g.id_goods, g.id_categories, g.goods, g.rest_in_stock
    FROM `goods` AS g

CREATE VIEW vw_goods_categories AS
  SELECT gc.id_categories, gc.categories_name, gc.categories_description
    FROM `goods_categories` AS gc
