-- Deploy meetMyPet:check to pg

BEGIN;

ALTER TABLE "animal" 
    ADD CONSTRAINT "age" CHECK (age > 0 AND age < 25);

COMMIT;
