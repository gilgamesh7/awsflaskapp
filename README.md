# awsflaskapp

Created as an exercise, mainly from 
https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/create-deploy-python-flask.html

Tried with these : 


pip install awsebcli --upgrade


eb init -p python-3.8 flask-tutorial --region ap-southeast-2

eb create flask-env

eb terminate flask-env

Succeeded with using the "Craete New Enviornment" button on https://ap-southeast-2.console.aws.amazon.com/elasticbeanstalk/home?region=ap-southeast-2#/environments


and 

uploading a zip  file with application.py and requirements.txt in it