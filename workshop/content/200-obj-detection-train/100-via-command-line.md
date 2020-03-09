+++
title = "2a. Via Command Line"
chapter = false
weight = 100
+++
**Only follow these instructions if you haven't done the [Via Amazon Console]({{< relref "200-via-console" >}}) steps.**

To follow this option, you'll need:

- your account number (12 digits)
- a text editor (vim, Sublime, Notepad, etc.)
- a shell that can run bash scripts with the aws CLI configured.

If you don't have any of these, use the "Via Amazon Console" option below.

1. Navigate to the folder containing the lab code:
	`cd mask_rcnn`
1. Open the `stack-sm.sh` file in your preferred text editor.
2. Make the following edits:
	- On line 4, set `AWS_REGION="us-east-1"`
	- On line 8, set `S3_BUCKET="mask-rcnn-demo-coco-iad-<unique-id>"`
	
		<font color="red">NOTE: This has to be account-specific or there will be conflicts. You can use the account number as a unique id.</font>
1. Make a note of the S3 bucket name, you'll need it later.
1. (Optional) On line 17, customize the name of the notebook that'll be created. The default is `NOTEBOOK_INSTANCE_NAME="sm-nb-$DATE"`
2. The variable `EFS_ID` on line 25 will be intentionally left blank. That will create a new Elastic File System that we'll populate with a copy of the dataset to speed up training data serving.
2. Set `GIT_URL="https://github.com/bobbruno/mask_rcnn_lab.git"`. This will make all the notebooks and code available on the notebook instance.
3. The variables `GIT_USER` and `GIT_TOKEN` can be left blank.
4. Save the edited script and run it.
5. You will get a report on the shell of the stack creation progress and a (long) listing of the created stack at the end. You can also see the creation and its results via the AWS Console.
6. Continue to "*Monitoring Stack Creation*"