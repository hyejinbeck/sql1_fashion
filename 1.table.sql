-- Create Table Post(
--     id INTEGER,
--     title TEXT,
--     content TEXT 
-- );
-- 새로고침 후 mydb.sqlite3 에 Run Query 연결 

-- column을 추가해보자 
-- ALTER TABLE Post 
-- ADD COLUMN text TEXT; 

-- 일단 다 삭제해보자 
-- Drop TABLE Post; 

-- 다시, Post 라는 테이블을 만드는데, 
-- 결측치 이상값을 허용하지 않는다는 조건 추가 
-- 특히나 id 는 중복되지 않게 고유의 PrimaryKey 로 진행하겠다
-- 그리고 Autoincrement로 새로운 값을 추가할때마다 자동으로 증가시키겠다. 
-- CREATE TABLE Post(
--     id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 
--     title TEXT NOT NULL, 
--     content TEXT NOT NULL 
-- ); 

-- 이제 SQLITE EXPLORER 를 보면, id 에 열쇠모양이 생겼다. 
-- PrimaryKey 라는 뜻이다. 

-- 스키마(컬럼)정의 
-- Post테이블 생성완료 
-- Comment 테이블 생성해야함 
-- 그리고 두 테이블은 1:N 관계이다. 
CREATE TABLE Comment(
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, 
    -- 이제 이미 생성한 Post테이블의 id 값과 연결시켜주자
    post_id INTEGER NOT NULL, 
    content TEXT NOT NULL, 

    FOREIGN KEY(post_id) REFERENCES Post(id) 
    -- Refferences ~를 참고하여 
);