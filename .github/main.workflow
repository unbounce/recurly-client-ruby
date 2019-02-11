workflow "Sonar Scanner" {
    on = "push"
    resolves = ["sonar scan"]
}

action "sonar scan" {
    uses = "docker://unbounce/sonarcloud-github"
    secrets = ["SONAR_LOGIN"]
    env = {
        "SONAR_PROJECT_KEY" = "recurly-ruby-client"
        "SONAR_ORG" = "unbouncerabbit-github"
    }
}
