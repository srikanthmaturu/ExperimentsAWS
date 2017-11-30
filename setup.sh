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
cd ../../
unzip fluxSimExpressed.fa.faa.zip
unzip SPAdes_transcripts_merged.fasta.unique.zip
unzip cufflinks_transcripts.fasta.unique.faa.zip
unzip stringTie_transcripts.fasta.unique.faa.zip
unzip consensus.fasta.faa.unique.zip

#Experiment 1
cd SequencesClusteringTool/build/
nohup ./seq_anlyzer_DT_1_NL_3_LT_2_NHT_32_NHB_14_NP_300_TH_70_PT_SparseVectorFloat 2 ../../fluxSimExpressed.fa.faa.unique fasta ../../SPAdes_transcripts_merged.fasta.unique.faa fasta 70 1 > spades_edlib_results.txt & 

#Experiment 2
cd SequencesClusteringTool/build/
nohup ./seq_anlyzer_DT_1_NL_3_LT_2_NHT_32_NHB_14_NP_300_TH_70_PT_SparseVectorFloat 1 ../../fluxSimExpressed.fa.faa.unique fasta ../../cufflinks_transcripts.fasta.unique.faa fasta 0 1 70 1 > cufflinks_falconn_results.txt & 

#Experiment 3
cd SequencesClusteringTool/build/
nohup ./seq_anlyzer_DT_1_NL_3_LT_2_NHT_32_NHB_14_NP_300_TH_70_PT_SparseVectorFloat 2 ../../fluxSimExpressed.fa.faa.unique fasta ../../cufflinks_transcripts.fasta.unique.faa fasta 70 1 > cufflinks_edlib_results.txt & 

#Experiment 4
cd SequencesClusteringTool/build/
nohup ./seq_anlyzer_DT_1_NL_3_LT_2_NHT_32_NHB_14_NP_300_TH_70_PT_SparseVectorFloat 1 ../../fluxSimExpressed.fa.faa.unique fasta ../../stringTie_transcripts.fasta.unique.faa fasta 0 1 70 1 > stringtie_falconn_results.txt & 

#Experiment 5
cd SequencesClusteringTool/build/
nohup ./seq_anlyzer_DT_1_NL_3_LT_2_NHT_32_NHB_14_NP_300_TH_70_PT_SparseVectorFloat 2 ../../fluxSimExpressed.fa.faa.unique fasta ../../stringTie_transcripts.fasta.unique.faa fasta 70 1 > stringtie_edlib_results.txt & 

#Experiment 6
cd SequencesClusteringTool/build/
nohup ./seq_anlyzer_DT_1_NL_3_LT_2_NHT_32_NHB_14_NP_300_TH_70_PT_SparseVectorFloat 0 ../../consensus.fasta.faa.unique fasta 0 1 70 10000 > clusters_status.txt & 

#Experiment 7
cd SequencesClusteringTool/build/
make seq_anlyzer_NL_5_LT_2_NHT_32_NHB_11_NP_300_TH_150_PT_DenseVectorFloat
nohup ./seq_anlyzer_NL_5_LT_2_NHT_32_NHB_11_NP_300_TH_150_PT_DenseVectorFloat 1 ../../fluxSimExpressed.fa.unique fasta ../../SPAdes_transcripts_merged.fasta.unique fasta 0 0 70 1 > spades_falconn_dna.txt &

#Experiment 8
cd SequencesClusteringTool/build/
make seq_anlyzer_NL_5_LT_2_NHT_32_NHB_11_NP_300_TH_150_PT_DenseVectorFloat
nohup ./seq_anlyzer_NL_5_LT_2_NHT_32_NHB_11_NP_300_TH_150_PT_DenseVectorFloat 1 ../../fluxSimExpressed.fa.unique fasta ../../SOAPDenovo_transcripts_merged.fasta.unique fasta 0 0 70 1 > soapdenovo_falconn_dna.txt &



