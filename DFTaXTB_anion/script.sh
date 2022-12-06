for ion in f cl br
do
  for solvent in buoh w
  do
    cd ${ion}_${solvent} 
    JKgaussstat ${ion}_${solvent}_XTB_freq.pkl -ct -g -glob         -formation -unit -noex > ${ion}_${solvent}_XTB_freq.dat
    #JKgaussstat ${ion}_${solvent}_DFT_freq.pkl -ct -g -glob -fc 100 -formation -unit -noex > ${ion}_${solvent}_DFT_freq.dat
    JKgaussstat ${ion}_${solvent}_DFT_freq.pkl -ct -g -glob         -formation -unit -noex > ${ion}_${solvent}_DFT_freq.dat
    cd ..
  done
done
