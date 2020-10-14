-- Deploy meetMyPet:init to pg

BEGIN;

CREATE TABLE "user" (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    first_name TEXT NOT NULL UNIQUE,
    city TEXT NOT NULL,
    address TEXT NOT NULL,
    mail TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ
);

CREATE TABLE "group" (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name TEXT NOT NULL,
    created_by INT NOT NULL UNIQUE REFERENCES "animal"(id),
    latitude FLOAT8 NOT NULL,
    longitude FLOAT8 NOT NULL,
    address TEXT NOT NULL,
    city TEXT NOT NULL,
    country TEXT NOT NULL,
    description TEXT NOT NULL,
    chatroom_id INT NOT NULL UNIQUE REFERENCES ""(id),
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ
);

CREATE TABLE "message"(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    content TEXT NOT NULL,
    send_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    send_by INT NOT NULL REFERENCES animal(id),
    send_to INT NOT NULL REFERENCES chatroom(id),
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ
);

CREATE TABLE "animal" (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    specie TEXT NOT NULL,
    name TEXT NOT NULL,
    age INT NOT NULL,
    sex TEXT NOT NULL,
    description TEXT NOT NULL,
    breed TEXT NOT NULL,
    size TEXT NOT NULL,
    image TEXT NOT NULL,
    chat_id UUID NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ,
    user_id INT NOT NULL REFERENCES user(id)
);

CREATE TABLE "authorization" (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    cgu BOOLEAN NOT NULL DEFAULT FALSE,
    cookies BOOLEAN NOT NULL DEFAULT FALSE,
    localisation BOOLEAN NOT NULL DEFAULT FALSE,
    user_id INT NOT NULL REFERENCES "user"(id),
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ
);

CREATE TABLE "list"(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ,
    group_id INT NOT NULL REFERENCES "group"(id),
    animal_id INT NOT NULL REFERENCES animal(id)
);

ALTER TABLE "user" 
    ADD animal_id INT NOT NULL REFERENCES animal(id);

COMMIT;
