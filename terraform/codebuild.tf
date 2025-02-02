resource "aws_codebuild_project" "nodejs_build" {
  name          = "nodejs-build"
  description   = "Build Docker image for Node.js app"
  build_timeout = 5
  service_role  = aws_iam_role.codebuild_service_role.arn

  artifacts {
    type = "NO_ARTIFACTS"
  }

  environment {
    compute_type = "BUILD_GENERAL1_SMALL"
    image        = "aws/codebuild/standard:5.0"
    type         = "LINUX_CONTAINER"
    environment_variable {
      name  = "ECR_REPO_URI"
      value = "<aws_account_id>.dkr.ecr.us-east-1.amazonaws.com/nodejs-app"
    }
  }

  source {
    type            = "GITHUB"
    location        = "https://github.com/yourusername/your-repository"
    buildspec       = "buildspec.yml"
  }
}

resource "aws_codebuild_project" "nodejs_build" {
  # This section will be as previously defined above
}
