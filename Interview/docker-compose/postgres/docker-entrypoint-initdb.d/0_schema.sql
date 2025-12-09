/***********************************************************************************************************************

   SSSSSSSSSSSSSSS                     hhhhhhh
 SS:::::::::::::::S                    h:::::h
S:::::SSSSSS::::::S                    h:::::h
S:::::S     SSSSSSS                    h:::::h
S:::::S                cccccccccccccccc h::::h hhhhh           eeeeeeeeeeee       mmmmmmm    mmmmmmm     aaaaaaaaaaaaa
S:::::S              cc:::::::::::::::c h::::hh:::::hhh      ee::::::::::::ee   mm:::::::m  m:::::::mm   a::::::::::::a
 S::::SSSS          c:::::::::::::::::c h::::::::::::::hh   e::::::eeeee:::::eem::::::::::mm::::::::::m  aaaaaaaaa:::::a
  SS::::::SSSSS    c:::::::cccccc:::::c h:::::::hhh::::::h e::::::e     e:::::em::::::::::::::::::::::m           a::::a
    SSS::::::::SS  c::::::c     ccccccc h::::::h   h::::::he:::::::eeeee::::::em:::::mmm::::::mmm:::::m    aaaaaaa:::::a
       SSSSSS::::S c:::::c              h:::::h     h:::::he:::::::::::::::::e m::::m   m::::m   m::::m  aa::::::::::::a
            S:::::Sc:::::c              h:::::h     h:::::he::::::eeeeeeeeeee  m::::m   m::::m   m::::m a::::aaaa::::::a
            S:::::Sc::::::c     ccccccc h:::::h     h:::::he:::::::e           m::::m   m::::m   m::::ma::::a    a:::::a
SSSSSSS     S:::::Sc:::::::cccccc:::::c h:::::h     h:::::he::::::::e          m::::m   m::::m   m::::ma::::a    a:::::a
S::::::SSSSSS:::::S c:::::::::::::::::c h:::::h     h:::::h e::::::::eeeeeeee  m::::m   m::::m   m::::ma:::::aaaa::::::a
S:::::::::::::::SS   cc:::::::::::::::c h:::::h     h:::::h  ee:::::::::::::e  m::::m   m::::m   m::::m a::::::::::aa:::a
 SSSSSSSSSSSSSSS       cccccccccccccccc hhhhhhh     hhhhhhh    eeeeeeeeeeeeee  mmmmmm   mmmmmm   mmmmmm  aaaaaaaaaa  aaaa

Source: https://patorjk.com/software/taag/#p=display&h=0&v=0&f=Doh&t=Data
***********************************************************************************************************************/

-- Category of a interview question
CREATE TABLE CATEGORY
(
    id    SERIAL PRIMARY KEY,   
    name  VARCHAR(255) NOT NULL       
);
COMMENT ON TABLE CATEGORY IS 'Table storing information about interview question categories.';

-- Interview question table
CREATE TYPE LEVEL AS ENUM ('JUNIOR', 'MIDDLE', 'SENIOR');
CREATE TABLE QUESTION
(
    id            SERIAL PRIMARY KEY,       
    category_id   INTEGER    NOT NULL,    
    question      TEXT       NOT NULL,    
    level         LEVEL      NOT NULL,
    CONSTRAINT fk_category_id FOREIGN KEY(category_id) REFERENCES CATEGORY(id)
);
COMMENT ON TABLE QUESTION IS 'Table storing information about interview questions.';
COMMENT ON COLUMN QUESTION.id IS 'Unique identifier for the question.';
COMMENT ON COLUMN QUESTION.category_id IS 'Category ID of the question.';
COMMENT ON COLUMN QUESTION.question IS 'Text of the interview question.';
COMMENT ON COLUMN QUESTION.level IS 'Level of the interview question.';
