sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'sampleproject/sampleproject/test/integration/FirstJourney',
		'sampleproject/sampleproject/test/integration/pages/List',
		'sampleproject/sampleproject/test/integration/pages/ObjectPage'
    ],
    function(JourneyRunner, opaJourney, List, ObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('sampleproject/sampleproject') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheList: List,
					onTheObjectPage: ObjectPage
                }
            },
            opaJourney.run
        );
    }
);