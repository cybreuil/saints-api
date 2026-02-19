Full structure in rust ?
Rest api design
- GET /saints - list all saints
- GET /saints/{id} - get details of a specific saint
- POST /saints - create a new saint
- PUT /saints/{id} - update an existing saint
- DELETE /saints/{id} - delete a saint
- GET /feasts - list all feasts
- etc

Maybe no modification alowed ? i should maybe prerssxent this as a definitive list of saints and feasts, with no option to add or remove entries. This would make it more of a reference API rather than a CRUD API.
