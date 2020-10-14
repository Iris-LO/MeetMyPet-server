-- Revert meetMyPet:init from pg

BEGIN;

DROP TABLE "user";

DROP TABLE group;

DROP TABLE "message";

DROP TABLE animal;

DROP TABLE authorization;

DROP TABLE list;

COMMIT;