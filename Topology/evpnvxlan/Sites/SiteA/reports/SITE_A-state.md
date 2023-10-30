# Validate State Report

**Table of Contents:**

- [Validate State Report](validate-state-report)
  - [Test Results Summary](#test-results-summary)
  - [Failed Test Results Summary](#failed-test-results-summary)
  - [All Test Results](#all-test-results)

## Test Results Summary

### Summary Totals

| Total Tests | Total Tests Passed | Total Tests Failed |
| ----------- | ------------------ | ------------------ |
| 728 | 728 | 0 |

### Summary Totals Devices Under Tests

| DUT | Total Tests | Tests Passed | Tests Failed | Categories Failed |
| --- | ----------- | ------------ | ------------ | ----------------- |
| A-LEAF1 |  69 | 69 | 0 | - |
| A-LEAF2 |  69 | 69 | 0 | - |
| A-LEAF3 |  70 | 70 | 0 | - |
| A-LEAF4 |  70 | 70 | 0 | - |
| A-LEAF5 |  66 | 66 | 0 | - |
| A-LEAF6 |  66 | 66 | 0 | - |
| A-LEAF7 |  73 | 73 | 0 | - |
| A-LEAF8 |  73 | 73 | 0 | - |
| A-SPINE1 |  43 | 43 | 0 | - |
| A-SPINE2 |  43 | 43 | 0 | - |
| A-SPINE3 |  43 | 43 | 0 | - |
| A-SPINE4 |  43 | 43 | 0 | - |

### Summary Totals Per Category

| Test Category | Total Tests | Tests Passed | Tests Failed |
| ------------- | ----------- | ------------ | ------------ |
| NTP |  12 | 12 | 0 |
| Interface State |  184 | 184 | 0 |
| LLDP Topology |  80 | 80 | 0 |
| MLAG |  8 | 8 | 0 |
| IP Reachability |  64 | 64 | 0 |
| BGP |  156 | 156 | 0 |
| Routing Table |  128 | 128 | 0 |
| Loopback0 Reachability |  96 | 96 | 0 |

## Failed Test Results Summary

| Test ID | Node | Test Category | Test Description | Test | Test Result | Failure Reason |
| ------- | ---- | ------------- | ---------------- | ---- | ----------- | -------------- |

## All Test Results

| Test ID | Node | Test Category | Test Description | Test | Test Result | Failure Reason |
| ------- | ---- | ------------- | ---------------- | ---- | ----------- | -------------- |
| 1 | A-LEAF1 | NTP | Synchronised with NTP server | NTP | PASS | - |
| 2 | A-LEAF2 | NTP | Synchronised with NTP server | NTP | PASS | - |
| 3 | A-LEAF3 | NTP | Synchronised with NTP server | NTP | PASS | - |
| 4 | A-LEAF4 | NTP | Synchronised with NTP server | NTP | PASS | - |
| 5 | A-LEAF5 | NTP | Synchronised with NTP server | NTP | PASS | - |
| 6 | A-LEAF6 | NTP | Synchronised with NTP server | NTP | PASS | - |
| 7 | A-LEAF7 | NTP | Synchronised with NTP server | NTP | PASS | - |
| 8 | A-LEAF8 | NTP | Synchronised with NTP server | NTP | PASS | - |
| 9 | A-SPINE1 | NTP | Synchronised with NTP server | NTP | PASS | - |
| 10 | A-SPINE2 | NTP | Synchronised with NTP server | NTP | PASS | - |
| 11 | A-SPINE3 | NTP | Synchronised with NTP server | NTP | PASS | - |
| 12 | A-SPINE4 | NTP | Synchronised with NTP server | NTP | PASS | - |
| 13 | A-LEAF1 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet5 - MLAG_PEER_A-LEAF2_Ethernet5 | PASS | - |
| 14 | A-LEAF1 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet6 - MLAG_PEER_A-LEAF2_Ethernet6 | PASS | - |
| 15 | A-LEAF1 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_A-SPINE1_Ethernet1 | PASS | - |
| 16 | A-LEAF1 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_A-SPINE2_Ethernet1 | PASS | - |
| 17 | A-LEAF1 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_A-SPINE3_Ethernet1 | PASS | - |
| 18 | A-LEAF1 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_A-SPINE4_Ethernet1 | PASS | - |
| 19 | A-LEAF1 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet7 - HostA_NIC1 | PASS | - |
| 20 | A-LEAF1 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet8 - HostB_NIC1 | PASS | - |
| 21 | A-LEAF2 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet5 - MLAG_PEER_A-LEAF1_Ethernet5 | PASS | - |
| 22 | A-LEAF2 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet6 - MLAG_PEER_A-LEAF1_Ethernet6 | PASS | - |
| 23 | A-LEAF2 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_A-SPINE1_Ethernet2 | PASS | - |
| 24 | A-LEAF2 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_A-SPINE2_Ethernet2 | PASS | - |
| 25 | A-LEAF2 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_A-SPINE3_Ethernet2 | PASS | - |
| 26 | A-LEAF2 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_A-SPINE4_Ethernet2 | PASS | - |
| 27 | A-LEAF2 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet7 - HostA_NIC2 | PASS | - |
| 28 | A-LEAF2 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet8 - HostB_NIC2 | PASS | - |
| 29 | A-LEAF3 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet5 - MLAG_PEER_A-LEAF4_Ethernet5 | PASS | - |
| 30 | A-LEAF3 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet6 - MLAG_PEER_A-LEAF4_Ethernet6 | PASS | - |
| 31 | A-LEAF3 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_A-SPINE1_Ethernet3 | PASS | - |
| 32 | A-LEAF3 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_A-SPINE2_Ethernet3 | PASS | - |
| 33 | A-LEAF3 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_A-SPINE3_Ethernet3 | PASS | - |
| 34 | A-LEAF3 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_A-SPINE4_Ethernet3 | PASS | - |
| 35 | A-LEAF3 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet7 - HostC_NIC1 | PASS | - |
| 36 | A-LEAF3 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet8 - HostD_NIC1 | PASS | - |
| 37 | A-LEAF4 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet5 - MLAG_PEER_A-LEAF3_Ethernet5 | PASS | - |
| 38 | A-LEAF4 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet6 - MLAG_PEER_A-LEAF3_Ethernet6 | PASS | - |
| 39 | A-LEAF4 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_A-SPINE1_Ethernet4 | PASS | - |
| 40 | A-LEAF4 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_A-SPINE2_Ethernet4 | PASS | - |
| 41 | A-LEAF4 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_A-SPINE3_Ethernet4 | PASS | - |
| 42 | A-LEAF4 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_A-SPINE4_Ethernet4 | PASS | - |
| 43 | A-LEAF4 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet8 - HostD_NIC2 | PASS | - |
| 44 | A-LEAF4 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet7 - HostE_NIC1 | PASS | - |
| 45 | A-LEAF5 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet5 - MLAG_PEER_A-LEAF6_Ethernet5 | PASS | - |
| 46 | A-LEAF5 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet6 - MLAG_PEER_A-LEAF6_Ethernet6 | PASS | - |
| 47 | A-LEAF5 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_A-SPINE1_Ethernet5 | PASS | - |
| 48 | A-LEAF5 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_A-SPINE2_Ethernet5 | PASS | - |
| 49 | A-LEAF5 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_A-SPINE3_Ethernet5 | PASS | - |
| 50 | A-LEAF5 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_A-SPINE4_Ethernet5 | PASS | - |
| 51 | A-LEAF5 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet7 - HostF_NIC1 | PASS | - |
| 52 | A-LEAF6 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet5 - MLAG_PEER_A-LEAF5_Ethernet5 | PASS | - |
| 53 | A-LEAF6 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet6 - MLAG_PEER_A-LEAF5_Ethernet6 | PASS | - |
| 54 | A-LEAF6 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_A-SPINE1_Ethernet6 | PASS | - |
| 55 | A-LEAF6 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_A-SPINE2_Ethernet6 | PASS | - |
| 56 | A-LEAF6 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_A-SPINE3_Ethernet6 | PASS | - |
| 57 | A-LEAF6 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_A-SPINE4_Ethernet6 | PASS | - |
| 58 | A-LEAF6 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet7 - HostF_NIC2 | PASS | - |
| 59 | A-LEAF7 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet5 - MLAG_PEER_A-LEAF8_Ethernet5 | PASS | - |
| 60 | A-LEAF7 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet6 - MLAG_PEER_A-LEAF8_Ethernet6 | PASS | - |
| 61 | A-LEAF7 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_A-SPINE1_Ethernet7 | PASS | - |
| 62 | A-LEAF7 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_A-SPINE2_Ethernet7 | PASS | - |
| 63 | A-LEAF7 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_A-SPINE3_Ethernet7 | PASS | - |
| 64 | A-LEAF7 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_A-SPINE4_Ethernet7 | PASS | - |
| 65 | A-LEAF7 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet7 - P2P_LINK_TO_BB1_Ethernet1 | PASS | - |
| 66 | A-LEAF7 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet8 - P2P_LINK_TO_BB2_Ethernet1 | PASS | - |
| 67 | A-LEAF8 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet5 - MLAG_PEER_A-LEAF7_Ethernet5 | PASS | - |
| 68 | A-LEAF8 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet6 - MLAG_PEER_A-LEAF7_Ethernet6 | PASS | - |
| 69 | A-LEAF8 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_A-SPINE1_Ethernet8 | PASS | - |
| 70 | A-LEAF8 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_A-SPINE2_Ethernet8 | PASS | - |
| 71 | A-LEAF8 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_A-SPINE3_Ethernet8 | PASS | - |
| 72 | A-LEAF8 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_A-SPINE4_Ethernet8 | PASS | - |
| 73 | A-LEAF8 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet7 - P2P_LINK_TO_BB1_Ethernet2 | PASS | - |
| 74 | A-LEAF8 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet8 - P2P_LINK_TO_BB2_Ethernet2 | PASS | - |
| 75 | A-SPINE1 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_A-LEAF1_Ethernet1 | PASS | - |
| 76 | A-SPINE1 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_A-LEAF2_Ethernet1 | PASS | - |
| 77 | A-SPINE1 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_A-LEAF3_Ethernet1 | PASS | - |
| 78 | A-SPINE1 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_A-LEAF4_Ethernet1 | PASS | - |
| 79 | A-SPINE1 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet5 - P2P_LINK_TO_A-LEAF5_Ethernet1 | PASS | - |
| 80 | A-SPINE1 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet6 - P2P_LINK_TO_A-LEAF6_Ethernet1 | PASS | - |
| 81 | A-SPINE1 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet7 - P2P_LINK_TO_A-LEAF7_Ethernet1 | PASS | - |
| 82 | A-SPINE1 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet8 - P2P_LINK_TO_A-LEAF8_Ethernet1 | PASS | - |
| 83 | A-SPINE2 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_A-LEAF1_Ethernet2 | PASS | - |
| 84 | A-SPINE2 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_A-LEAF2_Ethernet2 | PASS | - |
| 85 | A-SPINE2 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_A-LEAF3_Ethernet2 | PASS | - |
| 86 | A-SPINE2 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_A-LEAF4_Ethernet2 | PASS | - |
| 87 | A-SPINE2 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet5 - P2P_LINK_TO_A-LEAF5_Ethernet2 | PASS | - |
| 88 | A-SPINE2 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet6 - P2P_LINK_TO_A-LEAF6_Ethernet2 | PASS | - |
| 89 | A-SPINE2 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet7 - P2P_LINK_TO_A-LEAF7_Ethernet2 | PASS | - |
| 90 | A-SPINE2 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet8 - P2P_LINK_TO_A-LEAF8_Ethernet2 | PASS | - |
| 91 | A-SPINE3 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_A-LEAF1_Ethernet3 | PASS | - |
| 92 | A-SPINE3 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_A-LEAF2_Ethernet3 | PASS | - |
| 93 | A-SPINE3 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_A-LEAF3_Ethernet3 | PASS | - |
| 94 | A-SPINE3 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_A-LEAF4_Ethernet3 | PASS | - |
| 95 | A-SPINE3 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet5 - P2P_LINK_TO_A-LEAF5_Ethernet3 | PASS | - |
| 96 | A-SPINE3 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet6 - P2P_LINK_TO_A-LEAF6_Ethernet3 | PASS | - |
| 97 | A-SPINE3 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet7 - P2P_LINK_TO_A-LEAF7_Ethernet3 | PASS | - |
| 98 | A-SPINE3 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet8 - P2P_LINK_TO_A-LEAF8_Ethernet3 | PASS | - |
| 99 | A-SPINE4 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet1 - P2P_LINK_TO_A-LEAF1_Ethernet4 | PASS | - |
| 100 | A-SPINE4 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet2 - P2P_LINK_TO_A-LEAF2_Ethernet4 | PASS | - |
| 101 | A-SPINE4 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet3 - P2P_LINK_TO_A-LEAF3_Ethernet4 | PASS | - |
| 102 | A-SPINE4 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet4 - P2P_LINK_TO_A-LEAF4_Ethernet4 | PASS | - |
| 103 | A-SPINE4 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet5 - P2P_LINK_TO_A-LEAF5_Ethernet4 | PASS | - |
| 104 | A-SPINE4 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet6 - P2P_LINK_TO_A-LEAF6_Ethernet4 | PASS | - |
| 105 | A-SPINE4 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet7 - P2P_LINK_TO_A-LEAF7_Ethernet4 | PASS | - |
| 106 | A-SPINE4 | Interface State | Ethernet Interface & Line Protocol == "up" | Ethernet8 - P2P_LINK_TO_A-LEAF8_Ethernet4 | PASS | - |
| 107 | A-LEAF1 | Interface State | Port-Channel Interface & Line Protocol == "up" | Port-Channel1000 - MLAG_PEER_A-LEAF2_Po1000 | PASS | - |
| 108 | A-LEAF1 | Interface State | Port-Channel Interface & Line Protocol == "up" | Port-Channel7 - HostA | PASS | - |
| 109 | A-LEAF1 | Interface State | Port-Channel Interface & Line Protocol == "up" | Port-Channel8 - HostB | PASS | - |
| 110 | A-LEAF2 | Interface State | Port-Channel Interface & Line Protocol == "up" | Port-Channel1000 - MLAG_PEER_A-LEAF1_Po1000 | PASS | - |
| 111 | A-LEAF2 | Interface State | Port-Channel Interface & Line Protocol == "up" | Port-Channel7 - HostA | PASS | - |
| 112 | A-LEAF2 | Interface State | Port-Channel Interface & Line Protocol == "up" | Port-Channel8 - HostB | PASS | - |
| 113 | A-LEAF3 | Interface State | Port-Channel Interface & Line Protocol == "up" | Port-Channel1000 - MLAG_PEER_A-LEAF4_Po1000 | PASS | - |
| 114 | A-LEAF3 | Interface State | Port-Channel Interface & Line Protocol == "up" | Port-Channel8 - HostD | PASS | - |
| 115 | A-LEAF4 | Interface State | Port-Channel Interface & Line Protocol == "up" | Port-Channel1000 - MLAG_PEER_A-LEAF3_Po1000 | PASS | - |
| 116 | A-LEAF4 | Interface State | Port-Channel Interface & Line Protocol == "up" | Port-Channel8 - HostD | PASS | - |
| 117 | A-LEAF5 | Interface State | Port-Channel Interface & Line Protocol == "up" | Port-Channel1000 - MLAG_PEER_A-LEAF6_Po1000 | PASS | - |
| 118 | A-LEAF5 | Interface State | Port-Channel Interface & Line Protocol == "up" | Port-Channel7 - HostF | PASS | - |
| 119 | A-LEAF6 | Interface State | Port-Channel Interface & Line Protocol == "up" | Port-Channel1000 - MLAG_PEER_A-LEAF5_Po1000 | PASS | - |
| 120 | A-LEAF6 | Interface State | Port-Channel Interface & Line Protocol == "up" | Port-Channel7 - HostF | PASS | - |
| 121 | A-LEAF7 | Interface State | Port-Channel Interface & Line Protocol == "up" | Port-Channel1000 - MLAG_PEER_A-LEAF8_Po1000 | PASS | - |
| 122 | A-LEAF8 | Interface State | Port-Channel Interface & Line Protocol == "up" | Port-Channel1000 - MLAG_PEER_A-LEAF7_Po1000 | PASS | - |
| 123 | A-LEAF1 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS | - |
| 124 | A-LEAF1 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS | - |
| 125 | A-LEAF1 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan10 - Blue | PASS | - |
| 126 | A-LEAF1 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan30 - Orange | PASS | - |
| 127 | A-LEAF1 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan3001 - MLAG_PEER_L3_iBGP: vrf PROD | PASS | - |
| 128 | A-LEAF2 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS | - |
| 129 | A-LEAF2 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS | - |
| 130 | A-LEAF2 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan10 - Blue | PASS | - |
| 131 | A-LEAF2 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan30 - Orange | PASS | - |
| 132 | A-LEAF2 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan3001 - MLAG_PEER_L3_iBGP: vrf PROD | PASS | - |
| 133 | A-LEAF3 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS | - |
| 134 | A-LEAF3 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS | - |
| 135 | A-LEAF3 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan50 - Yellow | PASS | - |
| 136 | A-LEAF3 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan3002 - MLAG_PEER_L3_iBGP: vrf DEV | PASS | - |
| 137 | A-LEAF3 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan10 - Blue | PASS | - |
| 138 | A-LEAF3 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan30 - Orange | PASS | - |
| 139 | A-LEAF3 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan3001 - MLAG_PEER_L3_iBGP: vrf PROD | PASS | - |
| 140 | A-LEAF4 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS | - |
| 141 | A-LEAF4 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS | - |
| 142 | A-LEAF4 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan50 - Yellow | PASS | - |
| 143 | A-LEAF4 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan3002 - MLAG_PEER_L3_iBGP: vrf DEV | PASS | - |
| 144 | A-LEAF4 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan10 - Blue | PASS | - |
| 145 | A-LEAF4 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan30 - Orange | PASS | - |
| 146 | A-LEAF4 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan3001 - MLAG_PEER_L3_iBGP: vrf PROD | PASS | - |
| 147 | A-LEAF5 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS | - |
| 148 | A-LEAF5 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS | - |
| 149 | A-LEAF5 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan70 - Brown | PASS | - |
| 150 | A-LEAF5 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan3002 - MLAG_PEER_L3_iBGP: vrf DEV | PASS | - |
| 151 | A-LEAF6 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS | - |
| 152 | A-LEAF6 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS | - |
| 153 | A-LEAF6 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan70 - Brown | PASS | - |
| 154 | A-LEAF6 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan3002 - MLAG_PEER_L3_iBGP: vrf DEV | PASS | - |
| 155 | A-LEAF7 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS | - |
| 156 | A-LEAF7 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS | - |
| 157 | A-LEAF7 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan50 - Yellow | PASS | - |
| 158 | A-LEAF7 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan70 - Brown | PASS | - |
| 159 | A-LEAF7 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan3002 - MLAG_PEER_L3_iBGP: vrf DEV | PASS | - |
| 160 | A-LEAF7 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan10 - Blue | PASS | - |
| 161 | A-LEAF7 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan3001 - MLAG_PEER_L3_iBGP: vrf PROD | PASS | - |
| 162 | A-LEAF8 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan4093 - MLAG_PEER_L3_PEERING | PASS | - |
| 163 | A-LEAF8 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan4094 - MLAG_PEER | PASS | - |
| 164 | A-LEAF8 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan50 - Yellow | PASS | - |
| 165 | A-LEAF8 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan70 - Brown | PASS | - |
| 166 | A-LEAF8 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan3002 - MLAG_PEER_L3_iBGP: vrf DEV | PASS | - |
| 167 | A-LEAF8 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan10 - Blue | PASS | - |
| 168 | A-LEAF8 | Interface State | Vlan Interface & Line Protocol == "up" | Vlan3001 - MLAG_PEER_L3_iBGP: vrf PROD | PASS | - |
| 169 | A-LEAF1 | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS | - |
| 170 | A-LEAF2 | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS | - |
| 171 | A-LEAF3 | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS | - |
| 172 | A-LEAF4 | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS | - |
| 173 | A-LEAF5 | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS | - |
| 174 | A-LEAF6 | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS | - |
| 175 | A-LEAF7 | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS | - |
| 176 | A-LEAF8 | Interface State | Vxlan Interface Status & Line Protocol == "up" | Vxlan1 | PASS | - |
| 177 | A-LEAF1 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS | - |
| 178 | A-LEAF1 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS | - |
| 179 | A-LEAF2 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS | - |
| 180 | A-LEAF2 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS | - |
| 181 | A-LEAF3 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS | - |
| 182 | A-LEAF3 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS | - |
| 183 | A-LEAF4 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS | - |
| 184 | A-LEAF4 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS | - |
| 185 | A-LEAF5 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS | - |
| 186 | A-LEAF5 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS | - |
| 187 | A-LEAF6 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS | - |
| 188 | A-LEAF6 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS | - |
| 189 | A-LEAF7 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS | - |
| 190 | A-LEAF7 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS | - |
| 191 | A-LEAF8 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS | - |
| 192 | A-LEAF8 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback1 - VTEP_VXLAN_Tunnel_Source | PASS | - |
| 193 | A-SPINE1 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS | - |
| 194 | A-SPINE2 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS | - |
| 195 | A-SPINE3 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS | - |
| 196 | A-SPINE4 | Interface State | Loopback Interface Status & Line Protocol == "up" | Loopback0 - EVPN_Overlay_Peering | PASS | - |
| 197 | A-LEAF1 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet5 - remote: A-LEAF2_Ethernet5 | PASS | - |
| 198 | A-LEAF1 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet6 - remote: A-LEAF2_Ethernet6 | PASS | - |
| 199 | A-LEAF1 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet1 - remote: A-SPINE1_Ethernet1 | PASS | - |
| 200 | A-LEAF1 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet2 - remote: A-SPINE2_Ethernet1 | PASS | - |
| 201 | A-LEAF1 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet3 - remote: A-SPINE3_Ethernet1 | PASS | - |
| 202 | A-LEAF1 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet4 - remote: A-SPINE4_Ethernet1 | PASS | - |
| 203 | A-LEAF2 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet5 - remote: A-LEAF1_Ethernet5 | PASS | - |
| 204 | A-LEAF2 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet6 - remote: A-LEAF1_Ethernet6 | PASS | - |
| 205 | A-LEAF2 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet1 - remote: A-SPINE1_Ethernet2 | PASS | - |
| 206 | A-LEAF2 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet2 - remote: A-SPINE2_Ethernet2 | PASS | - |
| 207 | A-LEAF2 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet3 - remote: A-SPINE3_Ethernet2 | PASS | - |
| 208 | A-LEAF2 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet4 - remote: A-SPINE4_Ethernet2 | PASS | - |
| 209 | A-LEAF3 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet5 - remote: A-LEAF4_Ethernet5 | PASS | - |
| 210 | A-LEAF3 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet6 - remote: A-LEAF4_Ethernet6 | PASS | - |
| 211 | A-LEAF3 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet1 - remote: A-SPINE1_Ethernet3 | PASS | - |
| 212 | A-LEAF3 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet2 - remote: A-SPINE2_Ethernet3 | PASS | - |
| 213 | A-LEAF3 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet3 - remote: A-SPINE3_Ethernet3 | PASS | - |
| 214 | A-LEAF3 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet4 - remote: A-SPINE4_Ethernet3 | PASS | - |
| 215 | A-LEAF4 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet5 - remote: A-LEAF3_Ethernet5 | PASS | - |
| 216 | A-LEAF4 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet6 - remote: A-LEAF3_Ethernet6 | PASS | - |
| 217 | A-LEAF4 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet1 - remote: A-SPINE1_Ethernet4 | PASS | - |
| 218 | A-LEAF4 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet2 - remote: A-SPINE2_Ethernet4 | PASS | - |
| 219 | A-LEAF4 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet3 - remote: A-SPINE3_Ethernet4 | PASS | - |
| 220 | A-LEAF4 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet4 - remote: A-SPINE4_Ethernet4 | PASS | - |
| 221 | A-LEAF5 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet5 - remote: A-LEAF6_Ethernet5 | PASS | - |
| 222 | A-LEAF5 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet6 - remote: A-LEAF6_Ethernet6 | PASS | - |
| 223 | A-LEAF5 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet1 - remote: A-SPINE1_Ethernet5 | PASS | - |
| 224 | A-LEAF5 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet2 - remote: A-SPINE2_Ethernet5 | PASS | - |
| 225 | A-LEAF5 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet3 - remote: A-SPINE3_Ethernet5 | PASS | - |
| 226 | A-LEAF5 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet4 - remote: A-SPINE4_Ethernet5 | PASS | - |
| 227 | A-LEAF6 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet5 - remote: A-LEAF5_Ethernet5 | PASS | - |
| 228 | A-LEAF6 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet6 - remote: A-LEAF5_Ethernet6 | PASS | - |
| 229 | A-LEAF6 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet1 - remote: A-SPINE1_Ethernet6 | PASS | - |
| 230 | A-LEAF6 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet2 - remote: A-SPINE2_Ethernet6 | PASS | - |
| 231 | A-LEAF6 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet3 - remote: A-SPINE3_Ethernet6 | PASS | - |
| 232 | A-LEAF6 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet4 - remote: A-SPINE4_Ethernet6 | PASS | - |
| 233 | A-LEAF7 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet5 - remote: A-LEAF8_Ethernet5 | PASS | - |
| 234 | A-LEAF7 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet6 - remote: A-LEAF8_Ethernet6 | PASS | - |
| 235 | A-LEAF7 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet1 - remote: A-SPINE1_Ethernet7 | PASS | - |
| 236 | A-LEAF7 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet2 - remote: A-SPINE2_Ethernet7 | PASS | - |
| 237 | A-LEAF7 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet3 - remote: A-SPINE3_Ethernet7 | PASS | - |
| 238 | A-LEAF7 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet4 - remote: A-SPINE4_Ethernet7 | PASS | - |
| 239 | A-LEAF8 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet5 - remote: A-LEAF7_Ethernet5 | PASS | - |
| 240 | A-LEAF8 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet6 - remote: A-LEAF7_Ethernet6 | PASS | - |
| 241 | A-LEAF8 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet1 - remote: A-SPINE1_Ethernet8 | PASS | - |
| 242 | A-LEAF8 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet2 - remote: A-SPINE2_Ethernet8 | PASS | - |
| 243 | A-LEAF8 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet3 - remote: A-SPINE3_Ethernet8 | PASS | - |
| 244 | A-LEAF8 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet4 - remote: A-SPINE4_Ethernet8 | PASS | - |
| 245 | A-SPINE1 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet1 - remote: A-LEAF1_Ethernet1 | PASS | - |
| 246 | A-SPINE1 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet2 - remote: A-LEAF2_Ethernet1 | PASS | - |
| 247 | A-SPINE1 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet3 - remote: A-LEAF3_Ethernet1 | PASS | - |
| 248 | A-SPINE1 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet4 - remote: A-LEAF4_Ethernet1 | PASS | - |
| 249 | A-SPINE1 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet5 - remote: A-LEAF5_Ethernet1 | PASS | - |
| 250 | A-SPINE1 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet6 - remote: A-LEAF6_Ethernet1 | PASS | - |
| 251 | A-SPINE1 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet7 - remote: A-LEAF7_Ethernet1 | PASS | - |
| 252 | A-SPINE1 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet8 - remote: A-LEAF8_Ethernet1 | PASS | - |
| 253 | A-SPINE2 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet1 - remote: A-LEAF1_Ethernet2 | PASS | - |
| 254 | A-SPINE2 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet2 - remote: A-LEAF2_Ethernet2 | PASS | - |
| 255 | A-SPINE2 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet3 - remote: A-LEAF3_Ethernet2 | PASS | - |
| 256 | A-SPINE2 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet4 - remote: A-LEAF4_Ethernet2 | PASS | - |
| 257 | A-SPINE2 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet5 - remote: A-LEAF5_Ethernet2 | PASS | - |
| 258 | A-SPINE2 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet6 - remote: A-LEAF6_Ethernet2 | PASS | - |
| 259 | A-SPINE2 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet7 - remote: A-LEAF7_Ethernet2 | PASS | - |
| 260 | A-SPINE2 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet8 - remote: A-LEAF8_Ethernet2 | PASS | - |
| 261 | A-SPINE3 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet1 - remote: A-LEAF1_Ethernet3 | PASS | - |
| 262 | A-SPINE3 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet2 - remote: A-LEAF2_Ethernet3 | PASS | - |
| 263 | A-SPINE3 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet3 - remote: A-LEAF3_Ethernet3 | PASS | - |
| 264 | A-SPINE3 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet4 - remote: A-LEAF4_Ethernet3 | PASS | - |
| 265 | A-SPINE3 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet5 - remote: A-LEAF5_Ethernet3 | PASS | - |
| 266 | A-SPINE3 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet6 - remote: A-LEAF6_Ethernet3 | PASS | - |
| 267 | A-SPINE3 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet7 - remote: A-LEAF7_Ethernet3 | PASS | - |
| 268 | A-SPINE3 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet8 - remote: A-LEAF8_Ethernet3 | PASS | - |
| 269 | A-SPINE4 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet1 - remote: A-LEAF1_Ethernet4 | PASS | - |
| 270 | A-SPINE4 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet2 - remote: A-LEAF2_Ethernet4 | PASS | - |
| 271 | A-SPINE4 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet3 - remote: A-LEAF3_Ethernet4 | PASS | - |
| 272 | A-SPINE4 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet4 - remote: A-LEAF4_Ethernet4 | PASS | - |
| 273 | A-SPINE4 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet5 - remote: A-LEAF5_Ethernet4 | PASS | - |
| 274 | A-SPINE4 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet6 - remote: A-LEAF6_Ethernet4 | PASS | - |
| 275 | A-SPINE4 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet7 - remote: A-LEAF7_Ethernet4 | PASS | - |
| 276 | A-SPINE4 | LLDP Topology | LLDP topology - validate peer and interface | local: Ethernet8 - remote: A-LEAF8_Ethernet4 | PASS | - |
| 277 | A-LEAF1 | MLAG | MLAG State active & Status connected | MLAG | PASS | - |
| 278 | A-LEAF2 | MLAG | MLAG State active & Status connected | MLAG | PASS | - |
| 279 | A-LEAF3 | MLAG | MLAG State active & Status connected | MLAG | PASS | - |
| 280 | A-LEAF4 | MLAG | MLAG State active & Status connected | MLAG | PASS | - |
| 281 | A-LEAF5 | MLAG | MLAG State active & Status connected | MLAG | PASS | - |
| 282 | A-LEAF6 | MLAG | MLAG State active & Status connected | MLAG | PASS | - |
| 283 | A-LEAF7 | MLAG | MLAG State active & Status connected | MLAG | PASS | - |
| 284 | A-LEAF8 | MLAG | MLAG State active & Status connected | MLAG | PASS | - |
| 285 | A-LEAF1 | IP Reachability | ip reachability test p2p links | Source: A-LEAF1_Ethernet1 - Destination: A-SPINE1_Ethernet1 | PASS | - |
| 286 | A-LEAF1 | IP Reachability | ip reachability test p2p links | Source: A-LEAF1_Ethernet2 - Destination: A-SPINE2_Ethernet1 | PASS | - |
| 287 | A-LEAF1 | IP Reachability | ip reachability test p2p links | Source: A-LEAF1_Ethernet3 - Destination: A-SPINE3_Ethernet1 | PASS | - |
| 288 | A-LEAF1 | IP Reachability | ip reachability test p2p links | Source: A-LEAF1_Ethernet4 - Destination: A-SPINE4_Ethernet1 | PASS | - |
| 289 | A-LEAF2 | IP Reachability | ip reachability test p2p links | Source: A-LEAF2_Ethernet1 - Destination: A-SPINE1_Ethernet2 | PASS | - |
| 290 | A-LEAF2 | IP Reachability | ip reachability test p2p links | Source: A-LEAF2_Ethernet2 - Destination: A-SPINE2_Ethernet2 | PASS | - |
| 291 | A-LEAF2 | IP Reachability | ip reachability test p2p links | Source: A-LEAF2_Ethernet3 - Destination: A-SPINE3_Ethernet2 | PASS | - |
| 292 | A-LEAF2 | IP Reachability | ip reachability test p2p links | Source: A-LEAF2_Ethernet4 - Destination: A-SPINE4_Ethernet2 | PASS | - |
| 293 | A-LEAF3 | IP Reachability | ip reachability test p2p links | Source: A-LEAF3_Ethernet1 - Destination: A-SPINE1_Ethernet3 | PASS | - |
| 294 | A-LEAF3 | IP Reachability | ip reachability test p2p links | Source: A-LEAF3_Ethernet2 - Destination: A-SPINE2_Ethernet3 | PASS | - |
| 295 | A-LEAF3 | IP Reachability | ip reachability test p2p links | Source: A-LEAF3_Ethernet3 - Destination: A-SPINE3_Ethernet3 | PASS | - |
| 296 | A-LEAF3 | IP Reachability | ip reachability test p2p links | Source: A-LEAF3_Ethernet4 - Destination: A-SPINE4_Ethernet3 | PASS | - |
| 297 | A-LEAF4 | IP Reachability | ip reachability test p2p links | Source: A-LEAF4_Ethernet1 - Destination: A-SPINE1_Ethernet4 | PASS | - |
| 298 | A-LEAF4 | IP Reachability | ip reachability test p2p links | Source: A-LEAF4_Ethernet2 - Destination: A-SPINE2_Ethernet4 | PASS | - |
| 299 | A-LEAF4 | IP Reachability | ip reachability test p2p links | Source: A-LEAF4_Ethernet3 - Destination: A-SPINE3_Ethernet4 | PASS | - |
| 300 | A-LEAF4 | IP Reachability | ip reachability test p2p links | Source: A-LEAF4_Ethernet4 - Destination: A-SPINE4_Ethernet4 | PASS | - |
| 301 | A-LEAF5 | IP Reachability | ip reachability test p2p links | Source: A-LEAF5_Ethernet1 - Destination: A-SPINE1_Ethernet5 | PASS | - |
| 302 | A-LEAF5 | IP Reachability | ip reachability test p2p links | Source: A-LEAF5_Ethernet2 - Destination: A-SPINE2_Ethernet5 | PASS | - |
| 303 | A-LEAF5 | IP Reachability | ip reachability test p2p links | Source: A-LEAF5_Ethernet3 - Destination: A-SPINE3_Ethernet5 | PASS | - |
| 304 | A-LEAF5 | IP Reachability | ip reachability test p2p links | Source: A-LEAF5_Ethernet4 - Destination: A-SPINE4_Ethernet5 | PASS | - |
| 305 | A-LEAF6 | IP Reachability | ip reachability test p2p links | Source: A-LEAF6_Ethernet1 - Destination: A-SPINE1_Ethernet6 | PASS | - |
| 306 | A-LEAF6 | IP Reachability | ip reachability test p2p links | Source: A-LEAF6_Ethernet2 - Destination: A-SPINE2_Ethernet6 | PASS | - |
| 307 | A-LEAF6 | IP Reachability | ip reachability test p2p links | Source: A-LEAF6_Ethernet3 - Destination: A-SPINE3_Ethernet6 | PASS | - |
| 308 | A-LEAF6 | IP Reachability | ip reachability test p2p links | Source: A-LEAF6_Ethernet4 - Destination: A-SPINE4_Ethernet6 | PASS | - |
| 309 | A-LEAF7 | IP Reachability | ip reachability test p2p links | Source: A-LEAF7_Ethernet1 - Destination: A-SPINE1_Ethernet7 | PASS | - |
| 310 | A-LEAF7 | IP Reachability | ip reachability test p2p links | Source: A-LEAF7_Ethernet2 - Destination: A-SPINE2_Ethernet7 | PASS | - |
| 311 | A-LEAF7 | IP Reachability | ip reachability test p2p links | Source: A-LEAF7_Ethernet3 - Destination: A-SPINE3_Ethernet7 | PASS | - |
| 312 | A-LEAF7 | IP Reachability | ip reachability test p2p links | Source: A-LEAF7_Ethernet4 - Destination: A-SPINE4_Ethernet7 | PASS | - |
| 313 | A-LEAF8 | IP Reachability | ip reachability test p2p links | Source: A-LEAF8_Ethernet1 - Destination: A-SPINE1_Ethernet8 | PASS | - |
| 314 | A-LEAF8 | IP Reachability | ip reachability test p2p links | Source: A-LEAF8_Ethernet2 - Destination: A-SPINE2_Ethernet8 | PASS | - |
| 315 | A-LEAF8 | IP Reachability | ip reachability test p2p links | Source: A-LEAF8_Ethernet3 - Destination: A-SPINE3_Ethernet8 | PASS | - |
| 316 | A-LEAF8 | IP Reachability | ip reachability test p2p links | Source: A-LEAF8_Ethernet4 - Destination: A-SPINE4_Ethernet8 | PASS | - |
| 317 | A-SPINE1 | IP Reachability | ip reachability test p2p links | Source: A-SPINE1_Ethernet1 - Destination: A-LEAF1_Ethernet1 | PASS | - |
| 318 | A-SPINE1 | IP Reachability | ip reachability test p2p links | Source: A-SPINE1_Ethernet2 - Destination: A-LEAF2_Ethernet1 | PASS | - |
| 319 | A-SPINE1 | IP Reachability | ip reachability test p2p links | Source: A-SPINE1_Ethernet3 - Destination: A-LEAF3_Ethernet1 | PASS | - |
| 320 | A-SPINE1 | IP Reachability | ip reachability test p2p links | Source: A-SPINE1_Ethernet4 - Destination: A-LEAF4_Ethernet1 | PASS | - |
| 321 | A-SPINE1 | IP Reachability | ip reachability test p2p links | Source: A-SPINE1_Ethernet5 - Destination: A-LEAF5_Ethernet1 | PASS | - |
| 322 | A-SPINE1 | IP Reachability | ip reachability test p2p links | Source: A-SPINE1_Ethernet6 - Destination: A-LEAF6_Ethernet1 | PASS | - |
| 323 | A-SPINE1 | IP Reachability | ip reachability test p2p links | Source: A-SPINE1_Ethernet7 - Destination: A-LEAF7_Ethernet1 | PASS | - |
| 324 | A-SPINE1 | IP Reachability | ip reachability test p2p links | Source: A-SPINE1_Ethernet8 - Destination: A-LEAF8_Ethernet1 | PASS | - |
| 325 | A-SPINE2 | IP Reachability | ip reachability test p2p links | Source: A-SPINE2_Ethernet1 - Destination: A-LEAF1_Ethernet2 | PASS | - |
| 326 | A-SPINE2 | IP Reachability | ip reachability test p2p links | Source: A-SPINE2_Ethernet2 - Destination: A-LEAF2_Ethernet2 | PASS | - |
| 327 | A-SPINE2 | IP Reachability | ip reachability test p2p links | Source: A-SPINE2_Ethernet3 - Destination: A-LEAF3_Ethernet2 | PASS | - |
| 328 | A-SPINE2 | IP Reachability | ip reachability test p2p links | Source: A-SPINE2_Ethernet4 - Destination: A-LEAF4_Ethernet2 | PASS | - |
| 329 | A-SPINE2 | IP Reachability | ip reachability test p2p links | Source: A-SPINE2_Ethernet5 - Destination: A-LEAF5_Ethernet2 | PASS | - |
| 330 | A-SPINE2 | IP Reachability | ip reachability test p2p links | Source: A-SPINE2_Ethernet6 - Destination: A-LEAF6_Ethernet2 | PASS | - |
| 331 | A-SPINE2 | IP Reachability | ip reachability test p2p links | Source: A-SPINE2_Ethernet7 - Destination: A-LEAF7_Ethernet2 | PASS | - |
| 332 | A-SPINE2 | IP Reachability | ip reachability test p2p links | Source: A-SPINE2_Ethernet8 - Destination: A-LEAF8_Ethernet2 | PASS | - |
| 333 | A-SPINE3 | IP Reachability | ip reachability test p2p links | Source: A-SPINE3_Ethernet1 - Destination: A-LEAF1_Ethernet3 | PASS | - |
| 334 | A-SPINE3 | IP Reachability | ip reachability test p2p links | Source: A-SPINE3_Ethernet2 - Destination: A-LEAF2_Ethernet3 | PASS | - |
| 335 | A-SPINE3 | IP Reachability | ip reachability test p2p links | Source: A-SPINE3_Ethernet3 - Destination: A-LEAF3_Ethernet3 | PASS | - |
| 336 | A-SPINE3 | IP Reachability | ip reachability test p2p links | Source: A-SPINE3_Ethernet4 - Destination: A-LEAF4_Ethernet3 | PASS | - |
| 337 | A-SPINE3 | IP Reachability | ip reachability test p2p links | Source: A-SPINE3_Ethernet5 - Destination: A-LEAF5_Ethernet3 | PASS | - |
| 338 | A-SPINE3 | IP Reachability | ip reachability test p2p links | Source: A-SPINE3_Ethernet6 - Destination: A-LEAF6_Ethernet3 | PASS | - |
| 339 | A-SPINE3 | IP Reachability | ip reachability test p2p links | Source: A-SPINE3_Ethernet7 - Destination: A-LEAF7_Ethernet3 | PASS | - |
| 340 | A-SPINE3 | IP Reachability | ip reachability test p2p links | Source: A-SPINE3_Ethernet8 - Destination: A-LEAF8_Ethernet3 | PASS | - |
| 341 | A-SPINE4 | IP Reachability | ip reachability test p2p links | Source: A-SPINE4_Ethernet1 - Destination: A-LEAF1_Ethernet4 | PASS | - |
| 342 | A-SPINE4 | IP Reachability | ip reachability test p2p links | Source: A-SPINE4_Ethernet2 - Destination: A-LEAF2_Ethernet4 | PASS | - |
| 343 | A-SPINE4 | IP Reachability | ip reachability test p2p links | Source: A-SPINE4_Ethernet3 - Destination: A-LEAF3_Ethernet4 | PASS | - |
| 344 | A-SPINE4 | IP Reachability | ip reachability test p2p links | Source: A-SPINE4_Ethernet4 - Destination: A-LEAF4_Ethernet4 | PASS | - |
| 345 | A-SPINE4 | IP Reachability | ip reachability test p2p links | Source: A-SPINE4_Ethernet5 - Destination: A-LEAF5_Ethernet4 | PASS | - |
| 346 | A-SPINE4 | IP Reachability | ip reachability test p2p links | Source: A-SPINE4_Ethernet6 - Destination: A-LEAF6_Ethernet4 | PASS | - |
| 347 | A-SPINE4 | IP Reachability | ip reachability test p2p links | Source: A-SPINE4_Ethernet7 - Destination: A-LEAF7_Ethernet4 | PASS | - |
| 348 | A-SPINE4 | IP Reachability | ip reachability test p2p links | Source: A-SPINE4_Ethernet8 - Destination: A-LEAF8_Ethernet4 | PASS | - |
| 349 | A-LEAF1 | BGP | ArBGP is configured and operating | ArBGP | PASS | - |
| 350 | A-LEAF2 | BGP | ArBGP is configured and operating | ArBGP | PASS | - |
| 351 | A-LEAF3 | BGP | ArBGP is configured and operating | ArBGP | PASS | - |
| 352 | A-LEAF4 | BGP | ArBGP is configured and operating | ArBGP | PASS | - |
| 353 | A-LEAF5 | BGP | ArBGP is configured and operating | ArBGP | PASS | - |
| 354 | A-LEAF6 | BGP | ArBGP is configured and operating | ArBGP | PASS | - |
| 355 | A-LEAF7 | BGP | ArBGP is configured and operating | ArBGP | PASS | - |
| 356 | A-LEAF8 | BGP | ArBGP is configured and operating | ArBGP | PASS | - |
| 357 | A-SPINE1 | BGP | ArBGP is configured and operating | ArBGP | PASS | - |
| 358 | A-SPINE2 | BGP | ArBGP is configured and operating | ArBGP | PASS | - |
| 359 | A-SPINE3 | BGP | ArBGP is configured and operating | ArBGP | PASS | - |
| 360 | A-SPINE4 | BGP | ArBGP is configured and operating | ArBGP | PASS | - |
| 361 | A-LEAF1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.0.0.1 | PASS | - |
| 362 | A-LEAF1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.0 | PASS | - |
| 363 | A-LEAF1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.2 | PASS | - |
| 364 | A-LEAF1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.4 | PASS | - |
| 365 | A-LEAF1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.6 | PASS | - |
| 366 | A-LEAF2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.0.0.0 | PASS | - |
| 367 | A-LEAF2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.8 | PASS | - |
| 368 | A-LEAF2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.10 | PASS | - |
| 369 | A-LEAF2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.12 | PASS | - |
| 370 | A-LEAF2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.14 | PASS | - |
| 371 | A-LEAF3 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.0.0.1 | PASS | - |
| 372 | A-LEAF3 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.16 | PASS | - |
| 373 | A-LEAF3 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.18 | PASS | - |
| 374 | A-LEAF3 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.20 | PASS | - |
| 375 | A-LEAF3 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.22 | PASS | - |
| 376 | A-LEAF4 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.0.0.0 | PASS | - |
| 377 | A-LEAF4 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.24 | PASS | - |
| 378 | A-LEAF4 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.26 | PASS | - |
| 379 | A-LEAF4 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.28 | PASS | - |
| 380 | A-LEAF4 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.30 | PASS | - |
| 381 | A-LEAF5 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.0.0.1 | PASS | - |
| 382 | A-LEAF5 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.32 | PASS | - |
| 383 | A-LEAF5 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.34 | PASS | - |
| 384 | A-LEAF5 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.36 | PASS | - |
| 385 | A-LEAF5 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.38 | PASS | - |
| 386 | A-LEAF6 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.0.0.0 | PASS | - |
| 387 | A-LEAF6 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.40 | PASS | - |
| 388 | A-LEAF6 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.42 | PASS | - |
| 389 | A-LEAF6 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.44 | PASS | - |
| 390 | A-LEAF6 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.46 | PASS | - |
| 391 | A-LEAF7 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.0.0.1 | PASS | - |
| 392 | A-LEAF7 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.48 | PASS | - |
| 393 | A-LEAF7 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.50 | PASS | - |
| 394 | A-LEAF7 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.52 | PASS | - |
| 395 | A-LEAF7 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.54 | PASS | - |
| 396 | A-LEAF7 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.16.1.0 | PASS | - |
| 397 | A-LEAF7 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.16.1.4 | PASS | - |
| 398 | A-LEAF8 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.0.0.0 | PASS | - |
| 399 | A-LEAF8 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.56 | PASS | - |
| 400 | A-LEAF8 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.58 | PASS | - |
| 401 | A-LEAF8 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.60 | PASS | - |
| 402 | A-LEAF8 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.62 | PASS | - |
| 403 | A-LEAF8 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.16.1.2 | PASS | - |
| 404 | A-LEAF8 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 172.16.1.6 | PASS | - |
| 405 | A-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.1 | PASS | - |
| 406 | A-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.9 | PASS | - |
| 407 | A-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.17 | PASS | - |
| 408 | A-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.25 | PASS | - |
| 409 | A-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.33 | PASS | - |
| 410 | A-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.41 | PASS | - |
| 411 | A-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.49 | PASS | - |
| 412 | A-SPINE1 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.57 | PASS | - |
| 413 | A-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.3 | PASS | - |
| 414 | A-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.11 | PASS | - |
| 415 | A-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.19 | PASS | - |
| 416 | A-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.27 | PASS | - |
| 417 | A-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.35 | PASS | - |
| 418 | A-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.43 | PASS | - |
| 419 | A-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.51 | PASS | - |
| 420 | A-SPINE2 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.59 | PASS | - |
| 421 | A-SPINE3 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.5 | PASS | - |
| 422 | A-SPINE3 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.13 | PASS | - |
| 423 | A-SPINE3 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.21 | PASS | - |
| 424 | A-SPINE3 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.29 | PASS | - |
| 425 | A-SPINE3 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.37 | PASS | - |
| 426 | A-SPINE3 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.45 | PASS | - |
| 427 | A-SPINE3 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.53 | PASS | - |
| 428 | A-SPINE3 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.61 | PASS | - |
| 429 | A-SPINE4 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.7 | PASS | - |
| 430 | A-SPINE4 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.15 | PASS | - |
| 431 | A-SPINE4 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.23 | PASS | - |
| 432 | A-SPINE4 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.31 | PASS | - |
| 433 | A-SPINE4 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.39 | PASS | - |
| 434 | A-SPINE4 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.47 | PASS | - |
| 435 | A-SPINE4 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.55 | PASS | - |
| 436 | A-SPINE4 | BGP | ip bgp peer state established (ipv4) | bgp_neighbor: 192.168.0.63 | PASS | - |
| 437 | A-LEAF1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.111 | PASS | - |
| 438 | A-LEAF1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.112 | PASS | - |
| 439 | A-LEAF1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.113 | PASS | - |
| 440 | A-LEAF1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.114 | PASS | - |
| 441 | A-LEAF2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.111 | PASS | - |
| 442 | A-LEAF2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.112 | PASS | - |
| 443 | A-LEAF2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.113 | PASS | - |
| 444 | A-LEAF2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.114 | PASS | - |
| 445 | A-LEAF3 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.111 | PASS | - |
| 446 | A-LEAF3 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.112 | PASS | - |
| 447 | A-LEAF3 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.113 | PASS | - |
| 448 | A-LEAF3 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.114 | PASS | - |
| 449 | A-LEAF4 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.111 | PASS | - |
| 450 | A-LEAF4 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.112 | PASS | - |
| 451 | A-LEAF4 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.113 | PASS | - |
| 452 | A-LEAF4 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.114 | PASS | - |
| 453 | A-LEAF5 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.111 | PASS | - |
| 454 | A-LEAF5 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.112 | PASS | - |
| 455 | A-LEAF5 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.113 | PASS | - |
| 456 | A-LEAF5 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.114 | PASS | - |
| 457 | A-LEAF6 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.111 | PASS | - |
| 458 | A-LEAF6 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.112 | PASS | - |
| 459 | A-LEAF6 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.113 | PASS | - |
| 460 | A-LEAF6 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.114 | PASS | - |
| 461 | A-LEAF7 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.111 | PASS | - |
| 462 | A-LEAF7 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.112 | PASS | - |
| 463 | A-LEAF7 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.113 | PASS | - |
| 464 | A-LEAF7 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.114 | PASS | - |
| 465 | A-LEAF7 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.16.0.1 | PASS | - |
| 466 | A-LEAF7 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.16.0.2 | PASS | - |
| 467 | A-LEAF8 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.111 | PASS | - |
| 468 | A-LEAF8 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.112 | PASS | - |
| 469 | A-LEAF8 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.113 | PASS | - |
| 470 | A-LEAF8 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.114 | PASS | - |
| 471 | A-LEAF8 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.16.0.1 | PASS | - |
| 472 | A-LEAF8 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 172.16.0.2 | PASS | - |
| 473 | A-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.11 | PASS | - |
| 474 | A-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.12 | PASS | - |
| 475 | A-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.13 | PASS | - |
| 476 | A-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.14 | PASS | - |
| 477 | A-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.15 | PASS | - |
| 478 | A-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.16 | PASS | - |
| 479 | A-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.17 | PASS | - |
| 480 | A-SPINE1 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.18 | PASS | - |
| 481 | A-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.11 | PASS | - |
| 482 | A-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.12 | PASS | - |
| 483 | A-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.13 | PASS | - |
| 484 | A-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.14 | PASS | - |
| 485 | A-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.15 | PASS | - |
| 486 | A-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.16 | PASS | - |
| 487 | A-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.17 | PASS | - |
| 488 | A-SPINE2 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.18 | PASS | - |
| 489 | A-SPINE3 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.11 | PASS | - |
| 490 | A-SPINE3 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.12 | PASS | - |
| 491 | A-SPINE3 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.13 | PASS | - |
| 492 | A-SPINE3 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.14 | PASS | - |
| 493 | A-SPINE3 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.15 | PASS | - |
| 494 | A-SPINE3 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.16 | PASS | - |
| 495 | A-SPINE3 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.17 | PASS | - |
| 496 | A-SPINE3 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.18 | PASS | - |
| 497 | A-SPINE4 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.11 | PASS | - |
| 498 | A-SPINE4 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.12 | PASS | - |
| 499 | A-SPINE4 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.13 | PASS | - |
| 500 | A-SPINE4 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.14 | PASS | - |
| 501 | A-SPINE4 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.15 | PASS | - |
| 502 | A-SPINE4 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.16 | PASS | - |
| 503 | A-SPINE4 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.17 | PASS | - |
| 504 | A-SPINE4 | BGP | bgp evpn peer state established (evpn) | bgp_neighbor: 10.0.0.18 | PASS | - |
| 505 | A-LEAF1 | Routing Table | Remote VTEP address | 10.1.1.11 | PASS | - |
| 506 | A-LEAF1 | Routing Table | Remote VTEP address | 10.1.1.13 | PASS | - |
| 507 | A-LEAF1 | Routing Table | Remote VTEP address | 10.1.1.15 | PASS | - |
| 508 | A-LEAF1 | Routing Table | Remote VTEP address | 10.1.1.17 | PASS | - |
| 509 | A-LEAF2 | Routing Table | Remote VTEP address | 10.1.1.11 | PASS | - |
| 510 | A-LEAF2 | Routing Table | Remote VTEP address | 10.1.1.13 | PASS | - |
| 511 | A-LEAF2 | Routing Table | Remote VTEP address | 10.1.1.15 | PASS | - |
| 512 | A-LEAF2 | Routing Table | Remote VTEP address | 10.1.1.17 | PASS | - |
| 513 | A-LEAF3 | Routing Table | Remote VTEP address | 10.1.1.11 | PASS | - |
| 514 | A-LEAF3 | Routing Table | Remote VTEP address | 10.1.1.13 | PASS | - |
| 515 | A-LEAF3 | Routing Table | Remote VTEP address | 10.1.1.15 | PASS | - |
| 516 | A-LEAF3 | Routing Table | Remote VTEP address | 10.1.1.17 | PASS | - |
| 517 | A-LEAF4 | Routing Table | Remote VTEP address | 10.1.1.11 | PASS | - |
| 518 | A-LEAF4 | Routing Table | Remote VTEP address | 10.1.1.13 | PASS | - |
| 519 | A-LEAF4 | Routing Table | Remote VTEP address | 10.1.1.15 | PASS | - |
| 520 | A-LEAF4 | Routing Table | Remote VTEP address | 10.1.1.17 | PASS | - |
| 521 | A-LEAF5 | Routing Table | Remote VTEP address | 10.1.1.11 | PASS | - |
| 522 | A-LEAF5 | Routing Table | Remote VTEP address | 10.1.1.13 | PASS | - |
| 523 | A-LEAF5 | Routing Table | Remote VTEP address | 10.1.1.15 | PASS | - |
| 524 | A-LEAF5 | Routing Table | Remote VTEP address | 10.1.1.17 | PASS | - |
| 525 | A-LEAF6 | Routing Table | Remote VTEP address | 10.1.1.11 | PASS | - |
| 526 | A-LEAF6 | Routing Table | Remote VTEP address | 10.1.1.13 | PASS | - |
| 527 | A-LEAF6 | Routing Table | Remote VTEP address | 10.1.1.15 | PASS | - |
| 528 | A-LEAF6 | Routing Table | Remote VTEP address | 10.1.1.17 | PASS | - |
| 529 | A-LEAF7 | Routing Table | Remote VTEP address | 10.1.1.11 | PASS | - |
| 530 | A-LEAF7 | Routing Table | Remote VTEP address | 10.1.1.13 | PASS | - |
| 531 | A-LEAF7 | Routing Table | Remote VTEP address | 10.1.1.15 | PASS | - |
| 532 | A-LEAF7 | Routing Table | Remote VTEP address | 10.1.1.17 | PASS | - |
| 533 | A-LEAF8 | Routing Table | Remote VTEP address | 10.1.1.11 | PASS | - |
| 534 | A-LEAF8 | Routing Table | Remote VTEP address | 10.1.1.13 | PASS | - |
| 535 | A-LEAF8 | Routing Table | Remote VTEP address | 10.1.1.15 | PASS | - |
| 536 | A-LEAF8 | Routing Table | Remote VTEP address | 10.1.1.17 | PASS | - |
| 537 | A-LEAF1 | Routing Table | Remote Lo0 address | 10.0.0.11 | PASS | - |
| 538 | A-LEAF1 | Routing Table | Remote Lo0 address | 10.0.0.12 | PASS | - |
| 539 | A-LEAF1 | Routing Table | Remote Lo0 address | 10.0.0.13 | PASS | - |
| 540 | A-LEAF1 | Routing Table | Remote Lo0 address | 10.0.0.14 | PASS | - |
| 541 | A-LEAF1 | Routing Table | Remote Lo0 address | 10.0.0.15 | PASS | - |
| 542 | A-LEAF1 | Routing Table | Remote Lo0 address | 10.0.0.16 | PASS | - |
| 543 | A-LEAF1 | Routing Table | Remote Lo0 address | 10.0.0.17 | PASS | - |
| 544 | A-LEAF1 | Routing Table | Remote Lo0 address | 10.0.0.18 | PASS | - |
| 545 | A-LEAF1 | Routing Table | Remote Lo0 address | 10.0.0.111 | PASS | - |
| 546 | A-LEAF1 | Routing Table | Remote Lo0 address | 10.0.0.112 | PASS | - |
| 547 | A-LEAF1 | Routing Table | Remote Lo0 address | 10.0.0.113 | PASS | - |
| 548 | A-LEAF1 | Routing Table | Remote Lo0 address | 10.0.0.114 | PASS | - |
| 549 | A-LEAF2 | Routing Table | Remote Lo0 address | 10.0.0.11 | PASS | - |
| 550 | A-LEAF2 | Routing Table | Remote Lo0 address | 10.0.0.12 | PASS | - |
| 551 | A-LEAF2 | Routing Table | Remote Lo0 address | 10.0.0.13 | PASS | - |
| 552 | A-LEAF2 | Routing Table | Remote Lo0 address | 10.0.0.14 | PASS | - |
| 553 | A-LEAF2 | Routing Table | Remote Lo0 address | 10.0.0.15 | PASS | - |
| 554 | A-LEAF2 | Routing Table | Remote Lo0 address | 10.0.0.16 | PASS | - |
| 555 | A-LEAF2 | Routing Table | Remote Lo0 address | 10.0.0.17 | PASS | - |
| 556 | A-LEAF2 | Routing Table | Remote Lo0 address | 10.0.0.18 | PASS | - |
| 557 | A-LEAF2 | Routing Table | Remote Lo0 address | 10.0.0.111 | PASS | - |
| 558 | A-LEAF2 | Routing Table | Remote Lo0 address | 10.0.0.112 | PASS | - |
| 559 | A-LEAF2 | Routing Table | Remote Lo0 address | 10.0.0.113 | PASS | - |
| 560 | A-LEAF2 | Routing Table | Remote Lo0 address | 10.0.0.114 | PASS | - |
| 561 | A-LEAF3 | Routing Table | Remote Lo0 address | 10.0.0.11 | PASS | - |
| 562 | A-LEAF3 | Routing Table | Remote Lo0 address | 10.0.0.12 | PASS | - |
| 563 | A-LEAF3 | Routing Table | Remote Lo0 address | 10.0.0.13 | PASS | - |
| 564 | A-LEAF3 | Routing Table | Remote Lo0 address | 10.0.0.14 | PASS | - |
| 565 | A-LEAF3 | Routing Table | Remote Lo0 address | 10.0.0.15 | PASS | - |
| 566 | A-LEAF3 | Routing Table | Remote Lo0 address | 10.0.0.16 | PASS | - |
| 567 | A-LEAF3 | Routing Table | Remote Lo0 address | 10.0.0.17 | PASS | - |
| 568 | A-LEAF3 | Routing Table | Remote Lo0 address | 10.0.0.18 | PASS | - |
| 569 | A-LEAF3 | Routing Table | Remote Lo0 address | 10.0.0.111 | PASS | - |
| 570 | A-LEAF3 | Routing Table | Remote Lo0 address | 10.0.0.112 | PASS | - |
| 571 | A-LEAF3 | Routing Table | Remote Lo0 address | 10.0.0.113 | PASS | - |
| 572 | A-LEAF3 | Routing Table | Remote Lo0 address | 10.0.0.114 | PASS | - |
| 573 | A-LEAF4 | Routing Table | Remote Lo0 address | 10.0.0.11 | PASS | - |
| 574 | A-LEAF4 | Routing Table | Remote Lo0 address | 10.0.0.12 | PASS | - |
| 575 | A-LEAF4 | Routing Table | Remote Lo0 address | 10.0.0.13 | PASS | - |
| 576 | A-LEAF4 | Routing Table | Remote Lo0 address | 10.0.0.14 | PASS | - |
| 577 | A-LEAF4 | Routing Table | Remote Lo0 address | 10.0.0.15 | PASS | - |
| 578 | A-LEAF4 | Routing Table | Remote Lo0 address | 10.0.0.16 | PASS | - |
| 579 | A-LEAF4 | Routing Table | Remote Lo0 address | 10.0.0.17 | PASS | - |
| 580 | A-LEAF4 | Routing Table | Remote Lo0 address | 10.0.0.18 | PASS | - |
| 581 | A-LEAF4 | Routing Table | Remote Lo0 address | 10.0.0.111 | PASS | - |
| 582 | A-LEAF4 | Routing Table | Remote Lo0 address | 10.0.0.112 | PASS | - |
| 583 | A-LEAF4 | Routing Table | Remote Lo0 address | 10.0.0.113 | PASS | - |
| 584 | A-LEAF4 | Routing Table | Remote Lo0 address | 10.0.0.114 | PASS | - |
| 585 | A-LEAF5 | Routing Table | Remote Lo0 address | 10.0.0.11 | PASS | - |
| 586 | A-LEAF5 | Routing Table | Remote Lo0 address | 10.0.0.12 | PASS | - |
| 587 | A-LEAF5 | Routing Table | Remote Lo0 address | 10.0.0.13 | PASS | - |
| 588 | A-LEAF5 | Routing Table | Remote Lo0 address | 10.0.0.14 | PASS | - |
| 589 | A-LEAF5 | Routing Table | Remote Lo0 address | 10.0.0.15 | PASS | - |
| 590 | A-LEAF5 | Routing Table | Remote Lo0 address | 10.0.0.16 | PASS | - |
| 591 | A-LEAF5 | Routing Table | Remote Lo0 address | 10.0.0.17 | PASS | - |
| 592 | A-LEAF5 | Routing Table | Remote Lo0 address | 10.0.0.18 | PASS | - |
| 593 | A-LEAF5 | Routing Table | Remote Lo0 address | 10.0.0.111 | PASS | - |
| 594 | A-LEAF5 | Routing Table | Remote Lo0 address | 10.0.0.112 | PASS | - |
| 595 | A-LEAF5 | Routing Table | Remote Lo0 address | 10.0.0.113 | PASS | - |
| 596 | A-LEAF5 | Routing Table | Remote Lo0 address | 10.0.0.114 | PASS | - |
| 597 | A-LEAF6 | Routing Table | Remote Lo0 address | 10.0.0.11 | PASS | - |
| 598 | A-LEAF6 | Routing Table | Remote Lo0 address | 10.0.0.12 | PASS | - |
| 599 | A-LEAF6 | Routing Table | Remote Lo0 address | 10.0.0.13 | PASS | - |
| 600 | A-LEAF6 | Routing Table | Remote Lo0 address | 10.0.0.14 | PASS | - |
| 601 | A-LEAF6 | Routing Table | Remote Lo0 address | 10.0.0.15 | PASS | - |
| 602 | A-LEAF6 | Routing Table | Remote Lo0 address | 10.0.0.16 | PASS | - |
| 603 | A-LEAF6 | Routing Table | Remote Lo0 address | 10.0.0.17 | PASS | - |
| 604 | A-LEAF6 | Routing Table | Remote Lo0 address | 10.0.0.18 | PASS | - |
| 605 | A-LEAF6 | Routing Table | Remote Lo0 address | 10.0.0.111 | PASS | - |
| 606 | A-LEAF6 | Routing Table | Remote Lo0 address | 10.0.0.112 | PASS | - |
| 607 | A-LEAF6 | Routing Table | Remote Lo0 address | 10.0.0.113 | PASS | - |
| 608 | A-LEAF6 | Routing Table | Remote Lo0 address | 10.0.0.114 | PASS | - |
| 609 | A-LEAF7 | Routing Table | Remote Lo0 address | 10.0.0.11 | PASS | - |
| 610 | A-LEAF7 | Routing Table | Remote Lo0 address | 10.0.0.12 | PASS | - |
| 611 | A-LEAF7 | Routing Table | Remote Lo0 address | 10.0.0.13 | PASS | - |
| 612 | A-LEAF7 | Routing Table | Remote Lo0 address | 10.0.0.14 | PASS | - |
| 613 | A-LEAF7 | Routing Table | Remote Lo0 address | 10.0.0.15 | PASS | - |
| 614 | A-LEAF7 | Routing Table | Remote Lo0 address | 10.0.0.16 | PASS | - |
| 615 | A-LEAF7 | Routing Table | Remote Lo0 address | 10.0.0.17 | PASS | - |
| 616 | A-LEAF7 | Routing Table | Remote Lo0 address | 10.0.0.18 | PASS | - |
| 617 | A-LEAF7 | Routing Table | Remote Lo0 address | 10.0.0.111 | PASS | - |
| 618 | A-LEAF7 | Routing Table | Remote Lo0 address | 10.0.0.112 | PASS | - |
| 619 | A-LEAF7 | Routing Table | Remote Lo0 address | 10.0.0.113 | PASS | - |
| 620 | A-LEAF7 | Routing Table | Remote Lo0 address | 10.0.0.114 | PASS | - |
| 621 | A-LEAF8 | Routing Table | Remote Lo0 address | 10.0.0.11 | PASS | - |
| 622 | A-LEAF8 | Routing Table | Remote Lo0 address | 10.0.0.12 | PASS | - |
| 623 | A-LEAF8 | Routing Table | Remote Lo0 address | 10.0.0.13 | PASS | - |
| 624 | A-LEAF8 | Routing Table | Remote Lo0 address | 10.0.0.14 | PASS | - |
| 625 | A-LEAF8 | Routing Table | Remote Lo0 address | 10.0.0.15 | PASS | - |
| 626 | A-LEAF8 | Routing Table | Remote Lo0 address | 10.0.0.16 | PASS | - |
| 627 | A-LEAF8 | Routing Table | Remote Lo0 address | 10.0.0.17 | PASS | - |
| 628 | A-LEAF8 | Routing Table | Remote Lo0 address | 10.0.0.18 | PASS | - |
| 629 | A-LEAF8 | Routing Table | Remote Lo0 address | 10.0.0.111 | PASS | - |
| 630 | A-LEAF8 | Routing Table | Remote Lo0 address | 10.0.0.112 | PASS | - |
| 631 | A-LEAF8 | Routing Table | Remote Lo0 address | 10.0.0.113 | PASS | - |
| 632 | A-LEAF8 | Routing Table | Remote Lo0 address | 10.0.0.114 | PASS | - |
| 633 | A-LEAF1 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF1 - 10.0.0.11 Destination: 10.0.0.11 | PASS | - |
| 634 | A-LEAF1 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF1 - 10.0.0.11 Destination: 10.0.0.12 | PASS | - |
| 635 | A-LEAF1 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF1 - 10.0.0.11 Destination: 10.0.0.13 | PASS | - |
| 636 | A-LEAF1 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF1 - 10.0.0.11 Destination: 10.0.0.14 | PASS | - |
| 637 | A-LEAF1 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF1 - 10.0.0.11 Destination: 10.0.0.15 | PASS | - |
| 638 | A-LEAF1 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF1 - 10.0.0.11 Destination: 10.0.0.16 | PASS | - |
| 639 | A-LEAF1 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF1 - 10.0.0.11 Destination: 10.0.0.17 | PASS | - |
| 640 | A-LEAF1 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF1 - 10.0.0.11 Destination: 10.0.0.18 | PASS | - |
| 641 | A-LEAF1 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF1 - 10.0.0.11 Destination: 10.0.0.111 | PASS | - |
| 642 | A-LEAF1 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF1 - 10.0.0.11 Destination: 10.0.0.112 | PASS | - |
| 643 | A-LEAF1 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF1 - 10.0.0.11 Destination: 10.0.0.113 | PASS | - |
| 644 | A-LEAF1 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF1 - 10.0.0.11 Destination: 10.0.0.114 | PASS | - |
| 645 | A-LEAF2 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF2 - 10.0.0.12 Destination: 10.0.0.11 | PASS | - |
| 646 | A-LEAF2 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF2 - 10.0.0.12 Destination: 10.0.0.12 | PASS | - |
| 647 | A-LEAF2 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF2 - 10.0.0.12 Destination: 10.0.0.13 | PASS | - |
| 648 | A-LEAF2 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF2 - 10.0.0.12 Destination: 10.0.0.14 | PASS | - |
| 649 | A-LEAF2 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF2 - 10.0.0.12 Destination: 10.0.0.15 | PASS | - |
| 650 | A-LEAF2 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF2 - 10.0.0.12 Destination: 10.0.0.16 | PASS | - |
| 651 | A-LEAF2 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF2 - 10.0.0.12 Destination: 10.0.0.17 | PASS | - |
| 652 | A-LEAF2 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF2 - 10.0.0.12 Destination: 10.0.0.18 | PASS | - |
| 653 | A-LEAF2 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF2 - 10.0.0.12 Destination: 10.0.0.111 | PASS | - |
| 654 | A-LEAF2 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF2 - 10.0.0.12 Destination: 10.0.0.112 | PASS | - |
| 655 | A-LEAF2 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF2 - 10.0.0.12 Destination: 10.0.0.113 | PASS | - |
| 656 | A-LEAF2 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF2 - 10.0.0.12 Destination: 10.0.0.114 | PASS | - |
| 657 | A-LEAF3 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF3 - 10.0.0.13 Destination: 10.0.0.11 | PASS | - |
| 658 | A-LEAF3 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF3 - 10.0.0.13 Destination: 10.0.0.12 | PASS | - |
| 659 | A-LEAF3 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF3 - 10.0.0.13 Destination: 10.0.0.13 | PASS | - |
| 660 | A-LEAF3 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF3 - 10.0.0.13 Destination: 10.0.0.14 | PASS | - |
| 661 | A-LEAF3 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF3 - 10.0.0.13 Destination: 10.0.0.15 | PASS | - |
| 662 | A-LEAF3 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF3 - 10.0.0.13 Destination: 10.0.0.16 | PASS | - |
| 663 | A-LEAF3 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF3 - 10.0.0.13 Destination: 10.0.0.17 | PASS | - |
| 664 | A-LEAF3 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF3 - 10.0.0.13 Destination: 10.0.0.18 | PASS | - |
| 665 | A-LEAF3 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF3 - 10.0.0.13 Destination: 10.0.0.111 | PASS | - |
| 666 | A-LEAF3 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF3 - 10.0.0.13 Destination: 10.0.0.112 | PASS | - |
| 667 | A-LEAF3 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF3 - 10.0.0.13 Destination: 10.0.0.113 | PASS | - |
| 668 | A-LEAF3 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF3 - 10.0.0.13 Destination: 10.0.0.114 | PASS | - |
| 669 | A-LEAF4 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF4 - 10.0.0.14 Destination: 10.0.0.11 | PASS | - |
| 670 | A-LEAF4 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF4 - 10.0.0.14 Destination: 10.0.0.12 | PASS | - |
| 671 | A-LEAF4 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF4 - 10.0.0.14 Destination: 10.0.0.13 | PASS | - |
| 672 | A-LEAF4 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF4 - 10.0.0.14 Destination: 10.0.0.14 | PASS | - |
| 673 | A-LEAF4 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF4 - 10.0.0.14 Destination: 10.0.0.15 | PASS | - |
| 674 | A-LEAF4 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF4 - 10.0.0.14 Destination: 10.0.0.16 | PASS | - |
| 675 | A-LEAF4 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF4 - 10.0.0.14 Destination: 10.0.0.17 | PASS | - |
| 676 | A-LEAF4 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF4 - 10.0.0.14 Destination: 10.0.0.18 | PASS | - |
| 677 | A-LEAF4 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF4 - 10.0.0.14 Destination: 10.0.0.111 | PASS | - |
| 678 | A-LEAF4 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF4 - 10.0.0.14 Destination: 10.0.0.112 | PASS | - |
| 679 | A-LEAF4 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF4 - 10.0.0.14 Destination: 10.0.0.113 | PASS | - |
| 680 | A-LEAF4 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF4 - 10.0.0.14 Destination: 10.0.0.114 | PASS | - |
| 681 | A-LEAF5 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF5 - 10.0.0.15 Destination: 10.0.0.11 | PASS | - |
| 682 | A-LEAF5 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF5 - 10.0.0.15 Destination: 10.0.0.12 | PASS | - |
| 683 | A-LEAF5 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF5 - 10.0.0.15 Destination: 10.0.0.13 | PASS | - |
| 684 | A-LEAF5 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF5 - 10.0.0.15 Destination: 10.0.0.14 | PASS | - |
| 685 | A-LEAF5 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF5 - 10.0.0.15 Destination: 10.0.0.15 | PASS | - |
| 686 | A-LEAF5 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF5 - 10.0.0.15 Destination: 10.0.0.16 | PASS | - |
| 687 | A-LEAF5 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF5 - 10.0.0.15 Destination: 10.0.0.17 | PASS | - |
| 688 | A-LEAF5 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF5 - 10.0.0.15 Destination: 10.0.0.18 | PASS | - |
| 689 | A-LEAF5 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF5 - 10.0.0.15 Destination: 10.0.0.111 | PASS | - |
| 690 | A-LEAF5 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF5 - 10.0.0.15 Destination: 10.0.0.112 | PASS | - |
| 691 | A-LEAF5 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF5 - 10.0.0.15 Destination: 10.0.0.113 | PASS | - |
| 692 | A-LEAF5 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF5 - 10.0.0.15 Destination: 10.0.0.114 | PASS | - |
| 693 | A-LEAF6 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF6 - 10.0.0.16 Destination: 10.0.0.11 | PASS | - |
| 694 | A-LEAF6 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF6 - 10.0.0.16 Destination: 10.0.0.12 | PASS | - |
| 695 | A-LEAF6 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF6 - 10.0.0.16 Destination: 10.0.0.13 | PASS | - |
| 696 | A-LEAF6 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF6 - 10.0.0.16 Destination: 10.0.0.14 | PASS | - |
| 697 | A-LEAF6 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF6 - 10.0.0.16 Destination: 10.0.0.15 | PASS | - |
| 698 | A-LEAF6 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF6 - 10.0.0.16 Destination: 10.0.0.16 | PASS | - |
| 699 | A-LEAF6 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF6 - 10.0.0.16 Destination: 10.0.0.17 | PASS | - |
| 700 | A-LEAF6 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF6 - 10.0.0.16 Destination: 10.0.0.18 | PASS | - |
| 701 | A-LEAF6 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF6 - 10.0.0.16 Destination: 10.0.0.111 | PASS | - |
| 702 | A-LEAF6 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF6 - 10.0.0.16 Destination: 10.0.0.112 | PASS | - |
| 703 | A-LEAF6 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF6 - 10.0.0.16 Destination: 10.0.0.113 | PASS | - |
| 704 | A-LEAF6 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF6 - 10.0.0.16 Destination: 10.0.0.114 | PASS | - |
| 705 | A-LEAF7 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF7 - 10.0.0.17 Destination: 10.0.0.11 | PASS | - |
| 706 | A-LEAF7 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF7 - 10.0.0.17 Destination: 10.0.0.12 | PASS | - |
| 707 | A-LEAF7 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF7 - 10.0.0.17 Destination: 10.0.0.13 | PASS | - |
| 708 | A-LEAF7 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF7 - 10.0.0.17 Destination: 10.0.0.14 | PASS | - |
| 709 | A-LEAF7 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF7 - 10.0.0.17 Destination: 10.0.0.15 | PASS | - |
| 710 | A-LEAF7 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF7 - 10.0.0.17 Destination: 10.0.0.16 | PASS | - |
| 711 | A-LEAF7 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF7 - 10.0.0.17 Destination: 10.0.0.17 | PASS | - |
| 712 | A-LEAF7 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF7 - 10.0.0.17 Destination: 10.0.0.18 | PASS | - |
| 713 | A-LEAF7 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF7 - 10.0.0.17 Destination: 10.0.0.111 | PASS | - |
| 714 | A-LEAF7 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF7 - 10.0.0.17 Destination: 10.0.0.112 | PASS | - |
| 715 | A-LEAF7 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF7 - 10.0.0.17 Destination: 10.0.0.113 | PASS | - |
| 716 | A-LEAF7 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF7 - 10.0.0.17 Destination: 10.0.0.114 | PASS | - |
| 717 | A-LEAF8 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF8 - 10.0.0.18 Destination: 10.0.0.11 | PASS | - |
| 718 | A-LEAF8 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF8 - 10.0.0.18 Destination: 10.0.0.12 | PASS | - |
| 719 | A-LEAF8 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF8 - 10.0.0.18 Destination: 10.0.0.13 | PASS | - |
| 720 | A-LEAF8 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF8 - 10.0.0.18 Destination: 10.0.0.14 | PASS | - |
| 721 | A-LEAF8 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF8 - 10.0.0.18 Destination: 10.0.0.15 | PASS | - |
| 722 | A-LEAF8 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF8 - 10.0.0.18 Destination: 10.0.0.16 | PASS | - |
| 723 | A-LEAF8 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF8 - 10.0.0.18 Destination: 10.0.0.17 | PASS | - |
| 724 | A-LEAF8 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF8 - 10.0.0.18 Destination: 10.0.0.18 | PASS | - |
| 725 | A-LEAF8 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF8 - 10.0.0.18 Destination: 10.0.0.111 | PASS | - |
| 726 | A-LEAF8 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF8 - 10.0.0.18 Destination: 10.0.0.112 | PASS | - |
| 727 | A-LEAF8 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF8 - 10.0.0.18 Destination: 10.0.0.113 | PASS | - |
| 728 | A-LEAF8 | Loopback0 Reachability | Loopback0 Reachability | Source: A-LEAF8 - 10.0.0.18 Destination: 10.0.0.114 | PASS | - |
