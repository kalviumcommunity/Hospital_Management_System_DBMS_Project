-- Indexing On Patient table :

CREATE INDEX address_index ON Patient (address);
CREATE INDEX gender_index ON Patient (gender);
drop INDEX address_index ON Patient ;
drop INDEX gender_index ON Patient;


SELECT *
FROM Patient
WHERE  address = 'Ap' AND gender='male';

SELECT *
FROM Patient
WHERE AND gender='male';

SELECT *
FROM Patient
WHERE  email = 'john.doe@example.com' AND gender='male';

SELECT *
FROM Patient
WHERE  email = 'john.doe@example.com' ;

