# virusghunting
> kfq 인공지능 과정 미니프로젝트 1 
  
## 사용 프로그래밍 언어
> JAVA 1.8  
> SPRING 5.2.6
## 사용 데이터베이스 언어
>  Oracle Database 11g Express Edition Release 11.2.0.2.0
## 데이터베이스 구축
__마지막줄에 전체쿼리문__  
1. 오라클 계정 생성 및 권한 설정(cmd)
    ```
<<<<<<< HEAD
    sqlplus /as sysdba  
    Enter user-name : system
    Enter password : oracle
=======
    sqlplus 시스템 계정으로 로그인  
>>>>>>> upstream/master
    create user post identified by post;   
    grant connect, resource, dba to post;   
    ```
  
2. USERS TABLE 생성   
    ```
    CREATE TABLE USERS   
    (
        USER_ID NUMBER NOT NULL
        , USER_NAME VARCHAR2(100) NOT NULL   
        , USER_PASS VARCHAR2(100) NOT NULL   
        , USER_ADMIN NUMBER DEFAULT 0   
        , CONSTRAINT USER_PK PRIMARY KEY   
        (
            USER_ID
        )
    ENABLE);  
    ```
3. USER SEQUENCE 생성
    ```
    CREATE SEQUENCE USERS_SEQ
    START WITH 1
    INCREMENT BY 1;
    ```
4. POSTS TABLE 생성
    ```
    CREATE TABLE POSTS
    (
        POST_ID NUMBER NOT NULL
        , USER_ID NUMBER NOT NULL
        , POST_TITLE VARCHAR2(100) NOT NULL
        , POST_CONTENT VARCHAR2(4000) NOT NULL
        , POST_DATETIME DATE DEFAULT SYSDATE
        , POST_DISEASE VARCHAR2(20) NOT NULL
        , POST_SUBJECT VARCHAR2(20) NOT NULL
        , POST_LIKES NUMBER DEFAULT 0
        , POST_DISLIKES NUMBER DEFAULT 0
        , POST_VIEWS NUMBER DEFAULT 0
        , POST_RESPONDED VARCHAR2(1) DEFAULT 0
        , POST_USERNAME VARCHAR2(100) NOT NULL
        ,
        CONSTRAINT USERS_POSTS_FK FOREIGN KEY(USER_ID)
        REFERENCES USERS(USER_ID) ON DELETE CASCADE
        , CONSTRAINT POST_PK PRIMARY KEY
        (
            POST_ID
        )
    ENABLE);
    ```
5. POSTS SEQUENCE 생성
    ```
    CREATE SEQUENCE POSTS_SEQ
    START WITH 1
    INCREMENT BY 1;
    ```
6. LIKES / DISLIKE TABLE 생성
    ```
    CREATE TABLE LIKES(
        USER_ID  NUMBER,
        POST_ID  NUMBER,
        CONSTRAINT USERS_LIKES_FK FOREIGN KEY(USER_ID)
            REFERENCES USERS(USER_ID) ON DELETE CASCADE,
        CONSTRAINT POSTS_LIKES_FK FOREIGN KEY(POST_ID)
            REFERENCES POSTS(POST_ID) ON DELETE CASCADE 
    );
    ```
    ```
    CREATE TABLE DISLIKES(
        USER_ID  NUMBER,
        POST_ID  NUMBER,
        CONSTRAINT USERS_DISLIKES_FK FOREIGN KEY(USER_ID)
            REFERENCES USERS(USER_ID) ON DELETE CASCADE,
        CONSTRAINT POSTS_DISLIKES_FK FOREIGN KEY(POST_ID)
            REFERENCES POSTS(POST_ID) ON DELETE CASCADE 
    );
    ```
7. CONSULTS TABLE 생성
    ```
   CREATE TABLE CONSULTS
    (
        CONSULT_ID NUMBER NOT NULL
        , CONSULT_TITLE VARCHAR2(100) NOT NULL
        , CONSULT_CONTENT VARCHAR2(4000) NOT NULL
        , CONSULT_EMAIL VARCHAR2(100) NOT NULL
        , USER_ID NUMBER NOT NULL
        , CONSULT_USERNAME VARCHAR2(100) NOT NULL
        , CONSTRAINT USERS_CONSULT_FK FOREIGN KEY(USER_ID)
        REFERENCES USERS(USER_ID) ON DELETE CASCADE
        , CONSTRAINT CONSULT_PK PRIMARY KEY
        (
            CONSULT_ID
        )
    ENABLE);
    ```
8. CONSULTS SEQUENCE 생성
    ```
    CREATE SEQUENCE CONSULTS_SEQ
    START WITH 1
    INCREMENT BY 1;
    ```
9.  COMMENTS TABLE 생성
    ```
    CREATE TABLE COMMENTS
    (
        COMMENT_ID NUMBER NOT NULL
        , POST_ID NUMBER NOT NULL
        , USER_ID NUMBER NOT NULL
        , COMMENT_CONTENT VARCHAR2(4000) NOT NULL
        , COMMENT_DATETIME DATE DEFAULT SYSDATE
        , COMMENT_USERNAME VARCHAR2(100) NOT NULL
        ,CONSTRAINT USERS_COMMENT_FK FOREIGN KEY(USER_ID)
        REFERENCES USERS(USER_ID) ON DELETE CASCADE
        ,CONSTRAINT POSTS_COMMENT_FK FOREIGN KEY(POST_ID)
        REFERENCES POSTS(POST_ID) ON DELETE CASCADE
        , CONSTRAINT COMMENT_PK PRIMARY KEY
        (
            COMMENT_ID
        )
    ENABLE);
    ```
