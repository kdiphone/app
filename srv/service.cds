// KD
using { Northwind as external} from './external/Northwind.csn';

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
}