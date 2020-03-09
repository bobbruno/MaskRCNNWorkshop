# Running this workshop with AWS event engine

To avoid issues with AWS account limits and and overlapping resources it is advised to provide workshop attendees with a clean AWS account, which they can use to run through the labs of this workshop.
One option is to use [AWS Event Engine](https://w.amazon.com/bin/view/AWS_EventEngine)

Follow instructions below to run this event with event engine.

## Before the event

### Register with event engine

You need to follow the official on-boarding process outlined [here](https://w.amazon.com/bin/view/AWS_EventEngine/OnboardingProcess)

1. (Skip if you have already logged into the Event Engine at least once). Login to [https://admin.eventengine.run](https://admin.eventengine.run)using Midway. Once you login you will NOT be able to see any events, create any events, see any blueprints, or see any pools. This is normal. You will be given access when they on-board you for your first event.

2. Use this [template](https://issues.amazon.com/issues/create?template=1d1c0f90-18f8-435a-9e76-618cb1d61cbd) to submit an on-boarding request. You can get some inspiration here: [https://issues.amazon.com/EE-OB-591?issue-description=](https://issues.amazon.com/EE-OB-591?issue-description=)

## (Optional) A week before the event

If you have never run this event before, it is advised to create a test event some time before the event to get familiar with event engine.

1. Create the event as outlined in the [Operator guide](https://w.amazon.com/bin/view/AWS_EventEngine/Documentation/OperatorGuide)

Make sure you select:

- Blueprint: Standard Event with IAM
- Region: us-east-1
- Stage: Test/Dev event

![Create test event](https://code.amazon.com/packages/AWSSaDeMLonAWSWorkshop/blobs/mainline/--/doc/create-test-event.png "Create test event")

2. Follow the operator guide, but make sure to only create a single team for the test event to run your tests.

## One day before the event

1. Create the event as outlined in the [Operator guide](https://w.amazon.com/bin/view/AWS_EventEngine/Documentation/OperatorGuide)

Use following settings

    - Blueprint: Standard Event with IAM
    - Region: us-east-1
    - Stage: Production

2. Create your teams and click export CSV, to export the team hashes.
3. Edit the attached [account setup instructions](https://code.amazon.com/packages/AWSSaDeMLonAWSWorkshop/blobs/mainline/--/doc/Account-setup.docx) and replace the hashes with the hashes you just exported.
4. Print the account setup instruction doc!
5. Make sure you have initialized and started the event.

## On the day of the event

1. Share the printed document with attendees to get them started and explain that accounts will be teared down after the event! Attendees will be able to log in at https://dashboard.eventengine.run/login with their hash.

## After the event

1. Don't forget to tear down and delete the event in the event engine admin console: https://admin.eventengine.run/dashboard/events
