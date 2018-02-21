export PATH=$HOME/.local/bin:/afs/cern.ch/cms/lumi/brilconda-1.1.7/bin:$PATH
export PATH=$HOME/.local/bin:/nfshome0/lumipro/brilconda/bin:$PATH 
pip install --install-option="--prefix=$HOME/.local" brilws

rm  brilcalcpp.txt
brilcalc lumi -i /afs/cern.ch/cms/CAF/CMSCOMM/COMM_DQM/certification/Collisions15/5TeV/Cert_262081-262273_5TeV_PromptReco_Collisions15_25ns_JSON_v2.txt --hltpath HLT_AK4PFJet* >>brilcalcpp.txt


grep -w '^| HLT_AK4PFJet40_Eta5p1_v1' brilcalcpp.txt
grep -w '^| HLT_AK4PFJet60_Eta5p1_v1' brilcalcpp.txt
grep -w '^| HLT_AK4PFJet80_Eta5p1_v1' brilcalcpp.txt
