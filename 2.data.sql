-- INSERT INTO Post( title, content) 
-- -- Post 의 title, content 에 아래의 값을 각각 넣을거야) 
-- VALUES ('Hello', 'very good') ; 
-- 또한 새로운 파일을 만들었기에 오른쪽 클릭 Use DataBase 
-- mydb.sqlite3 와 연결시켜줘야함 

-- 이제 해당 데이터값이 잘 넣었는지 확인해보자. 
-- Post 로 보여지면 데이터가 잘 들어갔다. 
-- id 는 1  ( Pimary Key 덕분에 자동 생성된다 ) 
-- title 은 Hello
-- content 는 very good 

-- 우리는 1.table.sql 파일에서 모델링할때 
-- 이미 결측치를 허용하지 않는 NOT NULL 를 기재했기에 
-- 결측치의 데이터를 넣으면 error 가 난다. 
-- INSERT INTO Post(title,content) 
-- VALUES('Hello'); 
-- 하게 되면 두 개의 컬럼에 1개 데이터만 있기에 Error 

-- 다양한 값도 넣을 수 있다. 
-- title,content 에는 text값으로만 넣을 수 있으니 'string'으로 변환해서 넣어보자 
-- INSERT INTO Post(title, content) 
-- VALUES
-- ('1','11'),
-- ('2','22'),
-- ('3','33');

-- INSERT INTO post(title,content) 
-- VALUES 
-- ('hyejin','clever'),
-- ('sonok','strong;'),
-- ('yang-gun','gentle');
-- 이상 여기까지 다 데이터값이 들어간다! 