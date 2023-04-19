pipeline{
   agent any
   stages{
       stage("git checks"){
           steps{
               sh "echo 'helLO CLODUGPT' "
           }
       }
      stage("Deply to s3"){
         steps{
         sh "aws configure set region $AWS_REGION"
         sh "aws configure set aws_access_key_id $AWS_ACCESS_KEY"
         sh "aws configure set aws_secret_access_key $AWS_SECRET_KEY" 
         sh "aws configure set aws_session_token $AWS_SESSION_TOKEN"   
         sh "aws s3 rm s3://cloudgpt.dns-poc-onprem.tk/index.html"
         sh "aws s3 cp index.html s3://cloudgpt.dns-poc-onprem.tk/"
         }
      
      }
      stage("terraform init"){
          steps{
      sh "terraform init"
      sh "terraform apply --auto-approve"
      sh "terraform destroy --auto-approve"       
      }
      }
   }
}
