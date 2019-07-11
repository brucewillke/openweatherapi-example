# SSH authentication architecture and design
## SSH keys are temporary and all ssh access must go through the bastion host

- A bastion host with LDAP/SSO authentication and multi-factor auth 

- This bastion host would execute a utility to issue temporary ssh keys to the user on the bastion for access to their requested host

- These hosts would be allowed access based on the role associated with the LDAP user group where the user resides. 

- The hosts would allow users access to sudo based on their role in LDAP. The keys would be placed into authorized_keys and eventually revoked

- The environments allowed for users to ssh are managed by their LDAP group or OU

- All access to systems are never executed as the root user
