CREATE VIEW vw_goods AS
  SELECT g.id_goods, g.id_categories, g.goods, g.rest_in_stock
    FROM `goods` AS g

CREATE VIEW vw_goods_categories AS
  SELECT gc.id_categories, gc.categories_name, gc.categories_description
    FROM `goods_categories` AS gc

SELECT c.categories_name,
  COUNT(g.id_goods) AS goods_cnt
  FROM 
    vw_goods AS g
  INNER JOIN 
    vw_goods_categories AS c 
  ON
    g.id_categories = c.id_categories
  GROUP BY 
    c.categories_name
  ORDER BY
    c.categories_name;  
