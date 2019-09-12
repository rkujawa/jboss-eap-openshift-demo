#!/bin/bash

# oc login ...

PROJECT_NAME=jboss-demo
EAP_TEMPLATE=eap-cd-basic-s2i
APP_SOURCE_REPO=https://github.com/rkujawa/jboss-eap-quickstarts

oc new-project $PROJECT_NAME

oc create -f $EAP_TEMPLATE_URL.json

oc new-app --template=${EAP_TEMPLATE} -p SOURCE_REPOSITORY_URL=${APP_SOURCE_REPO} -p SOURCE_REPOSITORY_REF=openshift -p CONTEXT_DIR=kitchensink

