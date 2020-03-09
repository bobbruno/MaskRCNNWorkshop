var ampan = require('@aws-amplify/analytics');
var ampauth = require('@aws-amplify/auth');

const amplifyConfig = {
  Auth: {
    identityPoolId: 'eu-central-1:d03e19ea-0612-45c4-9fa1-e8a27521e1f1',
    region: 'eu-central-1'
  }
}

const analyticsConfig = {
  bufferSize: 1, 
  flushInterval: 1, 
  AWSPinpoint: {
        // Amazon Pinpoint App Client ID
        appId: 'a7819aa830f048dfbb8bb1daa6d01211',
        // Amazon service region
        region: 'eu-central-1',
        mandatorySignIn: false,
  }
}

//Initialize Amplify
var auth = new ampauth.AuthClass();
auth.configure(amplifyConfig);

var myAnalytics = new ampan.AnalyticsClass();
myAnalytics.configure(analyticsConfig)

window.recorder = function (title, project) {
    //Record a custom event
    myAnalytics.record({
        name: 'page-load',
        attributes: { 
            title: title, 
            project: project
        } 
    });
}
