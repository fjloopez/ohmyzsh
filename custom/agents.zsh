SSH_KEY_PATH=~/Documents/Projects/player-engagement-ci/ssh_keys

# Cloudstack agent
  function csagent () {
    ssh -i $SSH_KEY_PATH/gocd_agent_root_key root@gocdagent$1.ci.cloud.gamesys.corp
  }

# Openstack agent
  function osagent () {  
    ssh -i $SSH_KEY_PATH/gocd_agent_root_key root@gpcd-gocdagentos0$1.gpcd.pgt.gaia
  }
