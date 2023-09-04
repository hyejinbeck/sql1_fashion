SELECT * FROM fashions_user;
-- 총 50명의 가상 User 정보가 나온다 (name,country,,) 

SELECT DISTINCT name FROM fashions_category; 
-- 일단 skirts 하나만 나온다 (왜지? 많은 카테고리를 지정했는데...) 

SELECT * FROM fashions_design;
-- 4가지 값만 나온다 (color, customer_age, mood) 무작위 

SELECT * FROM fashions_item; 
-- 데이터값 없음 

SELECT * FROM fashions_item_categories; 
-- 데이터값 없음 

SELECT * FROM fashions_payment; 
-- 데이터값 없음 