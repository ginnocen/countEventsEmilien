export PATH=$HOME/.local/bin:/afs/cern.ch/cms/lumi/brilconda-1.1.7/bin:$PATH
export PATH=$HOME/.local/bin:/nfshome0/lumipro/brilconda/bin:$PATH 
pip install --install-option="--prefix=$HOME/.local" brilws

rm  brilcalcPbPb.txt
brilcalc lumi -i /afs/cern.ch/cms/CAF/CMSCOMM/COMM_DQM/certification/Collisions15/HI/Cert_262548-263757_PromptReco_HICollisions15_JSON_v2.txt --hltpath HLT_HIPuAK4CaloJet** >>brilcalcPbPb.txt


grep -w '^| HLT_HIPuAK4CaloJet40_Eta5p1_v1' brilcalcPbPb.txt
grep -w '^| HLT_HIPuAK4CaloJet60_Eta5p1_v1' brilcalcPbPb.txt
grep -w '^| HLT_HIPuAK4CaloJet80_Eta5p1_v1' brilcalcPbPb.txt
