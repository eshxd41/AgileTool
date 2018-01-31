DELIMITER $$
DROP PROCEDURE IF EXISTS project_reset $$

CREATE PROCEDURE project_reset()
BEGIN
  -- Disable foreign key constraint checks
  SET FOREIGN_KEY_CHECKS = 0;
  -- Empty tables and set their auto-incrément to 1
  TRUNCATE TABLE acceptance_test;
  TRUNCATE TABLE acceptance_test_status;
  TRUNCATE TABLE feature;
  TRUNCATE TABLE feature_tag;
  TRUNCATE TABLE iteration;
  TRUNCATE TABLE member;
  TRUNCATE TABLE project;
  TRUNCATE TABLE project_member;
  TRUNCATE TABLE tag;
  TRUNCATE TABLE project_role;
  TRUNCATE TABLE task;
  TRUNCATE TABLE task_status;
  TRUNCATE TABLE user_role;

  -- Enable again foreign key constraint checks
  SET FOREIGN_KEY_CHECKS = 1;

  BEGIN
     START TRANSACTION;
         INSERT INTO member (id, email, password,first_name,last_name,created_at,confirmed_at,token,token_expiring_at) VALUES
    (1, 'tintin@herge.be','tin','tin','tin','2017-1-1','2017-1-2','1' '2017-1-2', '2019-1-1'),
    (2, 'pintin@herge.be','pin','pin','tin','2017-1-1','2017-1-2','2' '2017-1-2', '2019-1-1'),
    (3, 'sintin@herge.be','sin','sin','tin','2017-1-1','2017-1-3','3' '2017-1-2', '2019-1-1'),
    (4, 'xintin@herge.be','xin','xin','xin','2017-1-1','2017-1-4','4' '2017-1-2', '2019-1-1'),
	(5, 'yintin@herge.be','xin','yin','yin','2017-1-1','2017-1-4','5' '2017-1-2', '2019-1-1');
    
    
    	INSERT INTO task_status (id, name) VALUES
    ( 1,'task1'),
    ( 2,'task2'),
    (3,'task3'),
    ( 4,'task4'), 
	( 5,'task5'),
	  ( 6,'task1'),
    ( 7,'task2'),
    (8,'task3'),
    ( 9,'task4'), 
	( 10,'task5'),
	( 11,'task1'),
    ( 12,'task2');
  
    
    	INSERT INTO project_role (id, name) VALUES
    ( 1,'developer'),
    ( 2,'manager'),
    (3,'developer'),
    ( 4,'tester'), 
	( 5,'couch'); 
    

    
      INSERT INTO tag (id, name) VALUES
    (1, 'added tag'),
    (2, 'yes' ),
    (3,'company'),
    (4, 'compleated');
    
    
    	INSERT INTO user_role (id, name, description) VALUES
    ( 1,'developper','task'),
    ( 2,'manager','task'),
    (3,'tester','task'),
    ( 4,'developer','task'), 
	( 5,'tester','task');
    
    
    INSERT INTO project (id, name, description,administrator_id,created_at) VALUES
    ( 1,'DJI','Netherlands',2 , '2004-12-23');
    
    
    
          INSERT INTO project_member (member_id, project_id, role_id,added_at,token) VALUES
    ( 1,1,2 , '2005-12-23','4'),
    ( 2,1,2 , '2005-12-23','3'),
    (3,1,2 , '2005-12-23','2'),
    ( 4,1,2 , '2005-12-23','1');
    
    
 
        INSERT INTO iteration (id, deadline, project_id) VALUES
    ( 1, '2005-12-23',1),
    ( 2, '2010-04-21',1);
    
    
    
     INSERT INTO feature (id, title, functionality,benefit,priority,iteration_id,
	project_id,user_role_id) VALUES
    (1, 'feature1', 'feature without iteration but tasks', 'good',2,1,1,1),
    (2, 'feature2', 'feature did not complete in the 1st iteration', 'bad',4,2,1,3),
    (3, 'feature3', 'feature in the 1st iteration and finished', 'good',1,1,1,4),
    (4, 'feature4', 'feature in the 2nd iteration with tasks', 'bad',3,2,1,3),
	(5, 'feature5', 'feature in the 2nd iteration without task', 'bad',3,2,1,1);
    
    
    
     INSERT INTO task (id, title, description, estimated_duration, actual_duration, feature_id, status_id, owner_id) VALUES 
    (1,'web','do web', 20, 25, 1, 1, 1),
    (2,'php','do php', 10, 15, 2, 2, 2),
    (3,'connection','do dbms', 23, 25, 3, 3, 3),
    (4,'web','do web', 10, 25, 4, 4, 4),
	(5,'web','do web', 20, 25, 5, 1, 1),
    (6,'php','do php', 10, 15, 1, 2, 2),
    (7,'connection','do dbms', 23, 25, 2, 3, 3),
    (8,'web','do web', 10, 25, 4, 4, 4),
	(9,'web','do web', 20, 25, 1, 1, 1),
    (10,'php','do php', 10, 15, 5, 2, 2),
    (11,'connection','do dbms', 23, 25, 3, 3, 3),
    (12,'web','do web', 10, 25, 5, 4, 4);
    
    
        INSERT INTO acceptance_test (id, description, test_result,feature_id,bug_id) VALUES
    (1, 'Dupont', 'good',1,1),
    (2, 'Tintin', 'bad',2,2),
    (3, 'Haddock','bad',3,3),
    (4, 'Castafiore', 'good',4,4),
	(5, 'Dupont', 'good',5,5),
    (6, 'Tintin', 'bad',2,6),
    (7, 'Haddock','bad',3,7),
    (8, 'Castafiore', 'good',4,7),
	(9, 'Dupont', 'good',1,8),
    (10, 'Tintin', 'bad',2,9),
    (11, 'Haddock','bad',3,10),
    (12, 'Castafiore', 'good',5,10);
    
    
      INSERT INTO feature_tag (feature_id, tag_id) VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4);

    
    INSERT INTO acceptance_test_status (iteration_id, acceptance_test_id,is_satisfied) VALUES
   
   (1,1, false),
    (1,2, false),
    (1,3, false),
    (1,4, false),
	(1,5, false),
    (1,6, false),
    (1,7, false),
    (1,8, false),
	(1,9, false),
    (1,10, false),
    (1,11, false),
    (1,12, falseproject);
    
    
    COMMIT;
  END;
END $$

CALL project_reset();