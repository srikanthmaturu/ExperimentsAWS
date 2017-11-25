sudo apt-get update
sudo apt-get install cmake
sudo apt-get install g++
sudo apt-get install unzip
unzip SequencesClusteringTool.zip 
cd SequencesClusteringTool/
mkdir build
cd build
cmake ..
make seq_anlyzer_DT_1_NL_3_LT_2_NHT_32_NHB_14_NP_300_TH_70_PT_SparseVectorFloat
#Experiment 1
cd ../../
unzip fluxSimExpressed.fa.faa.zip
unzip SPAdes_transcripts_merged.fasta.unique.zip
cd SequencesClusteringTool/build/
./seq_anlyzer_DT_1_NL_3_LT_2_NHT_32_NHB_14_NP_300_TH_70_PT_SparseVectorFloat 2 ../../fluxSimExpressed.fa.faa.unique fasta ../../SPAdes_transcripts_merged.fasta.unique.faa fasta 70 1 > spades_edlib_results.txt & 
