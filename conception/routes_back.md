# Routes

|Page en cours|URL|méthodes|Descriptif / Commentaires|
|----|----|----|----|
|Page d'accueil| /home | GET| Afficher la page d'accueil|
|Page des groupes| /group | GET| Afficher la page des groupes|
|Page d'un groupe| /group/:id | GET| Afficher la page d'un groupe|
|Page du chatroom d'un groupe| /group_chatroom/:id | GET| Afficher la page du chatroom d'un groupe|
|Page de profil| /profil/:id | GET| Afficher la page profil animal|
|Page de compte| /account/:id | GET| Afficher la page du compte|
|Page des conditions générales d'utilisation| /tou | GET| Afficher la page des conditions générales d'utilisation|
|Page de connection| /login | POST| Afficher la page de connection|
|Page de création de compte| /sign_up | POST| Afficher la page de création de compte|
|Page de création d'un groupe| /group_creation | POST| Afficher la page de création d'un groupe|
|Page du chatroom d'un groupe| /group_chatroom/:id | POST| Afficher la page du chatroom d'un groupe (envoi du message)|
|Page de profil de l'utilisateur connecté| /profil/:id | PUT| Modifier des infomations liées à l'utilisateur|
|Page de profil de l'animal| /animal/:id | PUT| Modification des informations liées à l'animal|
|Page d'un groupe| /group/:id | PUT| Modifier des informations liées aux groupes|
|Page du compte d'un utilisateur| /delete_account | DELETE | Suppression d'un compte |


# Versions ultérieures

|Page en cours|URL|méthodes|Descriptif / Commentaires|
|----|----|----|----|
|Page Administration| /add_user | GET | Ajout d'un utilisateur |
|Page Administration| /modify_user | PUT | Modification d'un utilisateur |
|Page Administration| /delete_user | DELETE | Suppression d'un utilisateur |