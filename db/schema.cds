namespace sample_project_datamodel;

using { Success_factor } from '../srv/external/Success_factor.cds';

entity Customers
{
    key ID : UUID;
    name : String;
    email : String;
    customerNumber : Integer;
    totalPurchaseValue : Integer;
    totalRewardPoints : Integer;
    totalRedeemedRewardPoints : Integer;
    user : Association to one Success_factor.User;
}
