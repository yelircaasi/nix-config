# NLP Notes

## Notes

## Notes

* how can I get involved with data science for climate change and geoengineering?

### 10 PyTorch Mistakes

* Didn't overfit batch
* Forgot toggle train/eval
* Forgot .zero_grad()
* Softmax when using CrossEntropy
* Bias term with BatchNorm
* Using view as permute
* Incorrect Data Augmentation
* Not Shuffling Data
* Not Normalizing Data
* Not Clipping Gradients

## ML Notes

* why does adding positional information not destroy some of the information decoded in the embedding? why not just concatenation?
* search: data analysis and climate change
* parquet data format
* crowdsourcing climate change analysis    → make NN to detect skew angle of scanned page (mainly to master PyTorch, TensorFlow, MXNet, and Flux.jl): how well does it work, and how does it compare to row pixel sum approach?
* scaled dot product: why sqrt(d_k)?
* intelligence ~ learning + reasoning
* EU definition of trustworthy AI    → optimal algorithm for Set
* passive-aggressive algorithms
* UMAP
* t-SNE
* MDS (multidimensional scaling): metric & non-metric, attempts to maintain actual distance / tries to maintain rank of data rather than distances
* good search: pca on tensor
* dimensionality reduction on matrix of functions
* search: pca on distributions instead of value

## NLP

* Why is it that there seems to be little attention paid to semantic molecules? The paper makes use of norms, but makes no mention of compositionality, which I think would have enriched the discussion.
* how “fuzzy” can the objects themselves get before the results presented begin to break down? And what additional insights could we gain from such a study? By “fuzzy” I mean ambiguous / between categories / difficult to identify / atypical for a category.
* The authors speak of “seeing the distributions of words in texts as a semantic space for understanding what objects look like”. To what extent can we call this understanding, even within the conventional ML/AI usage of the term? Do you see any qualitative difference between “understanding” between zero-shot methods and other, more traditional methods, such as feature-based classification? What accounts for the different shapes of the curves in figure 4 (especially seen vs unseen in the first graph for the Gaussian model)?
* → Lojban
* → Korean NLP (+ Semitic)
* → Chinese tokenization & parsing
* → Esperanto NLP
* → Volapük
* graph embeddings, word graphs, and word embeddings → graph mappings, → translation digraphs and embeddings, → applications to interpretability and human language learning
* Acoustic model interpolation for non-native speechrecognition
* Non-native English speaker’s speech correction, based on domain focused document
* Accent Embeddings?
* Accent Interpolation?
* Content-Preserving Phonetic Style Transfer
* Disentanglement of Accent-Related and Semantic Content in
* Interpolation between speech samples (1 human with transcript, other with TTS)?
* Multi-Dimensional Transfer and Interpolations of Speech Characteristics
* Non-native speech recognition using characteristic speech features, with respect to nationality
* This thesis introduces a new method for disentangling phonetic information from non-phonetic information contained in a speech signal
* This thesis presents and analyzes several methods for non-parallel accent transfer between speakers. A key finding is
* Triplet metric learning for IPA symbols
* Transducer model in dual-objective accent transfer:

## - train model from samples of same words?

## --- get these words from ASR models?

## --- by hand (small sample sufficient? set of high-frequency words?)

## --- from text aligned to data?

## --- unsupervised approach using word segmentation, then recognition of corresponding words? or triphones?

## --- semi-supervised approach? (bootstrapping from small set of parallel pairs?)

## - use relative frequency?

## > train model on both sets of (prior) phones?

## > or train embedding model from combined dataset? --> learns overall "nearness" of sounds

## > use discreteness in one or both of the objectives? -> sum of p(s_{n} | s_{n-1}) weighted by respective value of each vector element

## > possible to use iteration? - e.g. first from past, then from future, or alternating L1 and L2, until convergence or stopping after n rounds

## > how to use autoregression?

## > use panel data estimation methods

## > simply concatenate both vector sequences?

## > use smoothing (of target posteriorgram) for more realistic-sounding audio

* Use fine-grained phonetic information to investigate how mother tongue influences pronunciation of a foreign language. R-squared -> how much can be predicted from mother tongue alone?
* Cluster analysis on spectrograms? -> good for outlier analysis
* 2 approaches:
* 1) GAN with dual loss: difference between target accent-specific ASR output and original text; classification probability for non-target accent
* 2) GAN on phonetics only (some kind of constraint for content or search on space of possible sounds for words) and subsequent speech synthesis
* Possible to use separate model in loss function (ASR model)? Or necessary to use as non-differentiable parameters in model?

> run GAN on that (native vs non-native?)

> or just use mapping of sound discrepancy onto oral and vocal positions for accent improvement?

() Make accent trainer: IPA transcription & comparison, style transfer (which languages?), oral cavity visualizations--> which audio corpora are available? which could I create from existing audio sources? which would I have to collect?

() Use video / sensor data from mouth and vocal tract

##
