prepare_lambda() {
  pip install --target target/packages -r src/requirements.txt
  cd target/packages
  zip -r ../lambda.zip .
  cd ../../src
  zip -g ../target/lambda.zip main.py
  cd ../
  mv target/lambda.zip deployment
  rm -rf target
}

deploy() {
  prepare_lambda
  cd deployment/
  terraform init
  terraform apply -auto-approve
  rm lambda.zip
}

deploy