# C-SPINE2

## Table of Contents

- [Management](#management)
  - [Management Interfaces](#management-interfaces)
  - [DNS Domain](#dns-domain)
  - [IP Name Servers](#ip-name-servers)
  - [Clock Settings](#clock-settings)
  - [NTP](#ntp)
  - [Management API HTTP](#management-api-http)
- [Authentication](#authentication)
  - [Local Users](#local-users)
  - [AAA Authorization](#aaa-authorization)
- [Monitoring](#monitoring)
  - [TerminAttr Daemon](#terminattr-daemon)
- [Spanning Tree](#spanning-tree)
  - [Spanning Tree Summary](#spanning-tree-summary)
  - [Spanning Tree Device Configuration](#spanning-tree-device-configuration)
- [Internal VLAN Allocation Policy](#internal-vlan-allocation-policy)
  - [Internal VLAN Allocation Policy Summary](#internal-vlan-allocation-policy-summary)
  - [Internal VLAN Allocation Policy Configuration](#internal-vlan-allocation-policy-configuration)
- [MAC Address Table](#mac-address-table)
  - [MAC Address Table Summary](#mac-address-table-summary)
  - [MAC Address Table Device Configuration](#mac-address-table-device-configuration)
- [Interfaces](#interfaces)
  - [Ethernet Interfaces](#ethernet-interfaces)
  - [Loopback Interfaces](#loopback-interfaces)
- [Routing](#routing)
  - [Service Routing Protocols Model](#service-routing-protocols-model)
  - [IP Routing](#ip-routing)
  - [IPv6 Routing](#ipv6-routing)
  - [ARP](#arp)
  - [Router OSPF](#router-ospf)
  - [Router BGP](#router-bgp)
- [BFD](#bfd)
  - [Router BFD](#router-bfd)
- [Filters](#filters)
  - [Peer Filters](#peer-filters)
- [VRF Instances](#vrf-instances)
  - [VRF Instances Summary](#vrf-instances-summary)
  - [VRF Instances Device Configuration](#vrf-instances-device-configuration)
- [EOS CLI](#eos-cli)

## Management

### Management Interfaces

#### Management Interfaces Summary

##### IPv4

| Management Interface | description | Type | VRF | IP Address | Gateway |
| -------------------- | ----------- | ---- | --- | ---------- | ------- |
| Management1 | oob_management | oob | default | 172.100.100.128/24 | - |

##### IPv6

| Management Interface | description | Type | VRF | IPv6 Address | IPv6 Gateway |
| -------------------- | ----------- | ---- | --- | ------------ | ------------ |
| Management1 | oob_management | oob | default | - | - |

#### Management Interfaces Device Configuration

```eos
!
interface Management1
   description oob_management
   no shutdown
   ip address 172.100.100.128/24
```

### DNS Domain

#### DNS domain: lab.lab

#### DNS Domain Device Configuration

```eos
dns domain lab.lab
!
```

### IP Name Servers

#### IP Name Servers Summary

| Name Server | VRF | Priority |
| ----------- | --- | -------- |
| 8.8.8.8 | default | - |
| 8.8.4.4 | default | - |

#### IP Name Servers Device Configuration

```eos
ip name-server vrf default 8.8.4.4
ip name-server vrf default 8.8.8.8
```

### Clock Settings

#### Clock Timezone Settings

Clock Timezone is set to **EST**.

#### Clock Configuration

```eos
!
clock timezone EST
```

### NTP

#### NTP Summary

##### NTP Servers

| Server | VRF | Preferred | Burst | iBurst | Version | Min Poll | Max Poll | Local-interface | Key |
| ------ | --- | --------- | ----- | ------ | ------- | -------- | -------- | --------------- | --- |
| 0.north-america.pool.ntp.org | default | True | - | - | - | - | - | - | - |
| 1.north-america.pool.ntp.org | default | - | - | - | - | - | - | - | - |

#### NTP Device Configuration

```eos
!
ntp server 0.north-america.pool.ntp.org prefer
ntp server 1.north-america.pool.ntp.org
```

### Management API HTTP

#### Management API HTTP Summary

| HTTP | HTTPS | Default Services |
| ---- | ----- | ---------------- |
| False | True | - |

#### Management API VRF Access

| VRF Name | IPv4 ACL | IPv6 ACL |
| -------- | -------- | -------- |
| default | - | - |

#### Management API HTTP Configuration

```eos
!
management api http-commands
   protocol https
   no shutdown
   !
   vrf default
      no shutdown
```

## Authentication

### Local Users

#### Local Users Summary

| User | Privilege | Role | Disabled | Shell |
| ---- | --------- | ---- | -------- | ----- |
| arista | 15 | network-admin | False | - |
| cvpadmin | 15 | network-admin | False | - |
| ec2-user | - | - | False | /bin/bash |
| service | - | - | False | /bin/bash |

#### Local Users Device Configuration

```eos
!
username arista privilege 15 role network-admin secret sha512 <removed>
username cvpadmin privilege 15 role network-admin secret sha512 <removed>
username ec2-user shell /bin/bash nopassword
username ec2-user ssh-key ssh-rsa ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDxTxvxMJkL/JFZ8dHFkeHb4r+E8JQ7ScqU/TRO1cBhQd98sZMuazglCSQNzOriRs9AdwZ2HdCz741HTIH7uIU7wRBfCyCHThy/FS66vvP42rMyV+/v2VuU0u6eylZg2fERjHKHpu0HYFZvlR/dxa1uNBGDGXvfXmAwBLlrV1aNXgmiejoCYpupGLu20OWQac2tYUwiVS7vNSCMEvHCTUQ/HITEn5xXhxyP/xVYIX4rXwKQdPogWc2pdJMvNt75VvIdunEthf5ZotPBq923Hvn474199W+Wp0AEPyh/JidRQSRM/X5VA1Yhj8umt8APg6RW1hvco6JwMEM6MUZN0dyvm18S35FRlsFtpypY2s8DFrIgEMf8uQxBz98wDt3aAiHiVK7zxOOrRgvibJuZYy1ZRNlOiMwGyl8ZHhSJO5HHXWVTi1YOwf0Nu/WB37KJbdc50lj0iCygPIP+X4UfIoyb+KHx4PNAC/G/+D/gxfs848QMhp2aZHvixzkGYtx0KfE= root@buildkitsandbox
username service shell /bin/bash secret sha512 <removed>
```

### AAA Authorization

#### AAA Authorization Summary

| Type | User Stores |
| ---- | ----------- |
| Exec | local |

Authorization for configuration commands is disabled.

#### AAA Authorization Device Configuration

```eos
aaa authorization exec default local
!
```

## Monitoring

### TerminAttr Daemon

#### TerminAttr Daemon Summary

| CV Compression | CloudVision Servers | VRF | Authentication | Smash Excludes | Ingest Exclude | Bypass AAA |
| -------------- | ------------------- | --- | -------------- | -------------- | -------------- | ---------- |
| gzip | 172.100.100.5:9910 | - | token,/tmp/token | ale,flexCounter,hardware,kni,pulse,strata | /Sysdb/cell/1/agent,/Sysdb/cell/2/agent | False |

#### TerminAttr Daemon Device Configuration

```eos
!
daemon TerminAttr
   exec /usr/bin/TerminAttr -cvaddr=172.100.100.5:9910 -cvauth=token,/tmp/token -smashexcludes=ale,flexCounter,hardware,kni,pulse,strata -ingestexclude=/Sysdb/cell/1/agent,/Sysdb/cell/2/agent -taillogs
   no shutdown
```

## Spanning Tree

### Spanning Tree Summary

STP mode: **none**

### Spanning Tree Device Configuration

```eos
!
spanning-tree mode none
```

## Internal VLAN Allocation Policy

### Internal VLAN Allocation Policy Summary

| Policy Allocation | Range Beginning | Range Ending |
| ------------------| --------------- | ------------ |
| ascending | 1006 | 1199 |

### Internal VLAN Allocation Policy Configuration

```eos
!
vlan internal order ascending range 1006 1199
```

## MAC Address Table

### MAC Address Table Summary

- MAC address table entry maximum age: 1800 seconds

### MAC Address Table Device Configuration

```eos
!
mac address-table aging-time 1800
```

## Interfaces

### Ethernet Interfaces

#### Ethernet Interfaces Summary

##### L2

| Interface | Description | Mode | VLANs | Native VLAN | Trunk Group | Channel-Group |
| --------- | ----------- | ---- | ----- | ----------- | ----------- | ------------- |

*Inherited from Port-Channel Interface

##### IPv4

| Interface | Description | Type | Channel Group | IP Address | VRF |  MTU | Shutdown | ACL In | ACL Out |
| --------- | ----------- | -----| ------------- | ---------- | ----| ---- | -------- | ------ | ------- |
| Ethernet1 | P2P_LINK_TO_C-LEAF1_Ethernet2 | routed | - | 192.168.0.2/31 | default | 1500 | False | - | - |
| Ethernet2 | P2P_LINK_TO_C-LEAF2_Ethernet2 | routed | - | 192.168.0.6/31 | default | 1500 | False | - | - |
| Ethernet3 | P2P_LINK_TO_C-LEAF3_Ethernet2 | routed | - | 192.168.0.10/31 | default | 1500 | False | - | - |
| Ethernet4 | P2P_LINK_TO_C-LEAF4_Ethernet2 | routed | - | 192.168.0.14/31 | default | 1500 | False | - | - |
| Ethernet5 | P2P_LINK_TO_C-LEAF5_Ethernet2 | routed | - | 192.168.0.18/31 | default | 1500 | False | - | - |
| Ethernet6 | P2P_LINK_TO_C-LEAF6_Ethernet2 | routed | - | 192.168.0.22/31 | default | 1500 | False | - | - |
| Ethernet7 | P2P_LINK_TO_C-LEAF7_Ethernet2 | routed | - | 192.168.0.26/31 | default | 1500 | False | - | - |
| Ethernet8 | P2P_LINK_TO_C-LEAF8_Ethernet2 | routed | - | 192.168.0.30/31 | default | 1500 | False | - | - |

#### Ethernet Interfaces Device Configuration

```eos
!
interface Ethernet1
   description P2P_LINK_TO_C-LEAF1_Ethernet2
   no shutdown
   mtu 1500
   no switchport
   ip address 192.168.0.2/31
   ip ospf network point-to-point
   ip ospf area 0.0.0.0
!
interface Ethernet2
   description P2P_LINK_TO_C-LEAF2_Ethernet2
   no shutdown
   mtu 1500
   no switchport
   ip address 192.168.0.6/31
   ip ospf network point-to-point
   ip ospf area 0.0.0.0
!
interface Ethernet3
   description P2P_LINK_TO_C-LEAF3_Ethernet2
   no shutdown
   mtu 1500
   no switchport
   ip address 192.168.0.10/31
   ip ospf network point-to-point
   ip ospf area 0.0.0.0
!
interface Ethernet4
   description P2P_LINK_TO_C-LEAF4_Ethernet2
   no shutdown
   mtu 1500
   no switchport
   ip address 192.168.0.14/31
   ip ospf network point-to-point
   ip ospf area 0.0.0.0
!
interface Ethernet5
   description P2P_LINK_TO_C-LEAF5_Ethernet2
   no shutdown
   mtu 1500
   no switchport
   ip address 192.168.0.18/31
   ip ospf network point-to-point
   ip ospf area 0.0.0.0
!
interface Ethernet6
   description P2P_LINK_TO_C-LEAF6_Ethernet2
   no shutdown
   mtu 1500
   no switchport
   ip address 192.168.0.22/31
   ip ospf network point-to-point
   ip ospf area 0.0.0.0
!
interface Ethernet7
   description P2P_LINK_TO_C-LEAF7_Ethernet2
   no shutdown
   mtu 1500
   no switchport
   ip address 192.168.0.26/31
   ip ospf network point-to-point
   ip ospf area 0.0.0.0
!
interface Ethernet8
   description P2P_LINK_TO_C-LEAF8_Ethernet2
   no shutdown
   mtu 1500
   no switchport
   ip address 192.168.0.30/31
   ip ospf network point-to-point
   ip ospf area 0.0.0.0
```

### Loopback Interfaces

#### Loopback Interfaces Summary

##### IPv4

| Interface | Description | VRF | IP Address |
| --------- | ----------- | --- | ---------- |
| Loopback0 | EVPN_Overlay_Peering | default | 10.0.0.132/32 |

##### IPv6

| Interface | Description | VRF | IPv6 Address |
| --------- | ----------- | --- | ------------ |
| Loopback0 | EVPN_Overlay_Peering | default | - |


#### Loopback Interfaces Device Configuration

```eos
!
interface Loopback0
   description EVPN_Overlay_Peering
   no shutdown
   ip address 10.0.0.132/32
   ip ospf area 0.0.0.0
```

## Routing

### Service Routing Protocols Model

Multi agent routing protocol model enabled

```eos
!
service routing protocols model multi-agent
```

### IP Routing

#### IP Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | True |

#### IP Routing Device Configuration

```eos
!
ip routing
```

### IPv6 Routing

#### IPv6 Routing Summary

| VRF | Routing Enabled |
| --- | --------------- |
| default | False |
| default | false |

### ARP

Global ARP timeout: 1500

### Router OSPF

#### Router OSPF Summary

| Process ID | Router ID | Default Passive Interface | No Passive Interface | BFD | Max LSA | Default Information Originate | Log Adjacency Changes Detail | Auto Cost Reference Bandwidth | Maximum Paths | MPLS LDP Sync Default | Distribute List In |
| ---------- | --------- | ------------------------- | -------------------- | --- | ------- | ----------------------------- | ---------------------------- | ----------------------------- | ------------- | --------------------- | ------------------ |
| 100 | 10.0.0.132 | enabled | Ethernet1 <br> Ethernet2 <br> Ethernet3 <br> Ethernet4 <br> Ethernet5 <br> Ethernet6 <br> Ethernet7 <br> Ethernet8 <br> | disabled | 12000 | disabled | disabled | - | - | - | - |

#### OSPF Interfaces

| Interface | Area | Cost | Point To Point |
| -------- | -------- | -------- | -------- |
| Ethernet1 | 0.0.0.0 | - | True |
| Ethernet2 | 0.0.0.0 | - | True |
| Ethernet3 | 0.0.0.0 | - | True |
| Ethernet4 | 0.0.0.0 | - | True |
| Ethernet5 | 0.0.0.0 | - | True |
| Ethernet6 | 0.0.0.0 | - | True |
| Ethernet7 | 0.0.0.0 | - | True |
| Ethernet8 | 0.0.0.0 | - | True |
| Loopback0 | 0.0.0.0 | - | - |

#### Router OSPF Device Configuration

```eos
!
router ospf 100
   router-id 10.0.0.132
   passive-interface default
   no passive-interface Ethernet1
   no passive-interface Ethernet2
   no passive-interface Ethernet3
   no passive-interface Ethernet4
   no passive-interface Ethernet5
   no passive-interface Ethernet6
   no passive-interface Ethernet7
   no passive-interface Ethernet8
   max-lsa 12000
```

### Router BGP

#### Router BGP Summary

| BGP AS | Router ID |
| ------ | --------- |
| 65300 | 10.0.0.132 |

| BGP Tuning |
| ---------- |
| graceful-restart restart-time 300 |
| graceful-restart |
| no bgp default ipv4-unicast |
| distance bgp 20 200 200 |
| maximum-paths 4 ecmp 4 |

#### Router BGP Listen Ranges

| Prefix | Peer-ID Include Router ID | Peer Group | Peer-Filter | Remote-AS | VRF |
| ------ | ------------------------- | ---------- | ----------- | --------- | --- |
| 10.0.0.0/24 | - | EVPN-OVERLAY-PEERS | LEAF-AS-RANGE | - | default |

#### Router BGP Peer Groups

##### LOCAL-EVPN-PEERS

| Settings | Value |
| -------- | ----- |
| Address Family | evpn |
| Next-hop unchanged | True |
| Source | Loopback0 |
| BFD | True |
| Ebgp multihop | 3 |
| Send community | all |
| Maximum routes | 0 (no limit) |

#### BGP Neighbors

| Neighbor | Remote AS | VRF | Shutdown | Send-community | Maximum-routes | Allowas-in | BFD | RIB Pre-Policy Retain | Route-Reflector Client | Passive |
| -------- | --------- | --- | -------- | -------------- | -------------- | ---------- | --- | --------------------- | ---------------------- | ------- |
| 10.0.0.31 | 65312 | default | - | Inherited from peer group LOCAL-EVPN-PEERS | Inherited from peer group LOCAL-EVPN-PEERS | - | Inherited from peer group LOCAL-EVPN-PEERS | - | - | - |
| 10.0.0.32 | 65312 | default | - | Inherited from peer group LOCAL-EVPN-PEERS | Inherited from peer group LOCAL-EVPN-PEERS | - | Inherited from peer group LOCAL-EVPN-PEERS | - | - | - |
| 10.0.0.33 | 65334 | default | - | Inherited from peer group LOCAL-EVPN-PEERS | Inherited from peer group LOCAL-EVPN-PEERS | - | Inherited from peer group LOCAL-EVPN-PEERS | - | - | - |
| 10.0.0.34 | 65334 | default | - | Inherited from peer group LOCAL-EVPN-PEERS | Inherited from peer group LOCAL-EVPN-PEERS | - | Inherited from peer group LOCAL-EVPN-PEERS | - | - | - |
| 10.0.0.35 | 65356 | default | - | Inherited from peer group LOCAL-EVPN-PEERS | Inherited from peer group LOCAL-EVPN-PEERS | - | Inherited from peer group LOCAL-EVPN-PEERS | - | - | - |
| 10.0.0.36 | 65356 | default | - | Inherited from peer group LOCAL-EVPN-PEERS | Inherited from peer group LOCAL-EVPN-PEERS | - | Inherited from peer group LOCAL-EVPN-PEERS | - | - | - |
| 10.0.0.37 | 65378 | default | - | Inherited from peer group LOCAL-EVPN-PEERS | Inherited from peer group LOCAL-EVPN-PEERS | - | Inherited from peer group LOCAL-EVPN-PEERS | - | - | - |
| 10.0.0.38 | 65378 | default | - | Inherited from peer group LOCAL-EVPN-PEERS | Inherited from peer group LOCAL-EVPN-PEERS | - | Inherited from peer group LOCAL-EVPN-PEERS | - | - | - |

#### Router BGP EVPN Address Family

##### EVPN Peer Groups

| Peer Group | Activate | Encapsulation |
| ---------- | -------- | ------------- |
| LOCAL-EVPN-PEERS | True | default |

#### Router BGP Device Configuration

```eos
!
router bgp 65300
   router-id 10.0.0.132
   distance bgp 20 200 200
   graceful-restart restart-time 300
   graceful-restart
   maximum-paths 4 ecmp 4
   no bgp default ipv4-unicast
   bgp listen range 10.0.0.0/24 peer-group EVPN-OVERLAY-PEERS peer-filter LEAF-AS-RANGE
   neighbor LOCAL-EVPN-PEERS peer group
   neighbor LOCAL-EVPN-PEERS next-hop-unchanged
   neighbor LOCAL-EVPN-PEERS update-source Loopback0
   neighbor LOCAL-EVPN-PEERS bfd
   neighbor LOCAL-EVPN-PEERS ebgp-multihop 3
   neighbor LOCAL-EVPN-PEERS send-community
   neighbor LOCAL-EVPN-PEERS maximum-routes 0
   neighbor 10.0.0.31 peer group LOCAL-EVPN-PEERS
   neighbor 10.0.0.31 remote-as 65312
   neighbor 10.0.0.31 description C-LEAF1
   neighbor 10.0.0.32 peer group LOCAL-EVPN-PEERS
   neighbor 10.0.0.32 remote-as 65312
   neighbor 10.0.0.32 description C-LEAF2
   neighbor 10.0.0.33 peer group LOCAL-EVPN-PEERS
   neighbor 10.0.0.33 remote-as 65334
   neighbor 10.0.0.33 description C-LEAF3
   neighbor 10.0.0.34 peer group LOCAL-EVPN-PEERS
   neighbor 10.0.0.34 remote-as 65334
   neighbor 10.0.0.34 description C-LEAF4
   neighbor 10.0.0.35 peer group LOCAL-EVPN-PEERS
   neighbor 10.0.0.35 remote-as 65356
   neighbor 10.0.0.35 description C-LEAF5
   neighbor 10.0.0.36 peer group LOCAL-EVPN-PEERS
   neighbor 10.0.0.36 remote-as 65356
   neighbor 10.0.0.36 description C-LEAF6
   neighbor 10.0.0.37 peer group LOCAL-EVPN-PEERS
   neighbor 10.0.0.37 remote-as 65378
   neighbor 10.0.0.37 description C-LEAF7
   neighbor 10.0.0.38 peer group LOCAL-EVPN-PEERS
   neighbor 10.0.0.38 remote-as 65378
   neighbor 10.0.0.38 description C-LEAF8
   !
   address-family evpn
      neighbor LOCAL-EVPN-PEERS activate
   !
   address-family ipv4
      no neighbor LOCAL-EVPN-PEERS activate
```

## BFD

### Router BFD

#### Router BFD Multihop Summary

| Interval | Minimum RX | Multiplier |
| -------- | ---------- | ---------- |
| 1200 | 1200 | 3 |

#### Router BFD Device Configuration

```eos
!
router bfd
   multihop interval 1200 min-rx 1200 multiplier 3
```

## Filters

### Peer Filters

#### Peer Filters Summary

##### LEAF-AS-RANGE

| Sequence | Match |
| -------- | ----- |
| 10 | as-range 65301-65399 result accept |

#### Peer Filters Device Configuration

```eos
!
peer-filter LEAF-AS-RANGE
   10 match as-range 65301-65399 result accept
```

## VRF Instances

### VRF Instances Summary

| VRF Name | IP Routing |
| -------- | ---------- |

### VRF Instances Device Configuration

```eos
```

## EOS CLI

```eos
!
agent KernelFib environment KERNELFIB_PROGRAM_ALL_ECMP='true'

```
