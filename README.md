This project contains 2 modules, which are doing the same thing:

* creating instances in a specific Exoscale zone
* using the SSH key passed as a parameter

These 2 modules different by the provider they use:

* the ``exoscale`` module uses the "exoscale" provider from https://github.com/exoscale/terraform-provider-exoscale/
* the ``cloudstack`` module uses the "cloudstack" provider from https://github.com/terraform-providers/terraform-provider-cloudstack/

The first apply works as expected:

```
$ terraform apply -auto-approve
module.exo_vie.exoscale_ssh_keypair.terraform: Creating...
  fingerprint: "" => "<computed>"
  name:        "" => "exo/vie/terraform"
  private_key: "<sensitive>" => "<sensitive>"
  public_key:  "" => "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDXqhXQ0SQblwfo03KprP3wL9EoGdS6m8mFP7KVTsVpZSxrUM5BLJkyoVICTjm9N/N1/6Pq2+ePM+KQYnp9EMe5sCRnwrcUVLuWSe7gqk9cxJmPf4quqonRhlbCz748u3riEIATBjzcqT/qvA3KVVciuvBD0JROE3gGpVKgVewoPJpA+ioYcg4X1wiFHi74/Yqz+yIiY316Myr1K8mAeXFRBbPmedg29MmIBiUrhfujSAcXQFaGMBsc6BGqPqS8gC8osbk5/HbUHDNL0qRrFLnxP0v0OAmsGA6D6BzZc6yb0cNUB1R4M4EkQokyAMja5g1w7/v68j0QZD5+gNAaUA5l jon@cory\n"
module.exo_fra.exoscale_ssh_keypair.terraform: Creating...
  fingerprint: "" => "<computed>"
  name:        "" => "exo/fra/terraform"
  private_key: "<sensitive>" => "<sensitive>"
  public_key:  "" => "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDXqhXQ0SQblwfo03KprP3wL9EoGdS6m8mFP7KVTsVpZSxrUM5BLJkyoVICTjm9N/N1/6Pq2+ePM+KQYnp9EMe5sCRnwrcUVLuWSe7gqk9cxJmPf4quqonRhlbCz748u3riEIATBjzcqT/qvA3KVVciuvBD0JROE3gGpVKgVewoPJpA+ioYcg4X1wiFHi74/Yqz+yIiY316Myr1K8mAeXFRBbPmedg29MmIBiUrhfujSAcXQFaGMBsc6BGqPqS8gC8osbk5/HbUHDNL0qRrFLnxP0v0OAmsGA6D6BzZc6yb0cNUB1R4M4EkQokyAMja5g1w7/v68j0QZD5+gNAaUA5l jon@cory\n"
module.cs_vie.cloudstack_ssh_keypair.terraform: Creating...
  fingerprint: "" => "<computed>"
  name:        "" => "cs/vie/terraform"
  private_key: "" => "<computed>"
  public_key:  "" => "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDXqhXQ0SQblwfo03KprP3wL9EoGdS6m8mFP7KVTsVpZSxrUM5BLJkyoVICTjm9N/N1/6Pq2+ePM+KQYnp9EMe5sCRnwrcUVLuWSe7gqk9cxJmPf4quqonRhlbCz748u3riEIATBjzcqT/qvA3KVVciuvBD0JROE3gGpVKgVewoPJpA+ioYcg4X1wiFHi74/Yqz+yIiY316Myr1K8mAeXFRBbPmedg29MmIBiUrhfujSAcXQFaGMBsc6BGqPqS8gC8osbk5/HbUHDNL0qRrFLnxP0v0OAmsGA6D6BzZc6yb0cNUB1R4M4EkQokyAMja5g1w7/v68j0QZD5+gNAaUA5l jon@cory\n"
module.cs_fra.cloudstack_ssh_keypair.terraform: Creating...
  fingerprint: "" => "<computed>"
  name:        "" => "cs/fra/terraform"
  private_key: "" => "<computed>"
  public_key:  "" => "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDXqhXQ0SQblwfo03KprP3wL9EoGdS6m8mFP7KVTsVpZSxrUM5BLJkyoVICTjm9N/N1/6Pq2+ePM+KQYnp9EMe5sCRnwrcUVLuWSe7gqk9cxJmPf4quqonRhlbCz748u3riEIATBjzcqT/qvA3KVVciuvBD0JROE3gGpVKgVewoPJpA+ioYcg4X1wiFHi74/Yqz+yIiY316Myr1K8mAeXFRBbPmedg29MmIBiUrhfujSAcXQFaGMBsc6BGqPqS8gC8osbk5/HbUHDNL0qRrFLnxP0v0OAmsGA6D6BzZc6yb0cNUB1R4M4EkQokyAMja5g1w7/v68j0QZD5+gNAaUA5l jon@cory\n"
module.cs_fra.cloudstack_ssh_keypair.terraform: Creation complete after 0s (ID: cs/fra/terraform)
module.cs_fra.cloudstack_instance.instance: Creating...
  display_name:     "" => "<computed>"
  expunge:          "" => "false"
  group:            "" => "<computed>"
  ip_address:       "" => "<computed>"
  keypair:          "" => "cs/fra/terraform"
  name:             "" => "cs-test0-de-fra-1"
  network_id:       "" => "<computed>"
  project:          "" => "<computed>"
  root_disk_size:   "" => "<computed>"
  service_offering: "" => "Micro"
  tags.%:           "" => "<computed>"
  template:         "" => "Linux Debian 9 64-bit"
  zone:             "" => "de-fra-1"
module.exo_vie.exoscale_ssh_keypair.terraform: Creation complete after 0s (ID: exo/vie/terraform)
module.exo_vie.exoscale_compute.instance: Creating...
  affinity_group_ids.#: "" => "<computed>"
  affinity_groups.#:    "" => "<computed>"
  disk_size:            "" => "10"
  display_name:         "" => "exo-test0-at-vie-1"
  gateway:              "" => "<computed>"
  ip4:                  "" => "true"
  ip6:                  "" => "false"
  ip6_address:          "" => "<computed>"
  ip6_cidr:             "" => "<computed>"
  ip_address:           "" => "<computed>"
  key_pair:             "" => "exo/vie/terraform"
  name:                 "" => "<computed>"
  password:             "<sensitive>" => "<sensitive>"
  security_group_ids.#: "" => "<computed>"
  security_groups.#:    "" => "<computed>"
  size:                 "" => "Micro"
  state:                "" => "<computed>"
  tags.%:               "" => "<computed>"
  template:             "" => "Linux Debian 9 64-bit"
  username:             "" => "<computed>"
  zone:                 "" => "at-vie-1"
module.cs_vie.cloudstack_ssh_keypair.terraform: Creation complete after 0s (ID: cs/vie/terraform)
module.exo_fra.exoscale_ssh_keypair.terraform: Creation complete after 0s (ID: exo/fra/terraform)
module.cs_vie.cloudstack_instance.instance: Creating...
  display_name:     "" => "<computed>"
  expunge:          "" => "false"
  group:            "" => "<computed>"
  ip_address:       "" => "<computed>"
  keypair:          "" => "cs/vie/terraform"
  name:             "" => "cs-test0-at-vie-1"
  network_id:       "" => "<computed>"
  project:          "" => "<computed>"
  root_disk_size:   "" => "<computed>"
  service_offering: "" => "Micro"
  tags.%:           "" => "<computed>"
  template:         "" => "Linux Debian 9 64-bit"
  zone:             "" => "at-vie-1"
module.exo_fra.exoscale_compute.instance: Creating...
  affinity_group_ids.#: "" => "<computed>"
  affinity_groups.#:    "" => "<computed>"
  disk_size:            "" => "10"
  display_name:         "" => "exo-test0-de-fra-1"
  gateway:              "" => "<computed>"
  ip4:                  "" => "true"
  ip6:                  "" => "false"
  ip6_address:          "" => "<computed>"
  ip6_cidr:             "" => "<computed>"
  ip_address:           "" => "<computed>"
  key_pair:             "" => "exo/fra/terraform"
  name:                 "" => "<computed>"
  password:             "<sensitive>" => "<sensitive>"
  security_group_ids.#: "" => "<computed>"
  security_groups.#:    "" => "<computed>"
  size:                 "" => "Micro"
  state:                "" => "<computed>"
  tags.%:               "" => "<computed>"
  template:             "" => "Linux Debian 9 64-bit"
  username:             "" => "<computed>"
  zone:                 "" => "de-fra-1"
module.cs_fra.cloudstack_instance.instance: Still creating... (10s elapsed)
module.exo_vie.exoscale_compute.instance: Still creating... (10s elapsed)
module.cs_vie.cloudstack_instance.instance: Still creating... (10s elapsed)
module.exo_fra.exoscale_compute.instance: Still creating... (10s elapsed)
module.cs_vie.cloudstack_instance.instance: Provisioning with 'remote-exec'...
module.cs_vie.cloudstack_instance.instance (remote-exec): Connecting to remote host via SSH...
module.cs_vie.cloudstack_instance.instance (remote-exec):   Host: 185.150.10.98
module.cs_vie.cloudstack_instance.instance (remote-exec):   User: debian
module.cs_vie.cloudstack_instance.instance (remote-exec):   Password: true
module.cs_vie.cloudstack_instance.instance (remote-exec):   Private key: false
module.cs_vie.cloudstack_instance.instance (remote-exec):   SSH Agent: true
module.cs_fra.cloudstack_instance.instance: Provisioning with 'remote-exec'...
module.cs_fra.cloudstack_instance.instance (remote-exec): Connecting to remote host via SSH...
module.cs_fra.cloudstack_instance.instance (remote-exec):   Host: 89.145.160.159
module.cs_fra.cloudstack_instance.instance (remote-exec):   User: debian
module.cs_fra.cloudstack_instance.instance (remote-exec):   Password: true
module.cs_fra.cloudstack_instance.instance (remote-exec):   Private key: false
module.cs_fra.cloudstack_instance.instance (remote-exec):   SSH Agent: true
module.exo_fra.exoscale_compute.instance: Provisioning with 'remote-exec'...
module.exo_fra.exoscale_compute.instance (remote-exec): Connecting to remote host via SSH...
module.exo_fra.exoscale_compute.instance (remote-exec):   Host: 89.145.160.198
module.exo_fra.exoscale_compute.instance (remote-exec):   User: debian
module.exo_fra.exoscale_compute.instance (remote-exec):   Password: true
module.exo_fra.exoscale_compute.instance (remote-exec):   Private key: false
module.exo_fra.exoscale_compute.instance (remote-exec):   SSH Agent: true
module.exo_vie.exoscale_compute.instance: Provisioning with 'remote-exec'...
module.exo_vie.exoscale_compute.instance (remote-exec): Connecting to remote host via SSH...
module.exo_vie.exoscale_compute.instance (remote-exec):   Host: 185.150.10.120
module.exo_vie.exoscale_compute.instance (remote-exec):   User: debian
module.exo_vie.exoscale_compute.instance (remote-exec):   Password: true
module.exo_vie.exoscale_compute.instance (remote-exec):   Private key: false
module.exo_vie.exoscale_compute.instance (remote-exec):   SSH Agent: true
module.cs_fra.cloudstack_instance.instance: Still creating... (20s elapsed)
module.exo_vie.exoscale_compute.instance: Still creating... (20s elapsed)
module.cs_vie.cloudstack_instance.instance: Still creating... (20s elapsed)
module.exo_fra.exoscale_compute.instance: Still creating... (20s elapsed)
module.cs_vie.cloudstack_instance.instance (remote-exec): Connecting to remote host via SSH...
module.cs_vie.cloudstack_instance.instance (remote-exec):   Host: 185.150.10.98
module.cs_vie.cloudstack_instance.instance (remote-exec):   User: debian
module.cs_vie.cloudstack_instance.instance (remote-exec):   Password: true
module.cs_vie.cloudstack_instance.instance (remote-exec):   Private key: false
module.cs_vie.cloudstack_instance.instance (remote-exec):   SSH Agent: true
module.cs_fra.cloudstack_instance.instance (remote-exec): Connecting to remote host via SSH...
module.cs_fra.cloudstack_instance.instance (remote-exec):   Host: 89.145.160.159
module.cs_fra.cloudstack_instance.instance (remote-exec):   User: debian
module.cs_fra.cloudstack_instance.instance (remote-exec):   Password: true
module.cs_fra.cloudstack_instance.instance (remote-exec):   Private key: false
module.cs_fra.cloudstack_instance.instance (remote-exec):   SSH Agent: true
module.cs_fra.cloudstack_instance.instance (remote-exec): Connected!
module.cs_vie.cloudstack_instance.instance (remote-exec): Connected!
module.cs_fra.cloudstack_instance.instance (remote-exec): cs-test0-de-fra-1
module.cs_vie.cloudstack_instance.instance (remote-exec): cs-test0-at-vie-1
module.cs_fra.cloudstack_instance.instance: Creation complete after 28s (ID: 02b6da8c-7d36-4a73-a82f-2b510e06984a)
module.cs_vie.cloudstack_instance.instance: Creation complete after 28s (ID: 2a638cdc-6dc5-4cc5-b6fd-a48af88bddd8)
module.exo_fra.exoscale_compute.instance (remote-exec): Connecting to remote host via SSH...
module.exo_fra.exoscale_compute.instance (remote-exec):   Host: 89.145.160.198
module.exo_fra.exoscale_compute.instance (remote-exec):   User: debian
module.exo_fra.exoscale_compute.instance (remote-exec):   Password: true
module.exo_fra.exoscale_compute.instance (remote-exec):   Private key: false
module.exo_fra.exoscale_compute.instance (remote-exec):   SSH Agent: true
module.exo_vie.exoscale_compute.instance (remote-exec): Connecting to remote host via SSH...
module.exo_vie.exoscale_compute.instance (remote-exec):   Host: 185.150.10.120
module.exo_vie.exoscale_compute.instance (remote-exec):   User: debian
module.exo_vie.exoscale_compute.instance (remote-exec):   Password: true
module.exo_vie.exoscale_compute.instance (remote-exec):   Private key: false
module.exo_vie.exoscale_compute.instance (remote-exec):   SSH Agent: true
module.exo_fra.exoscale_compute.instance (remote-exec): Connected!
module.exo_vie.exoscale_compute.instance (remote-exec): Connected!
module.exo_fra.exoscale_compute.instance (remote-exec): exo-test0-de-fra-1
module.exo_vie.exoscale_compute.instance: Still creating... (30s elapsed)
module.exo_fra.exoscale_compute.instance: Still creating... (30s elapsed)
module.exo_fra.exoscale_compute.instance: Creation complete after 30s (ID: afa84cd3-a00c-4aa1-ab6e-19649ec6b8ec)
module.exo_vie.exoscale_compute.instance (remote-exec): exo-test0-at-vie-1
module.exo_vie.exoscale_compute.instance: Creation complete after 31s (ID: a8cae733-7c70-4cf2-bb5a-30bf57ff8165)

Apply complete! Resources: 8 added, 0 changed, 0 destroyed.
```

