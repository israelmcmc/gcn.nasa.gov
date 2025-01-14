@app
remix-gcn

@http
/*
  method any
  src server

@static

@tables
client_credentials
  subiss *String
  client_id **String

sessions
  _idx *String
  _ttl TTL

@aws
runtime nodejs14.x
region us-east-1
architecture arm64
memory 256

@macros
lambdaCognitoPermissions  # Grant the Lambda function access to Cognito to run the credential vending machine.
lambdaMayNotWriteToStaticBucket  # the Lambda function should not be able to modify the static bucket
manualStaticBucketPolicy  # Mission Cloud Platform requires bucket policies to be set manually
permissionsBoundary  # configure IAM Role permissions boundaries required by Mission Cloud Platform
