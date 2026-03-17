maybe translate categorie for attributes ?
Mais la **meilleure pratique** reste de :
- **Traduire la catégorie dans une table dédiée** (ex : `attribute_category_translations`),  
- **Et non dans chaque ligne de `attribute_translations`** (sinon tu dupliques la traduction pour chaque attribut de la même catégorie).
