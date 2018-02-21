#!/bin/bash

/afs/cern.ch/user/e/echapon/workspace/public/RunPrep2015/HLT_runbyrun/recorded_by_hltpath_fromDQM --json /afs/cern.ch/cms/CAF/CMSCOMM/COMM_DQM/certification/Collisions15/HI/Cert_262548-263757_PromptReco_HICollisions15_JSON_v2.txt --hlttype avg_prescale --minrun 262548 --maxrun 263757 >& events_5TeVPbPb.txt


grep -E 'HLT_HIPuAK4CaloJet40_Eta5p1_v1' events_5TeVPbPb.txt
grep -E 'HLT_HIPuAK4CaloJet60_Eta5p1_v1' events_5TeVPbPb.txt
grep -E 'HLT_HIPuAK4CaloJet80_Eta5p1_v1' events_5TeVPbPb.txt
