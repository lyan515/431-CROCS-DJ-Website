# CSCE 431 CROCS: DJ's of Aggieland Website

Disclosure: This app was created using the basic skeletal code of Rotten Potatoes. 

All code used is only structural, and was used to set up and run the app locally after we tried and failed to set up an environment to run locally

# Setup process

To get started:

1. [Setup a Cloud9 environment for the course.](https://github.com/saasbook/courseware/wiki/Setting-up-Cloud9)

2. Fork this repo to your GitHub account, then in your Cloud9 terminal, type the following command to clone your fork to your development workspace: git clone git@github.com:lyan515/431-CROCS-DJ-Website.git

3. type cd 431-CROCS-DJ-Website to change to the app's directory.

4. type bundle install --without production to make sure all the gems (libraries) used by the app are in place.

5. Run bundle exec rake db:setup to create the initial database
  a. before you run the server, you should first change 3 things in the code
   
   i. In app/models/dj_portfolio.rb , change the init method from self.welcome_id ||= 7 ,to self.welcome_id ||= 1. This is due to a problem with how associations work where you have to manually set the foreign key for the welcome association with this method
   
   ii. In db/seeds.rb, change the welcome_ids of the dj portfolio seeds to be 1 instead of 4
   
   iii. In app/uploaders/avatar_uploader.rb, switch storage to :file for localserver use, and fog for heroku use
   
6. Run rails server -p $PORT -b $IP to start the app. Cloud9 will pop up a window showing the URL to visit in your browser to interact with the running app.

# Other important commands

If you make any changes to the database you need to run the command: rake db:migrate
If you want to seed the database you need to run the command: rake db:seed

# AWS migration note

In order for image uploading to work on heroku, you need to use AWS S3 storage. Because it is bad practice to expose your keys, we have decided to not push our active keys. Therefore, if you want to push to heroku successfully, you will need to create a new AWS account.

Heroku configures the public assets folder as read only, so in order to store uploaded DJ portfolio images, you need to use S3 storage

# AWS steps

1. [Create a free AWS account](https://aws.amazon.com/premiumsupport/knowledge-center/create-and-activate-aws-account/)

2. [Follow the steps in this tutorial](https://devcenter.heroku.com/articles/s3) to set up the environment for S3 deployment in Heroku

3. Using the keys generated in step 2 and the name of you S3 bucket, go to config/initializers/carrier_wave.rb to fill in the essential AWS information into the file. 

  a. DO NOT PUSH THIS INFO INTO GITHUB, it poses a huge security risk, and your AWS account may become compromised
  
4. For our configurtration, it we needed to go to our bucket settings in AWS and set the bucket to public, you may want to research this in your future implementation.


