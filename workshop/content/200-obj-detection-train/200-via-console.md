+++
title = "2b. Via Amazon Console"
chapter = false
weight = 100
+++

**These steps should already be done on your account. They are here for your reference, in case you want to repeat the lab on another account. Please proceed to the next page.**

**Only follow these instructions if you haven't done the [Via Command Line]({{< relref "100-via-command-line" >}}) steps.**

1. Login to the AWS Account provided
2. On the top right, make sure you are on region "`us-east-1`". If needed, change it to `us-east-1` using the dropdown.
3. On the "Find Services" Search box, start typing _CloudFormation_. When it show up on the drop-down box, click on it.
4. On the CloudFormation main window, click on the "Create Stack" button on the **top right** and select "With new resources".
	![CloudFormation Stacks](resources/cloudformation-stacks.png?width=800px)
5. On the "Create Stack" page, select "Template is ready" under "Prepare template" and "upload a template file" under "Specify template".
	![Create Stack](resources/create-stack.png?width=800px)
6. Click on "Choose file" and navigate to the git repo you cloned before
6. Go to the `mask_rcnn_lab/mask_rcnn/` folder and select the `cfn-sm.yaml` file.
7. Click "Next".
8. On the "Specify Stack Details" page, give the stack a name. We suggest "`sm-stack-2020-03-10`".
9. Under "Parameters", go to "S3BucketName" and fill it with "`mask-rcnn-demo-coco-iad-<unique-id>`". Leave the other parameters as they are.

	<font color="red">This has to be account-specific or there will be conflicts. You can use the account number as a unique id.</font>
1. Make a note of the S3 bucket name, you'll need it later.
10. Click "Next".
11. Under "Configure stack options", scroll to the bottom and click "Next".
12. Under "Review `<stack-name>`", scroll to the bottom, acknowledge the " **I acknowledge that AWS CloudFormation might create IAM resources.**" checkbox and click on "Create stack".
13. You will be taken back to the list of stacks.
