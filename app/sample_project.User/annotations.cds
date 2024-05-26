using sample_project_datamodelSrv as service from '../../srv/service';
annotate service.User with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'userId',
                Value : userId,
            },
            {
                $Type : 'UI.DataField',
                Label : 'email',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Label : 'firstName',
                Value : firstName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'gender',
                Value : gender,
            },
            {
                $Type : 'UI.DataField',
                Label : 'jobTitle',
                Value : jobTitle,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'User ID',
            Value : userId,
        },
        {
            $Type : 'UI.DataField',
            Label : 'email',
            Value : email,
        },
        {
            $Type : 'UI.DataField',
            Label : 'firstName',
            Value : firstName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'gender',
            Value : gender,
        },
        {
            $Type : 'UI.DataField',
            Label : 'jobTitle',
            Value : jobTitle,
        },
    ],
);

annotate service.User with {
    email @Common.Text : firstName
};
annotate service.User with {
    firstName @Common.Text : email
};
annotate service.User with {
    jobTitle @Common.Text : userId
};
annotate service.User with {
    userId @Common.Text : firstName
};
