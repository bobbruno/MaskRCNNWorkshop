#!/bin/bash -xe

[ -z ${deploymentbucket} ] && echo 'please specify a value for ${deploymentbucket}' $$ exit 1


SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
[ -f $SCRIPT_DIR/../../awsenv ] && echo "sourcing env from $SCRIPT_DIR/../../awsenv" && source $SCRIPT_DIR/../../awsenv

rm -rf $SCRIPT_DIR/../workshop/public
cd $SCRIPT_DIR/../workshop && hugo -v
aws s3 sync --acl public-read --delete --no-progress $SCRIPT_DIR/../workshop/public s3://${deploymentbucket}/