10. COMMENTS SEQUENCE 생성
    ```
    CREATE SEQUENCE COMMENTS_SEQ
    START WITH 1
    INCREMENT BY 1;
    ```
11. 전체 쿼리문
    ```
    CREATE TABLE USERS   
    (
        USER_ID NUMBER NOT NULL
        , USER_NAME VARCHAR2(100) NOT NULL   
        , USER_PASS VARCHAR2(100) NOT NULL   
        , USER_ADMIN NUMBER DEFAULT 0   
        , CONSTRAINT USER_PK PRIMARY KEY   
        (
            USER_ID
        )
    ENABLE); 

    CREATE SEQUENCE USERS_SEQ
    START WITH 1
    INCREMENT BY 1;

    CREATE TABLE POSTS
    (
        POST_ID NUMBER NOT NULL
        , USER_ID NUMBER NOT NULL
        , POST_TITLE VARCHAR2(100) NOT NULL
        , POST_CONTENT VARCHAR2(4000) NOT NULL
        , POST_DATETIME DATE DEFAULT SYSDATE
        , POST_DISEASE VARCHAR2(20) NOT NULL
        , POST_SUBJECT VARCHAR2(20) NOT NULL
        , POST_LIKES NUMBER DEFAULT 0
        , POST_DISLIKES NUMBER DEFAULT 0
        , POST_VIEWS NUMBER DEFAULT 0
        , POST_RESPONDED VARCHAR2(1) DEFAULT 0
        , POST_USERNAME VARCHAR2(100) NOT NULL
        ,
        CONSTRAINT USERS_POSTS_FK FOREIGN KEY(USER_ID)
        REFERENCES USERS(USER_ID) ON DELETE CASCADE
        , CONSTRAINT POST_PK PRIMARY KEY
        (
            POST_ID
        )
    ENABLE);

    CREATE SEQUENCE POSTS_SEQ
    START WITH 1
    INCREMENT BY 1;

    CREATE TABLE LIKES(
        USER_ID  NUMBER,
        POST_ID  NUMBER,
        CONSTRAINT USERS_LIKES_FK FOREIGN KEY(USER_ID)
            REFERENCES USERS(USER_ID) ON DELETE CASCADE,
        CONSTRAINT POSTS_LIKES_FK FOREIGN KEY(POST_ID)
            REFERENCES POSTS(POST_ID) ON DELETE CASCADE 
    );

    CREATE TABLE DISLIKES(
        USER_ID  NUMBER,
        POST_ID  NUMBER,
        CONSTRAINT USERS_DISLIKES_FK FOREIGN KEY(USER_ID)
            REFERENCES USERS(USER_ID) ON DELETE CASCADE,
        CONSTRAINT POSTS_DISLIKES_FK FOREIGN KEY(POST_ID)
            REFERENCES POSTS(POST_ID) ON DELETE CASCADE 
    );

    CREATE TABLE CONSULTS
    (
        CONSULT_ID NUMBER NOT NULL
        , CONSULT_TITLE VARCHAR2(100) NOT NULL
        , CONSULT_CONTENT VARCHAR2(4000) NOT NULL
        , CONSULT_EMAIL VARCHAR2(100) NOT NULL
        , USER_ID NUMBER NOT NULL
        , CONSULT_USERNAME VARCHAR2(100) NOT NULL
        , CONSTRAINT USERS_CONSULT_FK FOREIGN KEY(USER_ID)
        REFERENCES USERS(USER_ID) ON DELETE CASCADE
        , CONSTRAINT CONSULT_PK PRIMARY KEY
        (
            CONSULT_ID
        )
    ENABLE);

    CREATE SEQUENCE CONSULTS_SEQ
    START WITH 1
    INCREMENT BY 1;

    CREATE TABLE COMMENTS
    (
        COMMENT_ID NUMBER NOT NULL
        , POST_ID NUMBER NOT NULL
        , USER_ID NUMBER NOT NULL
        , COMMENT_CONTENT VARCHAR2(4000) NOT NULL
        , COMMENT_DATETIME DATE DEFAULT SYSDATE
        , COMMENT_USERNAME VARCHAR2(100) NOT NULL
        ,CONSTRAINT USERS_COMMENT_FK FOREIGN KEY(USER_ID)
        REFERENCES USERS(USER_ID) ON DELETE CASCADE
        ,CONSTRAINT POSTS_COMMENT_FK FOREIGN KEY(POST_ID)
        REFERENCES POSTS(POST_ID) ON DELETE CASCADE
        , CONSTRAINT COMMENT_PK PRIMARY KEY
        (
            COMMENT_ID
        )
    ENABLE); 

    CREATE SEQUENCE COMMENTS_SEQ
    START WITH 1
    INCREMENT BY 1;
    ```
