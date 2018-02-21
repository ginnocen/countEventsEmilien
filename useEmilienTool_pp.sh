#!/bin/bash

/afs/cern.ch/user/e/echapon/workspace/public/RunPrep2015/HLT_runbyrun/recorded_by_hltpath_fromDQM --json /afs/cern.ch/cms/CAF/CMSCOMM/COMM_DQM/certification/Collisions15/5TeV/Cert_262081-262273_5TeV_PromptReco_Collisions15_25ns_JSON_v2.txt  --hlttype avg_prescale --minrun 262081 --maxrun 262273 >& events_5TevPP.txt

grep -E 'HLT_AK4PFJet40_Eta5p1_v1' events_5TevPP.txt
grep -E 'HLT_AK4PFJet60_Eta5p1_v1' events_5TevPP.txt
grep -E 'HLT_AK4PFJet80_Eta5p1_v1' events_5TevPP.txt