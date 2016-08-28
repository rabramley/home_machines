= How to Use

== Dev Setup

This is the first thing that you should do.

To run this you should run the command:

{{{
    cd ansible && ansible-playbook setup_dev.yml --ask-vault-pass && cd ..
}}}

== Server Setup

{{{
    ansible-playbook setup_servers.yml --ask-vault-pass -K
}}}