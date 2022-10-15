#!/bin/bash
echo "Compiling frontend"
npm run build 
echo "Deleteing old content"
ssh -p 64321 host309543@185.110.51.150 'rm -rf public_html/*' | true
echo "Deploying"
scp -r -P 64321 build/* host309543@185.110.51.150:public_html
