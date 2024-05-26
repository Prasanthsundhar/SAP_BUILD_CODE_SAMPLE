sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'sampleproject/User/test/integration/FirstJourney',
		'sampleproject/User/test/integration/pages/UserList',
		'sampleproject/User/test/integration/pages/UserObjectPage'
    ],
    function(JourneyRunner, opaJourney, UserList, UserObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('sampleproject/User') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheUserList: UserList,
					onTheUserObjectPage: UserObjectPage
                }
            },
            opaJourney.run
        );
    }
);