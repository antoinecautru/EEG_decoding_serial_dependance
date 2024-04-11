Here are several implementations of neural networks for EEG decoding.
They are all based on the literature. The two main studies that were
used are the following:

1-
Schirrmeister, R. T., Springenberg, J. T., Fiederer, L. D. J., 
Glasstetter, M., Eggensperger, K., Tangermann, M., & Ball, T. (2017). 
Deep learning with convolutional neural networks for EEG decoding and 
visualization. Human Brain Mapping, 38(11), 5391-5420. 
https://onlinelibrary.wiley.com/doi/full/10.1002/hbm.23730

2-
Bashivan, P., Rish, I., Yeasin, M., & Codella, N. (2015). Learning 
representations from EEG with deep recurrent-convolutional neural 
networks. arXiv preprint arXiv:1511.06448. 
https://arxiv.org/pdf/1511.06448.pdf


The first study proposed a deep convolutional neural network called "Deep4Net"
and it is now implemented in the Braindecode library of python. 
A tutorial can be found in the "EEG_decoding_tutos" folder.
An implementation for our data can be found in the "CNN_EEG_decoding"
folder. One implementation is for stimulus type decoding and the other one is for
orientation decoding. 
For the orientation decoding, we have also tried to combine data of several 
participants to increase the dataset size. 
The data was generated with matlab scripts in the "CNN_EEG_decoding/data_transformation" 
folder. The data can be copied/pasted in this location before running the scripts.

The second study proposes a new approach for EEG decoding, using the spatial
dependencies between the electrodes. The decoding is performed with video-classification
inspired networks. All implementations and another readme.txt can be found
in the "Bashivan_netnCNN" folder. One of the implementation uses recurrent neural 
networks with LSTM layers. Here, no tools were proposed for preprocessing the data
and therefore it was not straigtforward to combine data of several patients. This is
something to explore farther.
The data was generated with matlab scripts located in the "Data_transformation" folder, 
in which the data can be copied/pasted before running the scripts. 


Some other basic decodings include logistic regression, SVM or MLP and are implemented
with the MNE and Sk-learn libraries. Their implementation can be found in the
"EEG_decoding_tutos" folder. They were also implemented on data from the Psychophysics
lab at Epfl, and this can be found in the "CNN_EEG_decoding" folder in the "StripeVsMotion"
notebook, at the beginning of the notebook. 

The data we worked with was contained in the "data" folder and contained the two following
files:
- 11_250hz_dt_lp40_eprej_picard_cleaned_iav.set
- 11_250hz_dt_lp40_eprej_picard_cleaned_iav.fdt

Overall, the stimulus type is easy to decode and works with the most basic algorithm.
On the other hand, orientation could not be decoded with simple algorithms
and deep networks seem to be a more promising option. 

These works will enable to perform tests more rapidely in the future for orientation decoding
with the existing deep networks, that were found to work well in the literature. 

Also, importing the EEG data of matlab to python is not the easiest task and does not work 
perfectly. A great part of the data is forgotten, and has to be manually exported on matlab 
for farther import on python. Some of the notebooks provided give ways to deal with matlab EEG
data on python. 