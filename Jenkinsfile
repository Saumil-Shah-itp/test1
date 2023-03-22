pipeline{
   agent any
   stages{
       stage("git checks"){
           steps{
               sh "echo 'hello world' "
           }
       }
      stage("Deply to s3"){
         steps{
         sh "aws configure set region $AWS_REGION"
         sh "aws configure set aws_access_key_id $AWS_ACCESS_KEY"
         sh "aws configure set aws_secret_access_key $AWS_SECRET_KEY" 
         sh "aws configure set aws_session_token $AWS_SESSION_TOKEN"   
         }
      
      }
   }
}
