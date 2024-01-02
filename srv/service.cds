// KD
using { Northwind as external} from './external/Northwind.csn';

using {com.sap as local} from '../db/schema';

service CatalogService {
    entity Projects as projection on external.Products{
        key ID as id,      
        Name as ProductName,
        Description as Description, 
        ReleaseDate as ReleaseDate, 
        DiscontinuedDate as DiscontinuedDate, 
        Rating as Rating, 
        Price as Price
    }

    entity LocalProducts as projection on local.LocalProducts;
    
    function testing() returns String;
    action addUser ();
}