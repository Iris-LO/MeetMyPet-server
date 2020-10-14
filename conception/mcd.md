USER: _first_name, city, address, mail, password
HAVE A, 01 USER, 11 ANIMAL
CREATE, 0N GROUP, 11 ANIMAL
:

AUTHORIZE, 01 USER, 11 AUTHORIZATION
ANIMAL: _name, specie, age, sex, description, breed, size, image, chat_id
LIST, 0N ANIMAL, 1N GROUP
GROUP: _name, latitude, longitude, city, address, country, description, created_by, chatroom_id

AUTHORIZATION: _cgu, cookies, localisation
SEND, 0N MESSAGE, 11 ANIMAL
MESSAGE:_content, send_at
FEED, 11 GROUP, 0N MESSAGE
