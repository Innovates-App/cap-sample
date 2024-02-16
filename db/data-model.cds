namespace my.bookshop;

entity Books {
  key ID          : Integer;
      title       : String;
      // stock       : Integer;
      totale      : Integer;
      reservation : Integer;
      available   : Integer;
      authors     : Composition of many BookToAuthor
                      on authors.book = $self
}

entity Authors {
  key ID      : Integer;
      nome    : String(20);
      cognome : String(50);
      books   : Composition of many BookToAuthor
                  on books.author = $self
}

entity BookToAuthor {
  key book   : Association to Books;
  key author : Association to Authors
}
