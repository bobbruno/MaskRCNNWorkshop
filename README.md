# AWS AI/ML - Workshop

## Running this workshop with event engine

To avoid issues with AWS account limits and and overlapping resources it is advised to provide workshop attendees with a clean AWS account, which they can use to run through the labs of this workshop.
One option is to use [AWS Event Engine](https://w.amazon.com/bin/view/AWS_EventEngine)

For instructions how to use event engine for this workshop have a look [here](https://code.amazon.com/packages/AWSSaDeMLonAWSWorkshop/blobs/mainline/--/doc/How-to-event-engine.md):

Initial limit in Event Engine accounts for notebook instances is 3;

## Developer Guide

This workshop is built with markdown as a static HTML site using [hugo](http://gohugo.io).

```bash
brew install hugo
```

You'll find the content of the workshop in the [workshop/](workshop/) directory.

You can start up a local development server by running:

```bash
cd workshop
hugo server -D
open http://localhost:1313/
```

## License Summary

This sample code is made available under a modified MIT license. See the LICENSE file.
