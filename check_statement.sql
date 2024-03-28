SELECT * FROM Country;

ALTER TABLE Country
ADD CONSTRAINT chk_lifeExpectancy CHECK (LifeExpectancy >= 35);

ALTER TABLE Country
DROP CHECK chk_lifeExpectancy;