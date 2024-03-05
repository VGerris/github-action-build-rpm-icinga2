workflow "Build Repo RPM" {
  on = "push"
  resolves = ["Build RPM"]
}

action "Build RPM" {
  uses = "mmornati/docker-mock-rpmbuilder@master"
  env = {
    #SPEC_FILE = "git.spec"
    SOURCE_RPM="icinga2-2.13.5-1.fc36.icinga.src.rpm"
    MOCK_CONFIG = "rocky+epel-9-x86_64"
  }
}
