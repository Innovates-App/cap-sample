using my.bookshop as my from '../db/data-model';
using {CV_TEST} from '../db/CV';


@impl: 'srv/catalog/catalog.js'
service CatalogService {
    entity Books        as
        select from my.Books {
            *,
            totale - reservation as stock : Integer
        }

    entity Authors      as projection on my.Authors;
    entity BookToAuthor as projection on my.BookToAuthor;

    @readonly
    entity E_TEST       as projection on CV_TEST;

    type response {
        error   : Boolean;
        message : String
    }

    action orderBook(bookID : Integer) returns response 
}
