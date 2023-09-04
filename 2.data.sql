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

-- SELECT 불러오기 
-- django의 Read 

-- SELECT * FROM Post; 
-- Post 에 있는 값들 다 불러와 

-- SELECT content FROM Post; 
-- Post 에 있는 content 값만 다 불러와 

--Comment 도 불러오기전에 데이터값 집어넣기
--Comment 에는 id, Post_id, content 가 있다. 
-- id 는 자동부여값이므로 상관 X 
-- Post_id 는 Post의 몇 번째 데이터값에 넣어주는 건지, 어디로 연결할건지 부여필요 
-- content 는 이제 그 Post_id 값에 어떤 내용을 붙힐건지 
-- INSERT INTO Comment(post_id, content) 
-- VALUES 
-- (1, 'nice to meet you'), 
-- (5, 'its me'), 
-- (7, 'my dad' ), 
-- (6, 'she is so strong'), 
-- (5, 'i love myself');

-- 이제 Comment 의 모든 데이터값을 불러와보자. 
-- SELECT * FROM Comment;

-- SELECT content FROM Comment;

-- Post에 중복값을 한 번 넣어볼까 
-- INSERT INTO Post(title,content) 
-- VALUES
-- ('hyejin','angry'),
-- ('pporong-i','clever'),
-- ('sonok','strong');

-- 일단 다 불러오면, 중복값들까지 다 나온다. 
-- SELECT * FROM Post; 

-- 중복값 제거해보자 
-- SELECT DISTINCT * FROM Post;
-- 이렇게 하면 그냥 똑같다. 모든 값이 중복된게 아직 없으니까 

-- title 기준으로 중복값 제거해보자. 
-- SELECT DISTINCT title FROM Post; 
-- title 만 나오되, 중복값 제거되서 나온다. 

-- SELECT DISTINCT title , id FROM Post; 
-- 이렇게 하면 title,id 나오는데 중복값은 제거되지 않는다. 
-- title 과 id 를 묶어서 중복값 제거하려면 
-- 이후 나오는 GROUP BY 를 참조하자. 일단 넘어간다. 

--SELECT DISTINCT content FROM Post;
-- Post의 content 값만 중복되지 않게 나열된다. 