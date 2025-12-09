/***********************************************************************************************************************

DDDDDDDDDDDDD                                   tttt
D::::::::::::DDD                             ttt:::t
D:::::::::::::::DD                           t:::::t
DDD:::::DDDDD:::::D                          t:::::t
  D:::::D    D:::::D   aaaaaaaaaaaaa   ttttttt:::::ttttttt      aaaaaaaaaaaaa
  D:::::D     D:::::D  a::::::::::::a  t:::::::::::::::::t      a::::::::::::a
  D:::::D     D:::::D  aaaaaaaaa:::::a t:::::::::::::::::t      aaaaaaaaa:::::a
  D:::::D     D:::::D           a::::a tttttt:::::::tttttt               a::::a
  D:::::D     D:::::D    aaaaaaa:::::a       t:::::t              aaaaaaa:::::a
  D:::::D     D:::::D  aa::::::::::::a       t:::::t            aa::::::::::::a
  D:::::D     D:::::D a::::aaaa::::::a       t:::::t           a::::aaaa::::::a
  D:::::D    D:::::D a::::a    a:::::a       t:::::t    tttttta::::a    a:::::a
DDD:::::DDDDD:::::D  a::::a    a:::::a       t::::::tttt:::::ta::::a    a:::::a
D:::::::::::::::DD   a:::::aaaa::::::a       tt::::::::::::::ta:::::aaaa::::::a
D::::::::::::DDD      a::::::::::aa:::a        tt:::::::::::tt a::::::::::aa:::a
DDDDDDDDDDDDD          aaaaaaaaaa  aaaa          ttttttttttt    aaaaaaaaaa  aaaa

Source: https://patorjk.com/software/taag/#p=display&h=0&v=0&f=Doh&t=Schema
***********************************************************************************************************************/

-- Insert into PERSON table
INSERT INTO PERSON (id, full_name) VALUES
('alice@example.com', 'Alice Johnson'),
('bob@example.com', 'Bob Smith'),
('charlie@example.com', 'Charlie Davis'),
('david@example.com', 'David White'),
('emma@example.com', 'Emma Brown'),
('frank@example.com', 'Frank Wilson'),
('grace@example.com', 'Grace Martinez'),
('harry@example.com', 'Harry Clark'),
('irene@example.com', 'Irene Lewis'),
('jack@example.com', 'Jack Walker');

-- Insert into ITEM table
INSERT INTO ITEM (category, subcategory, name, description) VALUES
('BUSINESS', 'Management', 'Leadership Skills', 'Assess leadership capabilities'),
('BUSINESS', 'Finance', 'Financial Analysis', 'Assess financial literacy and analysis skills'),
('TECHNICAL', 'Programming', 'Algorithm Design', 'Assess problem-solving and algorithm skills'),
('TECHNICAL', 'Database', 'SQL Proficiency', 'Assess SQL query writing skills'),
('PROCESS', 'Agile', 'Scrum Methodology', 'Assess understanding of Agile and Scrum'),
('PROCESS', 'Project Management', 'Risk Assessment', 'Evaluate project risk management skills'),
('SOFT_SKILLS', 'Communication', 'Public Speaking', 'Assess ability to present effectively'),
('SOFT_SKILLS', 'Teamwork', 'Collaboration', 'Evaluate teamwork and cooperation skills'),
('TECHNICAL', 'Frontend', 'React.js Development', 'Assess React.js development skills'),
('TECHNICAL', 'Backend', 'API Design', 'Evaluate RESTful API design skills');

-- Insert into ASSESSMENT table
INSERT INTO ASSESSMENT (type, assessee_id, assessor_id, item_id, score, assessed_at) VALUES
('INTERVIEW', 'alice@example.com', 'bob@example.com', 1, 4, '2024-01-01 10:00:00'),
('PROBATION', 'charlie@example.com', 'david@example.com', 2, 3, '2024-01-02 11:00:00'),
('QUARTERLY', 'emma@example.com', 'frank@example.com', 3, 5, '2024-01-03 12:00:00'),
('INTERVIEW', 'grace@example.com', 'harry@example.com', 4, 2, '2024-01-04 13:00:00'),
('PROBATION', 'irene@example.com', 'jack@example.com', 5, 3, '2024-01-05 14:00:00'),
('QUARTERLY', 'bob@example.com', 'alice@example.com', 6, 4, '2024-01-06 15:00:00'),
('INTERVIEW', 'david@example.com', 'charlie@example.com', 7, 5, '2024-01-07 16:00:00'),
('PROBATION', 'frank@example.com', 'emma@example.com', 8, 2, '2024-01-08 17:00:00'),
('QUARTERLY', 'harry@example.com', 'grace@example.com', 9, 3, '2024-01-09 18:00:00'),
('INTERVIEW', 'jack@example.com', 'irene@example.com', 10, 4, '2024-01-10 19:00:00');
