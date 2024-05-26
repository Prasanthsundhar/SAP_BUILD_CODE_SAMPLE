using { Success_factor } from './external/Success_factor.cds';

using { sample_project_datamodel as my } from '../db/schema.cds';

@path : '/service/sample_project_datamodel'
service sample_project_datamodelSrv
{
    @odata.draft.enabled
    entity Customers as
        projection on my.Customers;

    entity User as projection on Success_factor.User
    {
        userId,
        email,
        firstName,
        gender,
        jobTitle
    };
}

annotate sample_project_datamodelSrv with @requires :
[
    'authenticated-user'
];
