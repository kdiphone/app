namespace com.sap;

using {
    managed,
    cuid,
    sap
} from '@sap/cds/common';

entity LocalProducts {
    key ID: Integer;
    Name: String;
    Description: String;
    ReleaseDate: DateTime;
    DiscontinuedDate: DateTime;
    Rating: Integer;
    Price: Double;
}