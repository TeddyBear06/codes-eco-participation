# Ameublement
GET https://espace-services.eco-mobilier.fr/api/baremes/perimetre/generateur/campagnes?filiere=ameublement

HTTP 200
[Captures]
# On capture l'ID de la dernière campagne
id_campagne: jsonpath "$.[0].id"

GET https://espace-services.eco-mobilier.fr/api/baremes/perimetre/generateur/sous-codes-categories?idCampagne={{id_campagne}}

HTTP 200
[Asserts]
jsonpath "$.*.id" != null
jsonpath "$.*.libelle" != null
jsonpath "$.*.code" != null
jsonpath "$.*.ordre" != null
jsonpath "$.*.dateCreation" != null
jsonpath "$.*.dateModification" != null
jsonpath "$.*.produitCategorieId" != null

# Jouet
GET https://espace-services.eco-mobilier.fr/api/baremes/perimetre/generateur/campagnes?filiere=jouet

HTTP 200
[Captures]
# On capture l'ID de la dernière campagne
id_campagne: jsonpath "$.[0].id"

GET https://espace-services.eco-mobilier.fr/api/baremes/perimetre/generateur/sous-codes-categories?idCampagne={{id_campagne}}

HTTP 200
[Asserts]
jsonpath "$.*.id" != null
jsonpath "$.*.libelle" != null
jsonpath "$.*.code" != null
jsonpath "$.*.ordre" != null
jsonpath "$.*.dateCreation" != null
jsonpath "$.*.dateModification" != null
jsonpath "$.*.produitCategorieId" != null

# Brico & jardin
GET https://espace-services.eco-mobilier.fr/api/baremes/perimetre/generateur/campagnes?filiere=brico_jardin

HTTP 200
[Captures]
# On capture l'ID de la dernière campagne
id_campagne: jsonpath "$.[0].id"

GET https://espace-services.eco-mobilier.fr/api/baremes/perimetre/generateur/sous-codes-categories?idCampagne={{id_campagne}}

HTTP 200
[Asserts]
jsonpath "$.*.id" != null
jsonpath "$.*.libelle" != null
jsonpath "$.*.code" != null
jsonpath "$.*.ordre" != null
jsonpath "$.*.dateCreation" != null
jsonpath "$.*.dateModification" != null
jsonpath "$.*.produitCategorieId" != null