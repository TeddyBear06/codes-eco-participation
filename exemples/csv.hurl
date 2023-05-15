GET https://espace-services.eco-mobilier.fr/api/baremes/perimetre/generateur/campagnes?filiere=ameublement

HTTP 200
[Captures]
# On capture l'ID de la dernière campagne
id_campagne: jsonpath "$.[0].id"

GET https://espace-services.eco-mobilier.fr/api/baremes/perimetre/generateur/sous-codes-categories?idCampagne={{id_campagne}}

HTTP 200
[Captures]
# On capture l'ID du dernier code campagne
code_categorie: jsonpath "$.[0].code"

GET https://espace-services.eco-mobilier.fr/api/baremes/perimetre/generateur/telecharger-codes-eco-mobilier-multiples?codeCategorie={{code_categorie}}&idCampagne={{id_campagne}}