However, the second apply shows that the instances created using the Exoscale provider have the wrong SSH key (this is confirmed in the Exoscale web console):
```
$ terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.

cloudstack_ssh_keypair.terraform: Refreshing state... (ID: cs/fra/terraform)
exoscale_ssh_keypair.terraform: Refreshing state... (ID: exo/vie/terraform)
exoscale_ssh_keypair.terraform: Refreshing state... (ID: exo/fra/terraform)
cloudstack_ssh_keypair.terraform: Refreshing state... (ID: cs/vie/terraform)
cloudstack_instance.instance: Refreshing state... (ID: 02b6da8c-7d36-4a73-a82f-2b510e06984a)
cloudstack_instance.instance: Refreshing state... (ID: 2a638cdc-6dc5-4cc5-b6fd-a48af88bddd8)
exoscale_compute.instance: Refreshing state... (ID: afa84cd3-a00c-4aa1-ab6e-19649ec6b8ec)
exoscale_compute.instance: Refreshing state... (ID: a8cae733-7c70-4cf2-bb5a-30bf57ff8165)

------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
-/+ destroy and then create replacement

Terraform will perform the following actions:

-/+ module.exo_fra.exoscale_compute.instance (new resource required)
      id:                   "afa84cd3-a00c-4aa1-ab6e-19649ec6b8ec" => <computed> (forces new resource)
      affinity_group_ids.#: "0" => <computed>
      affinity_groups.#:    "0" => <computed>
      disk_size:            "10" => "10"
      display_name:         "exo-test0-de-fra-1" => "exo-test0-de-fra-1"
      gateway:              "89.145.160.1" => <computed>
      ip4:                  "true" => "true"
      ip6:                  "false" => "false"
      ip6_address:          "" => <computed>
      ip6_cidr:             "" => <computed>
      ip_address:           "89.145.160.198" => <computed>
      key_pair:             "cs/fra/terraform" => "exo/fra/terraform" (forces new resource)
      name:                 "exo-test0-de-fra-1" => <computed>
      password:             <sensitive> => <computed> (attribute changed)
      security_group_ids.#: "1" => <computed>
      security_groups.#:    "1" => <computed>
      size:                 "Micro" => "Micro"
      state:                "Running" => <computed>
      tags.%:               "0" => <computed>
      template:             "Linux Debian 9 64-bit" => "Linux Debian 9 64-bit"
      username:             "debian" => <computed>
      zone:                 "de-fra-1" => "de-fra-1"

-/+ module.exo_vie.exoscale_compute.instance (new resource required)
      id:                   "a8cae733-7c70-4cf2-bb5a-30bf57ff8165" => <computed> (forces new resource)
      affinity_group_ids.#: "0" => <computed>
      affinity_groups.#:    "0" => <computed>
      disk_size:            "10" => "10"
      display_name:         "exo-test0-at-vie-1" => "exo-test0-at-vie-1"
      gateway:              "185.150.8.1" => <computed>
      ip4:                  "true" => "true"
      ip6:                  "false" => "false"
      ip6_address:          "" => <computed>
      ip6_cidr:             "" => <computed>
      ip_address:           "185.150.10.120" => <computed>
      key_pair:             "cs/fra/terraform" => "exo/vie/terraform" (forces new resource)
      name:                 "exo-test0-at-vie-1" => <computed>
      password:             <sensitive> => <computed> (attribute changed)
      security_group_ids.#: "1" => <computed>
      security_groups.#:    "1" => <computed>
      size:                 "Micro" => "Micro"
      state:                "Running" => <computed>
      tags.%:               "0" => <computed>
      template:             "Linux Debian 9 64-bit" => "Linux Debian 9 64-bit"
      username:             "debian" => <computed>
      zone:                 "at-vie-1" => "at-vie-1"


Plan: 2 to add, 0 to change, 2 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.
```
