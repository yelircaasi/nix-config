# Polyglot Toolkit

### PolyglotToolkit

* Reader features (browser-based?) for parellel text, interlineator, etc.: make reference-languuage small and faint (and customizable) or togglable to make it easier to focus on the target language

```
* i \in [j-3, j + diff + 3]
* r > c: j-3 \leq i \leq j+d+3
* c > c: i-3 \leq j \leq i+d+3

```
* other PolyglotToolkit Projects: translation-trainer: use tatoeba or supplied parallel text (optimally with multiple translations), compute metrics, show diff, display dashboard, etc.language utility (pre-processor) packages, esp for Arabic, Ancient Greek, ChineseAlignment Tool(s)make GUI tool (or nvim plugin) for manual sentence/word alignmentCLI for viewing parallel texts in the terminalVocalizer: add diacritics to language (seq2seq package) - for arabic, hebrew, ancient greek, latin (with macros → [Alatius/latin-macronizer),](https://github.com/Alatius/latin-macronizer),) [ictibus.blogspot.com/,](http://ictibus.blogspot.com/,) [ilovegooglebooks.blogspot.com/search/label/macrons,](http://ilovegooglebooks.blogspot.com/search/label/macrons,) russian → [russiangram.com/,](https://russiangram.com/,) easy test case for training data, ukrainianLatin error detector: fix wrong endings → right architecture for finding single location (here error) in a sequenceMaybe start with Ancient Greek diacritics: easy data, learnable objectiveuse PoS tagging, Wiktionary word info (via Wiktionary tool) → later dependency parsing?

## Expression Translation Tables (→ Multi-Word Expression Project, Proverbs Project)

* [en.wiktionary.org/wiki/Category:Multiword_terms_by_language](https://en.wiktionary.org/wiki/Category:Multiword_terms_by_language)

## Parallel Text Aligner

# Parallel Text Alignment (and Formatting)

* [yelircaasi/parallel-text-aligner](https://github.com/yelircaasi/parallel-text-aligner)
* [yelircaasi/parallel-text-finisher](https://github.com/yelircaasi/parallel-text-finisher)

 example: [2books.su/](https://2books.su/)
* saved links to sort
    * PTF

        PTF Roadmap: simple end-to-end case: 2 aligned files, simple config, simple output PDFrefine project structurerefine config structure % options: first sample text, add book form with chapterswrite unit testswrite integration testsinstall texlive with all necessary packages in alpine container-> learn texlive structure & content of various packages (deb, but especially apk)-> slim down alpine texlive container (dockerslim? graph of files read during command execution?)

        make config format for book, chapter, article, simple, etc.
* [Converting Markdown to Beautiful PDF with Pandoc - jdhao's digital space](https://jdhao.github.io/2019/05/30/markdown2pdf_pandoc/)
* [mirror/busybox: BusyBox mirror](https://github.com/mirror/busybox)
* [Alpine Linux](https://wiki.alpinelinux.org/wiki/Main_Page)
* [alpinelinux/apk-tools: [MIRROR] Alpine package manager](https://github.com/alpinelinux/apk-tools)
* [try this:](https://dvc.org/doc/user-guide/data-management/remote-storage/google-drive) → for parallel text data and also for my own pdfs
* [Wandmalfarbe/pandoc-latex-template](https://github.com/Wandmalfarbe/pandoc-latex-template)

        add Epictetus' works:
* [Encheiridion Epictetus - Documentos de Google](https://docs.google.com/document/d/1sXjcRTugUiL0UN-QQUzfKv7BpZwJL-h6UTaQCpSlxSo/edit#)
* [Sfoglia per autore | Traduci Versioni](https://traduciversioni.it/authors)

    Free bilingual book French / English, The Adventures of Tom Sawyer,    CHAPITRE XIV —    CHAPTER XIV.
* [http://bilinguis.com/book/tomsawyer/fr/en/c14/](https://languagefixation.wordpress.com/2011/02/23/how-to-create-parallel-texts-for-language-learning-part-2/)
* [How to create parallel texts for language learning, part 2 | Language Fixation](https://languagefixation.wordpress.com/2011/02/23/how-to-create-parallel-texts-for-language-learning-part-2/)
* [hunalign – sentence aligner | Média Oktató és Kutató Központ](http://mokk.bme.hu/resources/hunalign/)
* [hunalign/src at master · danielvarga/hunalign](https://github.com/danielvarga/hunalign/tree/master/src)
* [kindlychung/af-aligner: LF Aligner helps translators create translation memories from texts and their translations. It relies on Hunalign for automatic sentence pairing. Input: txt, doc, docx, rtf, pdf, html. Output: tab delimited txt, TMX and xls. With web features.](https://github.com/kindlychung/af-aligner)

    Forced Alignment with Wav2Vec2 — Torchaudio nightly documentation
* [SimAlign: High Quality Word Alignments Without Parallel Training Data Using Static and Contextualized Embeddings - 2020.findings-emnlp.147.pdf](https://aclanthology.org/2020.findings-emnlp.147.pdf)
* [LF Aligner - Browse Files at SourceForge.net](https://sourceforge.net/projects/aligner/files/)
* [SuperAlign download | SourceForge.net](https://sourceforge.net/projects/superalign/)
* [bitext2tmx CAT bitext aligner/converter download | SourceForge.net](https://sourceforge.net/projects/bitext2tmx/)
* [OmegaT - multiplatform CAT tool download | SourceForge.net](https://sourceforge.net/projects/omegat/)
* [Государство (Платон) — Викитека](https://ru.wikisource.org/wiki/%D0%93%D0%BE%D1%81%D1%83%D0%B4%D0%B0%D1%80%D1%81%D1%82%D0%B2%D0%BE_(%D0%9F%D0%BB%D0%B0%D1%82%D0%BE%D0%BD))
* [What Does Exodus 15:17 Mean? "Thou wilt bring them in, and plant them in the mountain of thine inheritance, The place, O Jehovah, which thou hast made for thee to dwell in, The sanctuary."](https://www.biblestudytools.com/exodus/15-17-compare.html)
* [Are JRR Tolkien's works in the public domain since most of them were written in the 1940s and 30s? - Quora](https://www.quora.com/Are-JRR-Tolkiens-works-in-the-public-domain-since-most-of-them-were-written-in-the-1940s-and-30s)
* [Aristotle - Wikisource, the free online library](https://en.wikisource.org/wiki/Author:Aristotle)
* [The Prophet (Gibran) - Wikisource, the free online library](https://en.wikisource.org/wiki/The_Prophet_(Gibran))
* [The World’s Most Translated Books - Day Translations Blog](https://www.daytranslations.com/blog/the-worlds-most-translated-books/)
* [Free bilingual book German / English, Alice's Adventures in Wonderland,    Inhalt. —    CO](http://bilinguis.com/book/alice/de/en/)NTENTS
* [Download Quran Text - Tanzil](https://tanzil.net/download/)
* [Quran Translations - Tanzil](https://tanzil.net/trans/)
* [Al-Quran [1]](https://al-quran.info/#1)
* [Über das Projekt | Corpus Coranicum](https://corpuscoranicum.de/de/about)
* [The Most Translated Documents in History - ITC USA](https://www.itcglobaltranslations.com/blog/the-most-translated-documents-in-history/)
* [Manifesto of the Communist Party - Wikisource, the free online library](https://en.wikisource.org/wiki/Manifesto_of_the_Communist_Party)
* [بيان الحزب الشيوعي](https://www.marxists.org/arabic/archive/marx/1848-cm/01.htm)
* [Index Translationum - Wikipedia](https://en.wikipedia.org/wiki/Index_Translationum)
* [10 books you can read on Karl Marx in Arabic - Books - Ahram Online](https://english.ahram.org.eg/NewsContent/18/0/299375/Books/-books-you-can-read-on-Karl-Marx-in-Arabic.aspx)
* [Tokenizer](https://huggingface.co/docs/transformers/main_classes/tokenizer)
* [Summary of the tokenizers](https://huggingface.co/docs/transformers/tokenizer_summary)
* [python - Plotting a 2D heatmap - Stack Overflow](https://stackoverflow.com/questions/33282368/plotting-a-2d-heatmap)
* [OHCHR | Universal Declaration of Human Rights - German (Deutsch)](https://www.ohchr.org/en/human-rights/universal-declaration/translations/german-deutsch)
* [Universal Declaration of Human Rights | United Nations](https://www.un.org/en/about-us/universal-declaration-of-human-rights)
* [SynWMD: Syntax-aware Word Mover's Distance for Sentence Similarity Evaluation](https://arxiv.org/abs/2206.10029)
* [How to Make a Language Translator - Intro to Deep Learning #11](https://youtu.be/nRBnh4qbPHI)
* [Word alignment - Cutting the chicken-egg problem | MT talks #8](https://youtu.be/mqyMDLu5JPw)
* [JelteF/PyLaTeX: A Python library for creating LaTeX files](https://github.com/JelteF/PyLaTeX)

    Alignment approach:1) predict probability of text problems, use this to set k (number of superdiagonals)2) create length-based grid structure3) load models4) find anchor points5) solve alignment sub-problems between anchor points6) flag low-scoring alignments

    Alignment:A) create grid visualization -> how to draw an uneven grid in Matplotlib -> view implementations in different gantt reposB) visualize diagonal distortion from deletion / insertion: how many additional sub-/superdiagonals are needed to cover the true alignment?C) create absolute length-based predictor for each language pair: fit distribution to absolute lengths  -> normal distribution with delta a function of lengths (2 lengths in pair), could be: OLS, quantile regression, logistic regression with 2 inputs -> use as text problem predictor

    Alignment: function word translation probabilities, BoW, BoW with relative position information
* [Sentence alignment - Gale & Church | MT talks #7](https://www.youtube.com/watch?app=desktop&v=_4lnyoC3mtQ)
* [Beam Search in Seq2Seq Model. We learnt about a basic seq2seq model… | by Dharti Dhami | Medium](https://medium.com/@dhartidhami/beam-search-in-seq2seq-model-7606d55b21a5)
* [Beam Search in Seq2Seq Model. We learnt about a basic seq2seq model… | by Dharti Dhami | Medium](https://medium.com/@dhartidhami/beam-search-in-seq2seq-model-7606d55b21a5)
* [What is Beam Search? Explaining The Beam Search Algorithm | Width.ai](https://www.width.ai/post/what-is-beam-search)
* [dbamman/latin-bert: Latin BERT](https://github.com/dbamman/latin-bert)
* [pranaydeeps/Ancient-Greek-BERT · Hugging Face](https://huggingface.co/pranaydeeps/Ancient-Greek-BERT)
* [pranaydeeps/Ancient-Greek-BERT: Pre-trained BERT Models for Ancient and Medieval Greek, and associated code for LaTeCH 2021 paper titled - "A Pilot Study for BERT Language Modelling and Morphological Analysis for Ancient and Medieval Greek"](https://github.com/pranaydeeps/Ancient-Greek-BERT)
* [alvations/NTU-MC/blob/master/ntumc/toolkit/gale_church.py](https://github.com/alvations/NTU-MC/blob/master/ntumc/toolkit/gale_church.py)
* [dowobeha/Gale_and_Church_1993](https://github.com/dowobeha/Gale_and_Church_1993)

    Supervised Mover s Distance [google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwjN8dyrmYL-AhXP-6QKHXaoBAoQFnoECAYQAQ&url=https%3A%2F%2Fpeerj.com%2Fpreprints%2F26847.pdf&usg=AOvVaw0U0yhoLXnJ1lxl0sbmIRCp](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwjN8dyrmYL-AhXP-6QKHXaoBAoQFnoECAYQAQ&url=https%3A%2F%2Fpeerj.com%2Fpreprints%2F26847.pdf&usg=AOvVaw0U0yhoLXnJ1lxl0sbmIRCp)
* [Massively Multilingual Document Alignment with Cross-lingualSentence-Mover’s Distance](https://youtu.be/0GmRL4rj_dA)

## Roadmap

* [x]  Find good text sources
* [x]  Open a .txt file in Julia
* [x]  Tokenize sentences in Julia using WordTokenizer.jl
* [ ]  [JelteF/PyLaTeX](https://github.com/JelteF/PyLaTeX) → import, vendor, or recreate what I need from scratch?- [ ]  look at this for epub: [yihong0618/bilingual_book_maker](https://github.com/yihong0618/bilingual_book_maker)
* [ ]  split [pltk repo](https://github.com/yelircaasi/pltk) into multiple projects → decide which language for which one
* [ ]  Bitext Alignment book
* Gale-Church
* [ ]  [Gale-Church Paper](https://aclanthology.org/J93-1004.pdf)
* [ ]  [TakeLab/Coral](https://github.com/TakeLab/Coral)
* [ ]  [NLTK Gale-Church](https://github.com/nltk/nltk/blob/a915791ad501d41dbb7e3c13c4877a734505eaab/nltk/translate/gale_church.py)
* [ ]  [alvations/gachalign](https://github.com/alvations/gachalign)
* [ ]  [vosmann/galechurch](https://github.com/vosmann/galechurch)
* [ ]  [alvations/NTU-MC/blob/master/ntumc/toolkit/gale_church.py](https://github.com/alvations/NTU-MC/blob/master/ntumc/toolkit/gale_church.py)
* [ ]  [dowobeha/Gale_and_Church_1993](https://github.com/dowobeha/Gale_and_Church_1993)
* [ ]  [amake/JAlignRegions](https://github.com/amake/JAlignRegions)
* [ ]  [gitpan/Text-GaleChurch](https://github.com/gitpan/Text-GaleChurch)
* [ ]  [sbert.net/index.html](https://www.sbert.net/index.html)
* [ ]  [Triplet Transformer Network for Multi-Label Document
* Classification](https://dl.acm.org/doi/pdf/10.1145/3558100.3563843)- [ ]  [abarthakur/multilabel-deep-metric](https://github.com/abarthakur/multilabel-deep-metric)
* [ ]  [rsennrich/Bleualign](https://github.com/rsennrich/Bleualign)
* [ ]  [bfsujason/bertalign*](https://github.com/bfsujason/bertalign*) [doi.org/10.1093/llc/fqac089](https://doi.org/10.1093/llc/fqac089)
* [ ]  [thompsonb/vecalign](https://github.com/thompsonb/vecalign)
* [Vecalign: Improved Sentence Alignment in Linear Time and Space](http://aclanthology.lst.uni-saarland.de/D19-1136.pdf)- [ ]  [facebookresearch/LASER](https://github.com/facebookresearch/LASER)
* [ ]  [bojone/labse*](https://github.com/bojone/labse*) [huggingface.co/sentence-transformers/LaBSE](https://huggingface.co/sentence-transformers/LaBSE)
* [ ]  [danielvarga/hunalign](https://github.com/danielvarga/hunalign)
* [ ]  [LowResourceLanguages/champollion](https://github.com/LowResourceLanguages/champollion)
* [ ]  [A survey on parallel corpora alignment](http://andrefs.github.io/publications/files/1102_corpalignment_mistar.pdf)- [ ]  [Revisiting sentence alignment algorithms for alignment visualization and evaluation](https://aclanthology.org/www.mt-archive.info/10/BUCC-2012-Yu.pdf)- [ ]  [Improve Sentence Alignment by Divide-and-conquer](https://arxiv.org/abs/2201.06907)- [ ]  [Very Low Resource Sentence Alignment: Luhya and Swahili](https://arxiv.org/abs/2211.00046)- [ ]  [Sentence Alignment with Parallel Documents Facilitates Biomedical Machine Translation](https://arxiv.org/abs/2104.08588)- [ ]  [Bilingual alignment transfers to multilingual alignment for unsupervised parallel text mining](https://arxiv.org/abs/2104.07642)- [ ]  [A New Aligned Simple German Corpus](https://arxiv.org/abs/2209.01106)- [ ]  [Exploiting Parallel Corpora to Improve Multilingual Embedding based Document and Sentence Alignment](https://arxiv.org/abs/2106.06766)- [ ]  [PMIndia -- A Collection of Parallel Corpora of Languages of India](https://arxiv.org/abs/2001.09907)- [ ]  [Robust Cross-lingual Embeddings from Parallel Sentences](https://arxiv.org/abs/1912.12481)- [ ]  [A Large Parallel Corpus of Full-Text Scientific Articles](https://arxiv.org/abs/1905.01852)- [ ]  [Vicinity-Driven Paragraph and Sentence Alignment for Comparable Corpora](https://arxiv.org/abs/1612.04113)- [ ]  [Learning Bilingual Sentence Embeddings via Autoencoding and Computing Similarities with a Multilayer Perceptron](https://arxiv.org/abs/1906.01942)- [ ]
* [ ]  [bitbucket.org/tiedemann/lingua-align/wiki/Home](https://bitbucket.org/tiedemann/lingua-align/wiki/Home)
* [ ]  [robertostling/efmaral](https://github.com/robertostling/efmaral)
* [ ]  Later: add desktop gui app using these as dependencies → [build-system.fman.io/](https://build-system.fman.io/) (or simply pyinstaller) with Darling and Wine to build for all 3 platforms (first try small toy example)
* OLDER
* [ ]  [docs.julialang.org/en/v1/manual/types/](https://docs.julialang.org/en/v1/manual/types/)
* [ ]  write general visualization functions for grids and matrice
* [ ]  plot(0:0.1:1, 0:0.1:1, xticks=[0,0.5,1], yticks=[0,0.5,1])
* [docs.juliaplots.org/latest/generated/attributes_axis/](http://docs.juliaplots.org/latest/generated/attributes_axis/)
* [ ]  Make geometric weight grid and develop algorithm to find diagonal alignments
* [ ]  create visualizations of the above
* [ ]  Make score vector matrix (tensor?)
* [ ]  Read [Bitext Alignment](https://drive.google.com/file/d/1q7olx20hWgCb85vW4F6YfHiK58JPmYEG/view?usp=sharing)
* [ ]  Read [Overview of BA Algorithms](https://drive.google.com/file/d/1cVFNvbJ1Tjr-14yQh_l8kYnaOhVumxsp/view?usp=sharing)
* [ ]  read neural alignment papers / tools

* [ ]  ‣            * [ ]  ‣            * [ ]  [hunalign – sentence aligner | Média Oktató és Kutató Központ](http://mokk.bme.hu/resources/hunalign/)
* [ ]  [farkastranslations.com/alignment.php](https://farkastranslations.com/alignment.php)
* [ ]  ‣            * [ ]  ‣            * [ ]  The protein-protein interaction network alignment using recurrent neural networ
* [ ]  [Neural Network Alignment for Sentential Paraphrases](https://aclanthology.org/P19-1467.pdf)
* [ ]  Accelerating DNA pairwise sequence alignment using FPGA and a customized convolutional neural networ
* [ ]  [Enhanced Self-Organizing Map Neural Network for DNA Sequence Classification](https://file.scirp.org/pdf/IIM_2013012416282128.pdf)
* [ ]  [Neural Time Warping For Multiple Sequence Alignment](https://arxiv.org/abs/2006.15753)
* [ ]  [A Neural Multi-sequence Alignment TeCHnique (NeuMATCH)](https://openaccess.thecvf.com/content_cvpr_2018/papers/Dogan_A_Neural_Multi-Sequence_CVPR_2018_paper.pdf)
* [ ]  [Gapped sequence alignment using artificial neural networks: application to
            the MHC class I system](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6402319/)
* [ ]  [NN-align. An artificial neural network-based alignment algorithm for MHC class II peptide binding prediction](https://pubmed.ncbi.nlm.nih.gov/19765293/)
* [ ]  [TEMPORAL ALIGNMENT PREDICTION FOR SUPER- VISED REPRESENTATION LEARNING AND FEW-SHOT SEQUENCE CLASSIFICATION](https://openreview.net/pdf?id=p3DKPQ7uaAi)
* [ ]  [High-speed all-optical DNA local sequence alignment based on a three-dimensional artificial neural network](https://www.osapublishing.org/josaa/abstract.cfm?uri=josaa-34-7-1173)
* [ ]  [deepai.org/publication/mask-align-self-supervised-neural-word-alignment](https://deepai.org/publication/mask-align-self-supervised-neural-word-alignment)
* [ ]  [A Discriminative Neural Model for Cross-Lingual Word Alignment](https://www.arxiv-vanity.com/papers/1909.00444/)
* [ ]  [Bitext Maps and Alignment via Pattern Recognition](https://www.researchgate.net/publication/2478530_Bitext_Maps_and_Alignment_via_Pattern_Recognition)
* [ ]  [An Empirical Investigation of Word Alignment Supervision for Zero-Shot Multilingual Neural Machine Translation](
* [ ]  [Lesan -- Machine Translation for Low Resource Languages](https://arxiv.org/abs/2112.08191)
* [ ]  [Link-Intensive Alignment for Incomplete Knowledge Graphs](https://arxiv.org/abs/2112.09266)
* [ ]              * [ ]  [en.wikipedia.org/wiki/Parallel_text](https://en.wikipedia.org/wiki/Parallel_text) (see links!
* [ ]  [www-i6.informatik.rwth-aachen.de/web/Tools/GIZA++.html](http://www-i6.informatik.rwth-aachen.de/web/Tools/GIZA++.html)
* [ ]  [terminotix.com/index.asp?content=item&item=49&lang=en](https://terminotix.com/index.asp?content=item&item=49&lang=en)
* [ ]  [nlp.jhu.edu/parabank/](https://nlp.jhu.edu/parabank/)
* [ ]  [Towards Neural Machine Translation with Partially Aligned Corpora](https://arxiv.org/abs/1711.01006)
* [ ]  [WikiMatrix: Mining 135M Parallel Sentences in 1620 Language Pairs from Wikipedia](https://arxiv.org/abs/1907.05791)
* [ ]
* [ ]  Read SMT Tutorial Workbook)
* [ ]  Read [Neural Machine Translation and Sequence-to-sequence Models: A Tutorial](https://arxiv.org/pdf/1703.01619)
* [ ]  Julia Programming Projects.pdf
* [ ]  Read Hands-on Design Patterns and Best Practices with Julia
* [ ]  Read Julia 1.0 Programming Dynamic and High-Performance Programming to Build Fast Scientific Applications
* [ ]  Read Julia Docs, especially sections on packaging and high-performance tips
* [ ]  learn about diff algorithms → application to bitext alignment?        * [ ]  [4 Diff Algorithms in Git](https://link.springer.com/article/10.1007/s10664-019-09772-z)
* [ ]  [git-scm.com/docs/git-diff](https://git-scm.com/docs/git-diff)
* [ ]  [en.wikipedia.org/wiki/Diff](https://en.wikipedia.org/wiki/Diff)
* [ ]  [luppeng.wordpress.com/2020/10/10/when-to-use-each-of-the-git-diff-algorithms/](https://luppeng.wordpress.com/2020/10/10/when-to-use-each-of-the-git-diff-algorithms/)
* [ ]  [malvikasharan/Alignment-Algorithms](https://github.com/malvikasharan/Alignment-Algorithms)
* [ ]  for sentence matching classifier: [Inter-Weighted Alignment Network for Sentence Pair Modeling](https://aclanthology.org/D17-1122.pdf)
* [ ]  [Improving neural sentence alignment with word translation](https://link.springer.com/article/10.1007/s11704-019-9164-3)
* [ ]  [Cross-Sentence Alignment with Deep Neural Networks](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwj11fSdpaz1AhUG8rsIHQ7JCRUQFnoECAgQAQ&url=https%3A%2F%2Flink.springer.com%2Fchapter%2F10.1007%2F978-3-030-27947-9_16&usg=AOvVaw0r6O7LmghTzp_vvABO6PyI)
* [ ]  [Word Alignment Modeling with Context Dependent Deep Neural Network](https://aclanthology.org/P13-1017.pdf)
* [ ]  [Neural network alignment for sentential paraphrases](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwj11fSdpaz1AhUG8rsIHQ7JCRUQgAMoAXoECAEQAw&url=https%3A%2F%2Fscholar.google.de%2Fscholar_url%3Furl%3D)
        https%3A%2F%2Fwww.aclweb.org%2Fanthology%2FP19-1467.pdf%26hl%3Dit%26sa%3DX%26ei%3D1NPeYbnfC8CVy9YPkO25qAM%26scisig%3DAAGBfm2d9BeLWAihhOGm-qVK6R3pxYm9Yw%26oi%3Dscholarr&usg=AOvVaw3inDZXW5pNu1YjIykpxWeF)
* [ ]  The TransBank Aligner: Cross-Sentence Alignment with Deep Neural Networks
* [ ]  [Iterative, MT-based Sentence Alignment of Parallel Texts](https://www.semanticscholar.org/paper/Iterative%2C-MT-based-Sentence-Alignment-of-Parallel-Sennrich-Volk/b74b3e52011a0b55f6f7187d3486fb3ae34d1e6e)
* [ ]  [Inter-Weighted Alignment Network for Sentence Pair Modeling](https://aclanthology.org/D17-1122.pdf)
* [ ]  [Neural CRF Model for Sentence Alignment in Text Simplification](https://cocoxu.github.io/publications/ACL2020_sentence_alignment.pdf)
* [ ]  [A Deep Neural Network Approach To Parallel Sentence Extraction](https://arxiv.org/pdf/1709.09783)
* [ ]  [Folder](https://drive.google.com/drive/folders/1e0e4dfhe6Ln8rBy9P_DFI9mJOfPxbyN0?usp=sharing)
* [ ]  [Text Technology Project (Quality Resources)](https://docs.google.com/spreadsheets/d/1U0VKGtTF4XOXSPsnb8SFIP5z87IOiDTcwSgDv_SUQww/edit?usp=sharing)
* [ ]  [downsub.com](http://downsub.com/)
* [ ]  [mp3cut.net/es/#](http://mp3cut.net/es/#)
* [ ]  [toolster.net/mp3_cutter](http://toolster.net/mp3_cutter)
* [ ]  [audiotrimmer.com/fr/](https://audiotrimmer.com/fr/)
* [ ]  [onlinevideoconverter.com/es/video-converter](https://www.onlinevideoconverter.com/es/video-converter)
* [ ]  translation practice
* [ ]  create parallel text (.txt → python → tex)
* [ ]  vocab test
* [ ]  reader (with functiion words / basic list removed); list words & lemmas to learn
* [ ]  reverso-type context display for lemma (multiple translations for each context)
* [ ]  tool to identify well-known words & words to work on (ML?)
* [ ]  [Bitext Maps and Alignment via Pattern Recognition (1999)](https://www.aclweb.org/anthology/J99-1003.pdf)
* [ ]  [Bilingual Lexicon Induction via Unsupervised Bitext Construction and Word Alignment](https://arxiv.org/abs/2101.00148)
* [ ]  [Bitext alignment for statistical machine translation](https://dl.acm.org/doi/book/10.5555/1195091)
* [ ]  [Segmentation and alignment of parallel text for statistical machine translation](https://www.researchgate.net/deref/http%3A%2F%2Fdx.doi.org%2F10.1017%2FS1351324906004293)
* [ ]  Book: Bitext Alignment
* [ ]  [Gale Church Paper](https://www.aclweb.org/anthology/J93-1004.pdf)
* [ ]  bitext alignment with word embeddings - Cerca con Google
* [ ]  [Building an Italian-Chinese Parallel Corpus for Machine ...](https://dl.acm.org/doi/abs/10.1145/3411170.3411258)
* [ ]  [Sentence alignment using feed forward neural network](https://pubmed.ncbi.nlm.nih.gov/17285688/)
* [ ]  [Deep Neural Networks at the Service of Multilingual Parallel ...](https://aclanthology.org/C18-1116.pdf)
* [ ]  [A Supervised Word Alignment Method based on Cross ...](https://aclanthology.org/2020.emnlp-main.41.pdf)
* [ ]  [Neural machine translation: A review of methods, resources, and tools](https://www.sciencedirect.com/science/article/pii/S2666651020300024)
* [ ]  → how to use beam search in neural network (Flux.jl, PyTorch, TensorFlow)
* [ ]  how do namespaces work in Julia?
* [ ]  read about Julia plotting libraries

## Architecture

* 1. Text input methods
* 2. Text tokenization
* 3. Text alignment → alternative entry point for pre-aligned texts
* 4. Manual verification of aligned texts
* 5. Formatting options for LaTeX (choice between manual / YAML file)
* 6. LaTeX compilation and outpu

## Tech Stack

* Julia

    → which gui?
         → [towardsdatascience.com/6-julia-frameworks-to-create-desktop-guis-and-web-apps-9ae1a941f115](https://towardsdatascience.com/6-julia-frameworks-to-create-desktop-guis-and-web-apps-9ae1a941f115)

    → [syl1.gitbook.io/julia-language-a-concise-tutorial/language-core/11-developing-julia-packages](https://syl1.gitbook.io/julia-language-a-concise-tutorial/language-core/11-developing-julia-packages)
* LaTeX
* Docker
* Web interface

    → which tools?

    → how to host?

## Text Sources

* [gutenberg.org/](https://www.gutenberg.org/)
* [en.wikisource.org/wiki/Main_Page](https://en.wikisource.org/wiki/Main_Page)
* [ws-export.wmcloud.org/?lang=en&title=The_Brothers_Karamazov](https://ws-export.wmcloud.org/?lang=en&title=The_Brothers_Karamazov)
* [fb2bookfree.com/](https://fb2bookfree.com/)
* [archive.org/](https://archive.org/) (good for imperfect texts, OCR, etc.)

## Preprocessing

* Input formats:
* .txt
* .csv
* .epub
* .fb2
* .htm(l)
* .xml (also common intermediate format?)
* Hierarchy:

      Chapter > Paragraph > Sentence > Phrase > Word (?)
* Tokenization at each level given above → see [WordTokenizers.jl](https://www.theoj.org/joss-papers/joss.01956/10.21105.joss.01956.pdf) for sentence and word level; use regex and pattern recognition for others
* Data structure:

## Bitext Alignment Component

* Data structures:
* text segment structures: string array?
* alignment structure: text segment structures, corresponding alignment index arrays → how to most structure indices to allow for efficient frequent shifting of indices? mutable struct?
* n x m grid of alignment scores → filled in on “diagonal” (relative positional overlap) and within k of the “diagonal” to be learned with a max-margin approach: softmax regression over features?
* geometric grid, where side lengths represent relative weight → use to find diagonal
* feature vector for each proposed alignment: punctuation counts, stop word counts, capitalization counts (where applicable), word length, relative word length, relative character length, basic part of speech counts, etc. → tensor? dataframe with vector entries? → einsum notation for computations?
* n x m score matrix
* segment type annotations (predicted probabilities, types: paragraph, chapter title, page number, footnote):  → to feature vector?
* Scoring Models: TODO: [Draw diagram](https://app.diagrams.net/)
* concatenation of both feature vectors (→ their difference will be learned internally in the small neural network) as input to a small scoring model (FFNN?)
    * trained by max margin: gold alignment given 1, each alignment in both directions with neighbors no further than j positions away scored 0 → triplet loss?
    * 1 basic relative weight-based model (linear regression likely sufficient) and many language-pair-specific models (FFNN likely superior)
* Triplet / Siamese network to learn sentence pair scores from a relatively small set of function words (stop words) (and other very high-frequency lemmas?):
* sentence → representation → aggregation → dense embedding model (except for models where aggregation and embedding occur together) → dot product / cosine distance as score (to be minimized)
* Key assumption: this score will be - with very high probability - higher for correct than for incorrect alignments (especially for true alignments vs neighboring alignments)
* → idea: add normalized length measures (character, token)
    * function-word translation probabilities - using a small set of frequent (i.e. function) words, their co-occurrence probabilities (or perhaps relative probabilities → log-odds ratio?) can be used to generate a score for each sentence pair
    * bag-of-words-based score
    * expanded bag-of-words-based scores (many variations possible): use positional encodings / positional embeddings (as in Transformer, or more simply one-hot for word being in part k → see part about 2D input)? additional token types such as before/after function words, i.e. words mapped to likely types
    → how to use positional encodings?
    * very low-dimensional embeddings for k most frequent words (PCA or other dimensionality reduction technique from pre-trained)
    * 2D input, convolutional element → variation on each model below
    * LSTM-based embeddings
    * simple encoder-decoder-based embeddings
    * Transformer/attention-based embeddings
* Approaches:
* 1. Relative Weight-Based (i.e. length-based)
    1. paragraph
    2. sentence
* 2. Content overlap-based
    1. lexicon-based
        1. stop-words (N most frequent) - more efficient
        2. larger or even practically-full lexicon (or lemma) set to learn co-occurrence probabilities from - less efficient, greater accuracy possible → see above
        3. recognition and use of proper nouns
        4. word embedding-based? → see above
    2. punctuation-based
    3. consecutive n-gram overlap scores (with transliteration mapping rules)
* 3. Neural approach
    1. one idea: all easy-to-compute features as input to alignment model (cf. non-neural?)
        1. baseline language-agnostic model from relative weight-based features
        2. language pair-specific additional features: bigrams, punctuation, stop words (→ possibly better to have overlap of possible translations of stop words, potentially weighted by translation probability), proper noun recognition, etc.
* 4. Parameter tuning from training data (for all or most of the above) - possible (more primitive) alternative to the neural approach
* 5. binary predictor for matching segment pairs: match / no match → possibility of using and tuning word embeddings
* → embed sentence and use triplet network training to maximize “closeness” of respective embeddings
* → predict PoS for all words, use filler PoS embeddings for all words not in stop words, punctuation, N most common lemmas
* → embed each token, use two sequence models to each output a “sentence” (text unit) embedding, tor input to triplet loss
* → use beam search on the output of this to find most likely alignments
* 6. translation-based approach
    1. full neural / statistical MT
    2.  → [opennmt.net/,](https://opennmt.net/,)
* [huggingface.co/docs/transformers/model_doc/marian](https://huggingface.co/docs/transformers/model_doc/marian)
* [marian-nmt.github.io/](https://marian-nmt.github.io/)
     [opus.nlpl.eu/Opus-MT/](https://opus.nlpl.eu/Opus-MT/)
* 7. RL-based approach: advantage of relatively small action space, typically limited number of look-aheads → how to parametrize environment, policy, etc.? → which algorithm(s) to use?
* Other ideas:
* use “breakpoints” - likely paragraph, section, chapter etc. breaks → indicator of likelihood of certain alignments (naturally not ironclad)
* proper noun anchoring approach: identify proper nouns (NER + pattern matching?) → different approaches for different language pairs
* Modules
* Noiser: take clean and aligned texts (alignment data structure) and add noise, split some segments, combine some segments, to imitate look of Wiktionary or Project Gutenberg, etc. formats → input to training algorithms, with ground truth available (use break point tags to keep track of equivalences → one set for each version, clean and noisy, and in master data structure both)

### Relevant Algorithms

* 1. Beam Search (adapted to bitex alignment
* 2. Anchor point seeded beam search
    1. diagonal max overlap
    2. k steps in either direction for $4k^2$  possible alignments
    3. search over proposed alignments, narrowing the search space as much as possible when high-quality alignments are found
    4. → see Bitext Alignment (2) for ideas on how to implement this
    5. above, but with max lookahead, before selecting anchor points above a certain threshold and continuing from there
* 3. multilingual alignment with modified version of 1. (more than 2 languages at a time for greater robustness)
* → [en.wikipedia.org/wiki/Category:Search_algorithms](https://en.wikipedia.org/wiki/Category:Search_algorithms)
* 1. RL-powered search?
* 2. Score grid traversal: 7 lookaheads (possible next alignments), need to re-evaluate 4 of those to see if alignment scores improve after combining segments
* 3. anchor traversal: once p reliable good anchors are found (scores above a pre-determined threshold), reduce search space to feasible paths between anchors → algorithm to compute permissible paths / re-compute diagonals
* 4.

## Extensions

* juxtalinear LaTeX generator
* interlinear LaTeX generator
    * including from parallel texts
* GUI app (in Rust? in Julia? in C++?)
* [stackoverflow.com/questions/35328468/how-to-make-a-gui-in-julia](https://stackoverflow.com/questions/35328468/how-to-make-a-gui-in-julia)
* [dev.to/davidedelpapa/rust-gui-introduction-a-k-a-the-state-of-rust-gui-libraries-as-of-january-2021-40gl](https://dev.to/davidedelpapa/rust-gui-introduction-a-k-a-the-state-of-rust-gui-libraries-as-of-january-2021-40gl)
* Other
* → make interlinear reading app and interlinear pdf generator
* [Animenosekai/translate](https://github.com/Animenosekai/translate)
* [jekbradbury/SpaCy.jl](https://github.com/jekbradbury/SpaCy.jl)
* [genieframework.com/#stipple-section](https://genieframework.com/#stipple-section)
* [genieframework.com/](https://genieframework.com/)
* [JuliaGizmos/Interact.jl](https://github.com/JuliaGizmos/Interact.jl)
* [plotly/Dash.jl](https://github.com/plotly/Dash.jl)
* [GenieFramework/StippleDemos](https://github.com/GenieFramework/StippleDemos)
* [discourse.julialang.org/t/julia-package-for-ui-development/39469](https://discourse.julialang.org/t/julia-package-for-ui-development/39469)
* [GenieFramework/Stipple.jl](https://github.com/GenieFramework/Stipple.jl)
* [towardsdatascience.com/6-julia-frameworks-to-create-desktop-guis-and-web-apps-9ae1a941f115](https://towardsdatascience.com/6-julia-frameworks-to-create-desktop-guis-and-web-apps-9ae1a941f115)
* [discourse.julialang.org/t/julia-for-gui-app/416](https://discourse.julialang.org/t/julia-for-gui-app/416)
* [juliapackages.com/p/tk](https://juliapackages.com/p/tk)
* [juliapackages.com/p/qml](https://juliapackages.com/p/qml)
* [juliapackages.com/p/electron](https://juliapackages.com/p/electron)
* [juliapackages.com/p/blink](https://juliapackages.com/p/blink)
* [analyticsvidhya.com/blog/2020/08/top-4-sentence-embedding-techniques-using-python/](https://www.analyticsvidhya.com/blog/2020/08/top-4-sentence-embedding-techniques-using-python/)
* [openreview.net/forum?id=SyK00v5xx](https://openreview.net/forum?id=SyK00v5xx)
* Language-agnostic BERT Sentence Embedding
* [huggingface.co/setu4993/LaBSE](https://huggingface.co/setu4993/LaBSE)
* [chengchingwen](https://github.com/chengchingwen)
* [nextjournal.com/chengchingwen/gsoc-2020-leveraging-hugging-face-transformers-package-in-julia](https://nextjournal.com/chengchingwen/gsoc-2020-leveraging-hugging-face-transformers-package-in-julia)
* [huggingface.co/setu4993/LaBSE](https://huggingface.co/setu4993/LaBSE)
* [huggingface.co/sentence-transformers/LaBSE](https://huggingface.co/sentence-transformers/LaBSE)
* [paperswithcode.com/paper/language-agnostic-bert-sentence-embedding](https://paperswithcode.com/paper/language-agnostic-bert-sentence-embedding)
* [Language-agnostic BERT Sentence Embedding](https://arxiv.org/abs/2007.01852)
* [Making Monolingual Sentence Embeddings Multilingual using Knowledge Distillation](https://arxiv.org/abs/2004.09813)
* [Sentence Embedding Baseline Paper](https://openreview.net/pdf?id=SyK00v5xx)
* [Learning Word Vectors for 157 Languages](https://arxiv.org/abs/1802.06893)
* [arxiv.org/search/?query=bitext+alignment&searchtype=all&source=header](https://arxiv.org/search/?query=bitext+alignment&searchtype=all&source=header)
* [google.com/search?q=transformers+for+sequence+alignment&ie=UTF-8&oe=UTF-8&hl=it-us&client=safari](https://www.google.com/search?q=transformers+for+sequence+alignment&ie=UTF-8&oe=UTF-8&hl=it-us&client=safari)
* [Making Monolingual Sentence Embeddings Multilingual using Knowledge Distillation](https://aclanthology.org/2020.emnlp-main.365.pdf)
* [youtube subtitles parallel corpus - Поиск в Google](https://www.google.com/search?q=youtube+subtitles+parallel+corpus&rlz=1C5CHFA_enUS800US800&oq=youtube+subtitles+parallel+corpus&aqs=chrome..69i57j69i64.10589j0j4&sourceid=chrome&ie=UTF-8)
* Ideas and notes
* [ ]  use soundex index and make score based on comparison to expected soundex overlap for a correct alignment (given language pair and respective sentence lengths) → do same for n-gram overlap
* [ ]  add error generator (insertion, deletion, even transposition) to training process
* [en.wikipedia.org/wiki/List_of_ISO_639-1_codes](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes)
* [Paper on model collapse](https://arxiv.org/abs/2305.17493v2) → reason for strict rule that all alignments in the dataset must be manually checked

    goal: get 200 aligned articles and 10 aligned books, including  together with bible translations

    eventually create a tool for (automatically) translating a tex file into another language

    look into using conTeXt or the Rust-based alternative

    eventually add word alignment
* Gale-Church
* [Paper](https://s3.amazonaws.com/tm-town-nlp-resources/Gale-Church+alignment.pdf)
* [dowobeha/Gale_and_Church_1993](https://github.com/dowobeha/Gale_and_Church_1993)

    ‣ (python)
* [groups.google.com/g/nltk-dev/c/o0AqFbvo46Y?pli=1](https://groups.google.com/g/nltk-dev/c/o0AqFbvo46Y?pli=1) (python)
* [nltk.org/_modules/nltk/align/gale_church.html](https://www.nltk.org/_modules/nltk/align/gale_church.html)
* [nltk.org/_modules/nltk/translate/gale_church.html](https://www.nltk.org/_modules/nltk/translate/gale_church.html)
* [vosmann/galechurch: An implementation of a language-independent parallel text alignment algorithm by Gale & Church](https://github.com/vosmann/galechurch)
* [GCA Alignment Algorithm](https://en.wikipedia.org/wiki/Gale%E2%80%93Church_alignment_algorithm)
* Alignment
    * Survey Papers
* [An Overview of Bitext Alignment Algorithms](https://www.ida.liu.se/~jodfo01/gslt/bitext-alignment-jody.pdf)

    * Other Papers
* [K-vec: A New Approach for Aligning Parallel Texts](https://arxiv.org/pdf/cmp-lg/9407021.pdf)
* [Aligning Parallel Texts: Do Methods Developed for English-French Generalize to Asian Languages?](https://core.ac.uk/download/286946188.pdf)
* [nlp.cs.nyu.edu/bma/](https://nlp.cs.nyu.edu/bma/)
* [Fast-Champollion: A Fast and Robust Sentence Alignment Algorithm](https://aclanthology.org/C10-2081.pdf)

        → [groups.google.com/g/alt.conspiracy.princess-diana/c/rgkd6fPPcM4](https://groups.google.com/g/alt.conspiracy.princess-diana/c/rgkd6fPPcM4)
* Sentence Embeddings
* [sbert.net/](https://www.sbert.net/)
* [Massively Multilingual Sentence Embeddings for Zero-Shot Cross-Lingual Transfer and Beyond](https://arxiv.org/abs/1812.10464)
* [ai.googleblog.com/2020/08/language-agnostic-bert-sentence.html](https://ai.googleblog.com/2020/08/language-agnostic-bert-sentence.html)
* [tfhub.dev/google/collections/LEALLA](https://tfhub.dev/google/collections/LEALLA) → [tfhub.dev/google/LEALLA/LEALLA-small/1](https://tfhub.dev/google/LEALLA/LEALLA-small/1) → convert to pytorch/Flux.jl? → ‣
* [tfhub.dev/google/collections/universal-sentence-encoder](https://tfhub.dev/google/collections/universal-sentence-encoder)

    ‣
* [Making Monolingual Sentence Embeddings Multilingual using Knowledge Distillation](https://arxiv.org/abs/2004.09813)
* [A complete guide to transfer learning from English to other Languages using Sentence Embeddings BERT Models](https://towardsdatascience.com/a-complete-guide-to-transfer-learning-from-english-to-other-languages-using-sentence-embeddings-8c427f8804a9)

    Language-agnostic BERT Sentence Embedding
* Existing Aligners
    * nltk
* [nltk.org/api/nltk.align.html](http://www.nltk.org/api/nltk.align.html)

    * champollion
* [champollion.sourceforge.net/](http://champollion.sourceforge.net/)

        ‣
* [ldc.upenn.edu/sites/www.ldc.upenn.edu/files/lrec2006-champollion-sentence-aligner.pdf](https://www.ldc.upenn.edu/sites/www.ldc.upenn.edu/files/lrec2006-champollion-sentence-aligner.pdf)

    * gma
* [nlp.cs.nyu.edu/GMA/](https://nlp.cs.nyu.edu/GMA/)

    * anymalign
    * yalign
* [pypi.python.org/pypi/yalign](https://pypi.python.org/pypi/yalign)

    * maligna

        A new tool for the bilingual text aligning at the sentence level (2008)

    * tag-aligner (word-alignment)
* [tag-aligner.sourceforge.net/](http://tag-aligner.sourceforge.net/)

    * BleuAlign

        ‣

        MT-based Sentence Alignment for OCR-generated Parallel Texts

    * hunalign
* [mokk.bme.hu/resources/hunalign/](http://mokk.bme.hu/resources/hunalign/)
* [nlp.ilsp.gr/redmine/projects/ilsp-fc/wiki/Sentence_Alignment_Setup/11](http://nlp.ilsp.gr/redmine/projects/ilsp-fc/wiki/Sentence_Alignment_Setup/11)

    * LF Aligner
    * Gale-Church
* [vosmann/galechurch](https://github.com/vosmann/galechurch)

    * alignment-wit-openfst

        ‣

    * text-alignment-tool (Python)
* [pypi.org/project/text-alignment-tool/](https://pypi.org/project/text-alignment-tool/)
    * ‣
    * ‣
    * youalign
* [youalign.com/](http://www.youalign.com/)
* [youalign.com/](http://youalign.com/)
* [youalign.com/AlignDocs.aspx](https://youalign.com/AlignDocs.aspx)

    * bitext2tmx
* [bitext2tmx.sourceforge.net/](http://bitext2tmx.sourceforge.net/)
* [pypi.python.org/pypi/alignment/1.0.9](https://pypi.python.org/pypi/alignment/1.0.9)
* [clab/fast_align](https://github.com/clab/fast_align)
* Dependency Parsing
* [maltparser](https://www.maltparser.org/)
* → parallel-text-finisher
* [neonnaut.github.io/](https://neonnaut.github.io/)    ‣

    for slim docker container: [stackoverflow.com/questions/27428150/linux-how-to-track-all-files-accessed-by-a-process](https://stackoverflow.com/questions/27428150/linux-how-to-track-all-files-accessed-by-a-process)

    parallel vs reledpar etc.
* [ctan.org/topic/parallel](https://www.ctan.org/topic/parallel)

    * reledpar / reledmac
* [connectthefuture/ctan/tree/9a0b7c25144c53bd975bbf381687571915ff6a6c/contrib/reledmac/examples](https://github.com/connectthefuture/ctan/tree/9a0b7c25144c53bd975bbf381687571915ff6a6c/contrib/reledmac/examples)

        ```
        These 3 packages are deprecated :
          * Ledmac is replace by eledmac.
          * Ledpar is replace by eledpar
          * Learab is unmaintened. You should consider using of XeLaTeX instead.

        ```
* [ctan.org/tex-archive/macros/latex/contrib/reledmac](https://ctan.org/tex-archive/macros/latex/contrib/reledmac)

        ‣

        ‣

        → [koppor/LaTeX-fuer-Geisteswissenschaftler/blob/e2daed40dfc85c34e7776ceb7e2ff99405f63418/paralleleTexte.tex#L4](https://github.com/koppor/LaTeX-fuer-Geisteswissenschaftler/blob/e2daed40dfc85c34e7776ceb7e2ff99405f63418/paralleleTexte.tex#L4)

        → [connectthefuture/ctan/blob/9a0b7c25144c53bd975bbf381687571915ff6a6c/contrib/reledmac/examples/3-reledpar_pages_different_languages_lualatex.tex#L4](https://github.com/connectthefuture/ctan/blob/9a0b7c25144c53bd975bbf381687571915ff6a6c/contrib/reledmac/examples/3-reledpar_pages_different_languages_lualatex.tex#L4)

        etc.

        ‣
* [rrthomas/ledmac/blob/13db51ce02c26f05949f040f894f4de759522b06/examples/4-reledpar_inside-outside-columns.tex#L8](https://github.com/rrthomas/ledmac/blob/13db51ce02c26f05949f040f894f4de759522b06/examples/4-reledpar_inside-outside-columns.tex#L8)
* [schlcht/microtype/blob/5ac9212a228c66969a63696d266d9449930b4731/testsuite/output-reledmac_lualatex.tex#L4](https://github.com/schlcht/microtype/blob/5ac9212a228c66969a63696d266d9449930b4731/testsuite/output-reledmac_lualatex.tex#L4)

        ‣

        ‣
* [tla/sr2latex/tree/d47e0b98ae0cbc9216056d6e83e91c8a46c7904e](https://github.com/tla/sr2latex/tree/d47e0b98ae0cbc9216056d6e83e91c8a46c7904e)

        ‣

        → [tla](https://github.com/tla)

        ‣
* [ctan.org/pkg/paracol](https://www.ctan.org/pkg/paracol)
* [maieul/ledmac/tree/c64c334dccfc89a63f1ba8be43cefc9a93c9dfa8/examples](https://github.com/maieul/ledmac/tree/c64c334dccfc89a63f1ba8be43cefc9a93c9dfa8/examples)
* [ilanpillemer/labzik/blob/59e6be5759a9d9b7e2c8b1d0340c6ad5f6e8c38c/labzik.tex#L8](https://github.com/ilanpillemer/labzik/blob/59e6be5759a9d9b7e2c8b1d0340c6ad5f6e8c38c/labzik.tex#L8)
* [ilanpillemer/ylp/blob/cbc799c41588a0ae2165129b5d317516627882e3/ober/order.tex#L6](https://github.com/ilanpillemer/ylp/blob/cbc799c41588a0ae2165129b5d317516627882e3/ober/order.tex#L6)
* [pcast/reader](https://github.com/pcast/reader)
* [tomparys/bilingual-reader](https://github.com/tomparys/bilingual-reader)

    * transread
* [TransRead: Designing a Bilingual Reading Experience with Machine Translation Technologies](https://aclanthology.org/N16-3006.pdf)
* [transread.limsi.fr/resources.html](https://transread.limsi.fr/resources.html)

    * AglonaReader
* [Aglona Reader](https://sites.google.com/site/aglonareader/home/lang-de)

        Aglona, PB
* [BlueD/Aglona-Reader: Aglona Reader for .NET - A program for reading, creating and editing parallel books (books in two languages) in the original ParallelBook format. Home site of the project:](https://github.com/BlueD/Aglona-Reader)
* [Inego/Aglona-Reader: Aglona Reader for .NET - A program for reading, creating and editing parallel books (books in two languages) in the original ParallelBook format. Home site of the project:](https://github.com/Inego/Aglona-Reader)
* [Initial version for Git. · Inego/Aglona-Reader@e7ea4c0](https://github.com/Inego/Aglona-Reader/commit/e7ea4c03bf6e317a7a4666dec2977d043fc91185)
* [Inego/Aglona-Reader](https://github.com/Inego/Aglona-Reader)
* [Inego/Aglona-Reader-Android](https://github.com/Inego/Aglona-Reader-Android)

    * linguisticreader
* [sites.google.com/site/linguisticgym/home/lang-ru](https://sites.google.com/site/linguisticgym/home/lang-ru)
* [sites.google.com/site/linguisticplayer/home/lang-ru](https://sites.google.com/site/linguisticplayer/home/lang-ru)
* [sites.google.com/site/linguisticreader/home/lang-ru](https://sites.google.com/site/linguisticreader/home/lang-ru)
* [sourceforge.net/projects/akerblad/](https://sourceforge.net/projects/akerblad/)
* [BlueD/Aglona-Reader](https://github.com/BlueD/Aglona-Reader)
* [Inego/Aglona-Reader](https://github.com/Inego/Aglona-Reader)
* [Inego/Aglona-Reader/commit/e7ea4c03bf6e317a7a4666dec2977d043fc91185](https://github.com/Inego/Aglona-Reader/commit/e7ea4c03bf6e317a7a4666dec2977d043fc91185)
* [sites.google.com/site/aglonareader/home/lang-de](https://sites.google.com/site/aglonareader/home/lang-de)
* [sites.google.com/site/parabooksmaker/home/lang-ru](https://sites.google.com/site/parabooksmaker/home/lang-ru)
* [bitextor/bitextor: Bitextor generates translation memories from multilingual websites.](https://github.com/bitextor/bitextor)
* [Русский - Linguistic Gym](https://sites.google.com/site/linguisticgym/home/lang-ru)
* [Русский - Linguistic Player](https://sites.google.com/site/linguisticplayer/home/lang-ru)
* [Русский - Linguistic Reader](https://sites.google.com/site/linguisticreader/home/lang-ru)
* [translate · PyPI](https://pypi.org/project/translate/)

    ‣
* Data Sources, Corpora

    → Recursos por idioma
* [OPUS Corpus](https://opus.nlpl.eu/)
        * OPUS OpenSubtitles

        * Tatoeba

    * Global Voices
    * EU
    * UN
    * World Bank
    * IMF
* [childrenslibrary.org/](http://www.childrenslibrary.org/)
    * TED
    * YouTube
        * Khan Academy
        * 3b1b
        * TED subtitles
* [christos-c/bible-corpus](https://github.com/christos-c/bible-corpus)
* [Search · tatoeba · GitHub](https://github.com/search?utf8=%E2%9C%93&q=tatoeba&type=)
* [thejuicemedia - YouTube - YouTube](https://www.youtube.com/channel/UCKRw8GAAtm27q4R3Q0kst_g)
* [Lauris Beinerts - YouTube - YouTube](https://www.youtube.com/channel/UCc70aB6IfdZpR6mlTON1qjg)
* [Lexicom – a workshop in corpus linguistisc and lexicography](https://lexicom.courses/)
* [List of text corpora - Wikipedia](https://en.wikipedia.org/wiki/List_of_text_corpora)
* [Loading a corpus into the Natural Language Toolkit](https://technaverbascripta.wordpress.com/2012/09/25/loading-a-corpus-into-the-natural-language-toolkit/)
* [OpenSubtitles2016: Extracting Large Parallel Corpora from Movie and TV Subtitles](http://home.nr.no/~plison/pdfs/cl/lrec2016.pdf)
* [Multilingual Aligned Corpora From Movie Subtitles](https://hal.archives-ouvertes.fr/file/index/docid/968632/filename/Subtitles_MM-EG.pdf)
* [christos-c.com/bible/](https://christos-c.com/bible/)
* [NLTK Data](http://www.nltk.org/nltk_data/)
* [nltk.corpus.reader.xmldocs — NLTK 3.2.5 documentation](http://www.nltk.org/_modules/nltk/corpus/reader/xmldocs.html)
* [Online monolingual, bilingual and multilingual corpora (mostly with free access)](https://www.translatum.gr/forum/index.php?topic=53574.0)
* [opensubs2016.pdf](http://stp.lingfil.uu.se/~joerg/paper/opensubs2016.pdf)
* [OpenSubtitles2016](http://opus.lingfil.uu.se/OpenSubtitles2016.php)
* [OPUS - an open source parallel corpus](http://opus.nlpl.eu/)
* [Parallel text - Wikiwand](http://www.wikiwand.com/en/Parallel_text)
* [Phrase finder - make corpus](https://www.omniglot.com/language/phrases/phrasefinder.php)
* [nltk.org/api/nltk.corpus.reader.html](http://www.nltk.org/api/nltk.corpus.reader.html)
* [python - load parallel corpora with NLTK and lemmatize english sentences - Stack Overflow](https://stackoverflow.com/questions/27361627/load-parallel-corpora-with-nltk-and-lemmatize-english-sentences)
* [pypi.org/project/python-opensubtitles/](https://pypi.org/project/python-opensubtitles/)
* [cwb.sourceforge.net/documentation.php](http://cwb.sourceforge.net/documentation.php)
* [cwb.sourceforge.net/files/CQP_Tutorial/](http://cwb.sourceforge.net/files/CQP_Tutorial/)
* [I made a python script to download subtitles for your movies... : Python](https://www.reddit.com/r/Python/comments/g10v5z/i_made_a_python_script_to_download_subtitles_for/)
* [agonzalezro/python-opensubtitles](https://github.com/agonzalezro/python-opensubtitles)
* [wit3.fbk.eu/](https://wit3.fbk.eu/)
* [perseus.tufts.edu/hopper/search](http://www.perseus.tufts.edu/hopper/search)
* [en.wiktionary.org/wiki/Appendix:Ancient_Greek_Swadesh_list](https://en.wiktionary.org/wiki/Appendix:Ancient_Greek_Swadesh_list)
* [fr.wikibooks.org/wiki/Cat%C3%A9gorie:Mod%C3%A8les_du_livre_de_grec_ancien](https://fr.wikibooks.org/wiki/Cat%C3%A9gorie:Mod%C3%A8les_du_livre_de_grec_ancien)
* [OpenSubtitles2016: Extracting Large Parallel Corpora from Movie and TV Subtitles](http://www.lrec-conf.org/proceedings/lrec2016/pdf/947_Paper.pdf)
* [joy-xiaojizhang/parse-subtitles-corpus](https://github.com/joy-xiaojizhang/parse-subtitles-corpus)
* Sort
* [nltk.org/_modules/nltk/corpus/reader/xmldocs.html](http://www.nltk.org/_modules/nltk/corpus/reader/xmldocs.html)
* [statmt.org/moses/?n=Moses.LinksToCorpora](http://www.statmt.org/moses/?n=Moses.LinksToCorpora)
* [Conchylicultor/DeepQA/tree/master/data/opensubs](https://github.com/Conchylicultor/DeepQA/tree/master/data/opensubs)
* [emericg/OpenSubtitlesDownload](https://github.com/emericg/OpenSubtitlesDownload)
* [informationsmodellierung.uni-graz.at/de/neuigkeiten/detail/article/online-lectures-program-sentiment-analysis-in-literary-studies-2021/](https://informationsmodellierung.uni-graz.at/de/neuigkeiten/detail/article/online-lectures-program-sentiment-analysis-in-literary-studies-2021/)
* [ipfs.io/ipfs/QmXoypizjW3WknFiJnKLwHCnL72vedxjQkDDP1mXWo6uco/wiki/Parallel_text.html](https://ipfs.io/ipfs/QmXoypizjW3WknFiJnKLwHCnL72vedxjQkDDP1mXWo6uco/wiki/Parallel_text.html)
* [languagefixation.wordpress.com/2011/02/09/how-to-create-parallel-texts-for-language-learning-part-1/](https://languagefixation.wordpress.com/2011/02/09/how-to-create-parallel-texts-for-language-learning-part-1/)
* [languagefixation.wordpress.com/2011/02/23/how-to-create-parallel-texts-for-language-learning-part-2/](https://languagefixation.wordpress.com/2011/02/23/how-to-create-parallel-texts-for-language-learning-part-2/)
* [pypi.python.org/pypi/python-opensubtitles/0.2.dev0](https://pypi.python.org/pypi/python-opensubtitles/0.2.dev0)
* [pypi.python.org/pypi/ss/](https://pypi.python.org/pypi/ss/)
* [terminotix.com/docs/factsheet_alignfactory_en.pdf](https://terminotix.com/docs/factsheet_alignfactory_en.pdf)
* [google.com/search?q=best+languages+for+parallel+text+alignment&ie=UTF-8&oe=UTF-8&hl=it-us&client=safari](https://www.google.com/search?q=best+languages+for+parallel+text+alignment&ie=UTF-8&oe=UTF-8&hl=it-us&client=safari)
* [google.com/search?q=bitext+tool&ie=UTF-8&oe=UTF-8&hl=it-us&client=safari](https://www.google.com/search?q=bitext+tool&ie=UTF-8&oe=UTF-8&hl=it-us&client=safari)
* [google.com/search?q=hunalign+with+python&safe=active&client=safari&hl=it-us&prmd=ivn&ei=kkY7Wu-jHsbOjwPOkK_wCQ&start=10&sa=N&biw=320&bih=529](https://www.google.com/search?q=hunalign+with+python&safe=active&client=safari&hl=it-us&prmd=ivn&ei=kkY7Wu-jHsbOjwPOkK_wCQ&start=10&sa=N&biw=320&bih=529)
* [google.com/search?q=script+to+download+opensubtitles&ie=UTF-8&oe=UTF-8&hl=it-us&client=safari](https://www.google.com/search?q=script+to+download+opensubtitles&ie=UTF-8&oe=UTF-8&hl=it-us&client=safari)
* [google.com/search?safe=active&client=safari&hl=it-us&ei=cM4LWrbYHsnEjwPc3LaoDQ&q=nltk+and+xml&oq=nltk+and+xml&gs_l=mobile-gws-serp.3...67543.72881.0.73215.20.16.1.0.0.0.0.0..0.0....0...1.1.64.mobile-gws-serp..19.1.38.3..35i39k1.196.DuWjKXWR1tQ](https://www.google.com/search?safe=active&client=safari&hl=it-us&ei=cM4LWrbYHsnEjwPc3LaoDQ&q=nltk+and+xml&oq=nltk+and+xml&gs_l=mobile-gws-serp.3...67543.72881.0.73215.20.16.1.0.0.0.0.0..0.0....0...1.1.64.mobile-gws-serp..19.1.38.3..35i39k1.196.DuWjKXWR1tQ)
* [google.com/search?safe=active&client=safari&hl=it-us&ei=hDk7WonVJo3GjwPt6bDQCQ&q=bitext+alignment+tool&oq=bitext+alignment+&gs_l=mobile-gws-serp.1.2.0i22i30k1l5.306512.312175.0.313312.15.15.0.6.6.0.331.2426.0j12j1j1.14.0....0...1c.1.64.mobile-gws-serp..3.12.1150...35i39k1j0i203k1j0i13k1.135.HAcEx-LH2IQ](https://www.google.com/search?safe=active&client=safari&hl=it-us&ei=hDk7WonVJo3GjwPt6bDQCQ&q=bitext+alignment+tool&oq=bitext+alignment+&gs_l=mobile-gws-serp.1.2.0i22i30k1l5.306512.312175.0.313312.15.15.0.6.6.0.331.2426.0j12j1j1.14.0....0...1c.1.64.mobile-gws-serp..3.12.1150...35i39k1j0i203k1j0i13k1.135.HAcEx-LH2IQ)
* [r/programming/comments/1l248j/python_script_that_searches_subtitles_for/](https://www.reddit.com/r/programming/comments/1l248j/python_script_that_searches_subtitles_for/)
* [researchgate.net/profile/Joerg_Tiedemann/publication/264849940_Parallel_Data_Tools_and_Interfaces_in_OPUS/links/54d8f66f0cf2970e4e7a6271.pdf](https://www.researchgate.net/profile/Joerg_Tiedemann/publication/264849940_Parallel_Data_Tools_and_Interfaces_in_OPUS/links/54d8f66f0cf2970e4e7a6271.pdf)

    script to download opensubtitles - Cerca con Google
* [Sentence Alignment](http://www.statmt.org/survey/Topic/SentenceAlignment)

    Versione 11 - Cronologia - Sentence Alignment Setup - Sentence Alignment Setup - ILSP Focused Crawler - ILSP NLP

    string similarity measure for alternative translations

    * **bitext alignment code - Ecosia
* [emk (Eric Kidd)](https://github.com/emk)
* [Evaluation of Alignment Methods for HTML Parallel Text | SpringerLink](https://link.springer.com/chapter/10.1007/11816508_29?no-access=true)
* [booh.com/wp/blog/bilingual-text-2012](http://booh.com/wp/blog/bilingual-text-2012)
* [learnanylanguage.wikia.com/wiki/Listening-Reading_Method](http://learnanylanguage.wikia.com/wiki/Listening-Reading_Method)
* [lexicometrica.univ-paris3.fr/compterendu/compterendu1.pdf](http://lexicometrica.univ-paris3.fr/compterendu/compterendu1.pdf)
* [mi.eng.cam.ac.uk/~wjb31/ppubs/JNLE-REF300-Dec05.pdf](http://mi.eng.cam.ac.uk/~wjb31/ppubs/JNLE-REF300-Dec05.pdf)
* [nlp.cs.nyu.edu/bma/](http://nlp.cs.nyu.edu/bma/)
* [aclweb.org/anthology/N/N16/N16-3006.pdf](http://www.aclweb.org/anthology/N/N16/N16-3006.pdf)
* [bilingualtext.com/the-one-who-takes-a-nightmare-trip-bilingual-text-english-french.html](http://www.bilingualtext.com/the-one-who-takes-a-nightmare-trip-bilingual-text-english-french.html)
* [cis.drexel.edu/faculty/thu/research-papers/dawak-547.pdf](http://www.cis.drexel.edu/faculty/thu/research-papers/dawak-547.pdf)
* [dlsi.ua.es/~mlf/docum/sanchezvillamil06p.pdf](http://www.dlsi.ua.es/~mlf/docum/sanchezvillamil06p.pdf)
* [lancaster.ac.uk/fass/projects/corpus/UCCTS2008Proceedings/papers/Gerdes.pdf](http://www.lancaster.ac.uk/fass/projects/corpus/UCCTS2008Proceedings/papers/Gerdes.pdf)
* [mt-archive.info/ACL-1996-Haruno.pdf](http://www.mt-archive.info/ACL-1996-Haruno.pdf)
* [statmt.org/](http://www.statmt.org/)
* [statmt.org/europarl/](http://www.statmt.org/europarl/)
* [statmt.org/moses/](http://www.statmt.org/moses/)
* [supernova-soft.com/c5/index.php/french/products/text_aligner/](http://www.supernova-soft.com/c5/index.php/french/products/text_aligner/)
* [yalign.readthedocs.io/en/latest/](http://yalign.readthedocs.io/en/latest/)
* [anymalign.limsi.fr/](https://anymalign.limsi.fr/)
* [anymalign.limsi.fr/#start](https://anymalign.limsi.fr/#start)
* [arxiv.org/ftp/arxiv/papers/1509/1509.09093.pdf](https://arxiv.org/ftp/arxiv/papers/1509/1509.09093.pdf)
* [bitbucket.org/tiedemann/subalign/src](https://bitbucket.org/tiedemann/subalign/src)
* [fr.scribd.com/document/213266691/Alignment-of-the-Polish-English-Parallel-Text-for-a-Statistical-Machine-Translation](https://fr.scribd.com/document/213266691/Alignment-of-the-Polish-English-Parallel-Text-for-a-Statistical-Machine-Translation)
* [gist.github.com/emk/a68c16bc1a8cd4840a5a](https://gist.github.com/emk/a68c16bc1a8cd4840a5a)
* [angelodel80/CophiAlignment](https://github.com/angelodel80/CophiAlignment)
* [godlygeek/tabular](https://github.com/godlygeek/tabular)
* [gumblex/Bleualign](https://github.com/gumblex/Bleualign)
* [inikdom/opensubtitles-parser/blob/master/setup.sh](https://github.com/inikdom/opensubtitles-parser/blob/master/setup.sh)
* [ldmt-muri/alignment-with-openfst](https://github.com/ldmt-muri/alignment-with-openfst)
* [loomchild/maligna](https://github.com/loomchild/maligna)
* [markuskiller/textblob-sent-align](https://github.com/markuskiller/textblob-sent-align)
* [mebubo/paragraph-align](https://github.com/mebubo/paragraph-align)
* [pcast](https://github.com/pcast)
* [pcast/hocr-tools](https://github.com/pcast/hocr-tools)
* [groups.google.com/forum/#!topic/alt.conspiracy.princess-diana/rgkd6fPPcM4](https://groups.google.com/forum/#!topic/alt.conspiracy.princess-diana/rgkd6fPPcM4)
* [link.springer.com/chapter/10.1007/11816508_29?no-access=true](https://link.springer.com/chapter/10.1007/11816508_29?no-access=true)
* [link.springer.com/chapter/10.1007/3-540-49653-X_15](https://link.springer.com/chapter/10.1007/3-540-49653-X_15)
* [link.springer.com/content/pdf/10.1007%2F3-540-49653-X.pdf](https://link.springer.com/content/pdf/10.1007%2F3-540-49653-X.pdf)
* [parallel-text-aligner.en.softonic.com/](https://parallel-text-aligner.en.softonic.com/)
* [secure.avangate.com/order/checkout.php?PRODS=4572175&QTY=1](https://secure.avangate.com/order/checkout.php?PRODS=4572175&QTY=1)
* [sourceforge.net/projects/aligner/](https://sourceforge.net/projects/aligner/)
* [sourceforge.net/projects/aligner/?source=typ_redirect](https://sourceforge.net/projects/aligner/?source=typ_redirect)
* [sourceforge.net/projects/champollion/?source=typ_redirect](https://sourceforge.net/projects/champollion/?source=typ_redirect)
* [terminotix.com/?lang=en](https://terminotix.com/?lang=en)
* [terminotix.com/index.asp?name=AlignFactory&content=item&brand=1&item=4&lang=en](https://terminotix.com/index.asp?name=AlignFactory&content=item&brand=1&item=4&lang=en)
* [transread.limsi.fr/deliverables.html](https://transread.limsi.fr/deliverables.html)
* [transread.limsi.fr/resources.html](https://transread.limsi.fr/resources.html)
* [wenku.baidu.com/view/5ecc18b7d4d8d15abf234e03.html](https://wenku.baidu.com/view/5ecc18b7d4d8d15abf234e03.html)
* [amazon.fr/Bitext-Alignment-J%C3%B6rg-Tiedemann/dp/1608455106](https://www.amazon.fr/Bitext-Alignment-J%C3%B6rg-Tiedemann/dp/1608455106)
* [ecosia.org/search?q=bitext+alignment&addon=chrome&addonversion=2.0.3](https://www.ecosia.org/search?q=bitext+alignment&addon=chrome&addonversion=2.0.3)
* [ecosia.org/search?q=bitext+alignment+code&addon=chrome&addonversion=2.0.3](https://www.ecosia.org/search?q=bitext+alignment+code&addon=chrome&addonversion=2.0.3)
* [facebook.com/ParallelBooks](https://www.facebook.com/ParallelBooks)
* [gelbukh.com/CV/Publications/2006/CIARP-2006-Alignment.pdf](https://www.gelbukh.com/CV/Publications/2006/CIARP-2006-Alignment.pdf)
* [ldc.upenn.edu/sites/www.ldc.upenn.edu/files/lrec2008-creating-sentence-aligned-parallel-text.pdf](https://www.ldc.upenn.edu/sites/www.ldc.upenn.edu/files/lrec2008-creating-sentence-aligned-parallel-text.pdf)
* [proz.com/forum/cat_tools_technical_help/280415-abbyy_aligner.html](https://www.proz.com/forum/cat_tools_technical_help/280415-abbyy_aligner.html)
* [video](https://www.youtube.com/watch?v=0Tvw9XNcgB0)
* [Nova Text Aligner - Download](https://parallel-text-aligner.en.softonic.com/)
* [Tiedemann](https://bitbucket.org/tiedemann/lingua-align/src/master/lib/Lingua/Align/)
* [tiedemann — Bitbucket](https://bitbucket.org/tiedemann/)
* [Yalign — Yalign 0.1.1 documentation](http://yalign.readthedocs.io/en/latest/)
* [Global Wordnets ](http://globalwordnet.org/wordnets-in-the-world/)
* [ethicadb.org/index.php?p=&lanid=8&lg=fr&ftop=200px](http://www.ethicadb.org/index.php?p=&lanid=8&lg=fr&ftop=200px)
* [ted2srt.org/#/](https://ted2srt.org/#/)
* [CTK](http://champollion.sourceforge.net/)
* [Champollion Tool Kit download | SourceForge.net](https://sourceforge.net/projects/champollion/?source=typ_redirect)
* [Champollion: A Robust Parallel Text Sentence Aligner](https://www.ldc.upenn.edu/sites/www.ldc.upenn.edu/files/lrec2006-champollion-sentence-aligner.pdf)

    * TransRead
* [GitHub - ldmt-muri/alignment-with-openfst](https://github.com/ldmt-muri/alignment-with-openfst)
* [GitHub - PhilippeFerreiraDeSousa/bitext-matching: Mise en correspondance de bitextes dans des langues différentes](https://github.com/PhilippeFerreiraDeSousa/bitext-matching/)
* [transread.limsi.fr/Resources/AlibiAlignments/README_EN.txt](https://transread.limsi.fr/Resources/AlibiAlignments/README_EN.txt)
* [transread.limsi.fr/Resources/AlibiAlignments/](https://transread.limsi.fr/Resources/AlibiAlignments/)

    Parallel - Language Learning
* [lltk](https://github.com/lltk)
* [incremental reader - perfect for memorizzation](http://www.charlieslanguagepage.com/incrementalreader.htm)
* [Language Learning Toolkit](https://github.com/lltk)
* [tkrajina/10000sentences: 10,000 sentences: an Android app to help you learn new words in foreign languages](https://github.com/tkrajina/10000sentences)
* [lwt.sourceforge.net/](http://lwt.sourceforge.net/)
* [Bilingual translations in two columns : LaTeX](https://www.reddit.com/r/LaTeX/comments/44p1h6/bilingual_translations_in_two_columns/)
* [Parallel bilingual text](http://latex.org/forum/viewtopic.php?f=47&t=11980)
* [Newest 'parallel' Questions - TeX - LaTeX Stack Exchange](https://tex.stackexchange.com/questions/tagged/parallel)
* [xetex - Syncing text on bilingual pages - TeX - LaTeX Stack Exchange](https://tex.stackexchange.com/questions/86366/syncing-text-on-bilingual-pages)
* [latex.org/forum/viewtopic.php?f=47&t=11980](http://latex.org/forum/viewtopic.php?f=47&t=11980)
* [stackoverflow.com/questions/2907327/dual-line-bilingual-paragraph-in-latex](https://stackoverflow.com/questions/2907327/dual-line-bilingual-paragraph-in-latex)
* [r/LaTeX/comments/44p1h6/bilingual_translations_in_two_columns/](https://www.reddit.com/r/LaTeX/comments/44p1h6/bilingual_translations_in_two_columns/)

    * **translation - Dual-line bilingual paragraph in LaTeX - Stack Overflow
* [CTAN: Paket parallel](https://ctan.org/pkg/parallel)
* [ctan.org/pkg/parallel](https://ctan.org/pkg/parallel)

    Bitext Alignment - Teidemann (Drive)
* [Aligning Parallel Texts_百度文库](https://wenku.baidu.com/view/5ecc18b7d4d8d15abf234e03.html)
* [Book Chapter on OPUS](https://books.google.com/books?hl=es&lr=&id=xUWRy8OUGZsC&oi=fnd&pg=PA237&dq=Open+Subtitles+Corpus&ots=47ioDq1gOX&sig=M1Zb5gdXLKP481z1G6QQoJBHTTo#v=onepage&q=Open%20Subtitles%20Corpus&f=false)
* [Parallel Text Processing: Alignment and Use of Translation Corpora](http://library.lol/main/CB77F7882995430689CC21F5F9EFBEA9)
* [Alignment of the Polish-English Parallel Text for a Statistical Machine Translation | String (Computer Science) | Translations](https://fr.scribd.com/document/213266691/Alignment-of-the-Polish-English-Parallel-Text-for-a-Statistical-Machine-Translation)
* [Iterative, MT-based Sentence Alignment of Parallel Texts](https://www.aclweb.org/anthology/W11-4624.pdf)
* [Parallel Text Alignment | SpringerLink](https://link.springer.com/chapter/10.1007/3-540-49653-X_15)
* [cr_Véronis.doc.pdf](http://lexicometrica.univ-paris3.fr/compterendu/compterendu1.pdf)
* [High-Performance Bilingual Text Alignment Using Statistical and Dictionary Information](http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.14.9667)
* [Segmentation and alignment of parallel text for statistical machine translation](http://mi.eng.cam.ac.uk/~wjb31/ppubs/JNLE-REF300-Dec05.pdf)
* [Microsoft Word - CIARP-2006.doc](https://www.gelbukh.com/CV/Publications/2006/CIARP-2006-Alignment.pdf)
* [Di: sentence-aligned bilingual texts - Grupos de Google](https://groups.google.com/forum/#!topic/alt.conspiracy.princess-diana/rgkd6fPPcM4)
* [cltk.org/](http://cltk.org/)
* [corpus.quran.com/lemmas.jsp](http://corpus.quran.com/lemmas.jsp)
* [dcc.dickinson.edu/greek-core-list](http://dcc.dickinson.edu/greek-core-list)
* [dcc.dickinson.edu/latin-vocabulary-list](http://dcc.dickinson.edu/latin-vocabulary-list)
* [docs.cltk.org/en/latest/](http://docs.cltk.org/en/latest/)
* [perseus.uchicago.edu/](http://perseus.uchicago.edu/)
* [quran.ilmsummit.org/projects/quran/QWF.aspx](http://quran.ilmsummit.org/projects/quran/QWF.aspx)
* [sosol.perseids.org/sosol/signin](http://sosol.perseids.org/sosol/signin)
* [thelibrarybasement.com/2013/03/13/a-categorized-tagged-greek-new-testament-corpus/](http://thelibrarybasement.com/2013/03/13/a-categorized-tagged-greek-new-testament-corpus/)
* [academia.edu/20844659/Ancient_Greek_WordNet_Meets_the_Dynamic_Lexicon_the_Example_of_the_Fragments_of_the_Greek_Historians](http://www.academia.edu/20844659/Ancient_Greek_WordNet_Meets_the_Dynamic_Lexicon_the_Example_of_the_Fragments_of_the_Greek_Historians)
* [charlieslanguagepage.com/](http://www.charlieslanguagepage.com/)
* [charlieslanguagepage.com/CWslanguagepage/briefguidetogreek/verb%20conspectus.htm](http://www.charlieslanguagepage.com/CWslanguagepage/briefguidetogreek/verb%20conspectus.htm)
* [charlieslanguagepage.com/CWslanguagepage/OCRmaterials.htm](http://www.charlieslanguagepage.com/CWslanguagepage/OCRmaterials.htm)
* [dh.uni-leipzig.de/wo/projects/ancient-greek-and-latin-dependency-treebank-2-0/](http://www.dh.uni-leipzig.de/wo/projects/ancient-greek-and-latin-dependency-treebank-2-0/)
* [dh.uni-leipzig.de/wo/projects/open-greek-and-latin-project/](http://www.dh.uni-leipzig.de/wo/projects/open-greek-and-latin-project/)
* [digitalclassicist.org/](http://www.digitalclassicist.org/)
* [lexilogos.com/english/greek_ancient_dictionary.htm](http://www.lexilogos.com/english/greek_ancient_dictionary.htm)
* [cltk/cltk](https://github.com/cltk/cltk)
* [janabeck/PPCHiG](https://github.com/janabeck/PPCHiG)
* [machinalis/yalign](https://github.com/machinalis/yalign)
* [shamsuzzamansadi/quranic-corpus](https://github.com/shamsuzzamansadi/quranic-corpus)
* [perseusdl.github.io/treebank_data/](https://perseusdl.github.io/treebank_data/)
* [proiel.github.io/](https://proiel.github.io/)
* [stephanus.tlg.uci.edu/index/databases.html](https://stephanus.tlg.uci.edu/index/databases.html)
* [stephanus.tlg.uci.edu/Iris/reg.jsp](https://stephanus.tlg.uci.edu/Iris/reg.jsp)
* [wiki.digitalclassicist.org/Greek_and_Latin_texts_in_digital_form#Texts_with_translations](https://wiki.digitalclassicist.org/Greek_and_Latin_texts_in_digital_form#Texts_with_translations)
* [lib.uchicago.edu/efts/Woodhouse/](https://www.lib.uchicago.edu/efts/Woodhouse/)
* [researchgate.net/post/What_is_the_best_way_to_do_corpus_linguistics_on_Hellenistic_Greek](https://www.researchgate.net/post/What_is_the_best_way_to_do_corpus_linguistics_on_Hellenistic_Greek)
* [transread.limsi.fr/Resources/SentenceAlignmentConfidenceAnnotation/README](https://transread.limsi.fr/Resources/SentenceAlignmentConfidenceAnnotation/README)
* [mackichan.com/index.html?techtalk/646.htm~mainFrame](https://www.mackichan.com/index.html?techtalk/646.htm~mainFrame)
* [ted.com/talks/philip_zimbardo_on_the_psychology_of_evil/transcript?language=fr#t-525821](https://www.ted.com/talks/philip_zimbardo_on_the_psychology_of_evil/transcript?language=fr#t-525821)
* [Juxtalinéaires : éditions scolaires d'auteurs grecs et latins](http://juxtas.pagesperso-orange.fr/)
* [Latin juxtalinéaire - Traductions d'auteurs latins en mot à mot: juxtalinéaire](http://latinjuxtalineaire.over-blog.com/)
* [Learn languages in context --> look at html structure](http://www.bilingualtext.com/the-one-who-takes-a-nightmare-trip-bilingual-text-english-french.html)
* [LF Aligner download | SourceForge.net](https://sourceforge.net/projects/aligner/?source=typ_redirect)
* [Listening-Reading Method | Learn Any Language | FANDOM powered by Wikia](http://learnanylanguage.wikia.com/wiki/Listening-Reading_Method)
* [lrec-2008-parallel.dvi](https://www.ldc.upenn.edu/sites/www.ldc.upenn.edu/files/lrec2008-creating-sentence-aligned-parallel-text.pdf)
* [MacKichan Software - The Home of Scientific WorkPlace, Scientific Word, and Scientific Notebook](https://www.mackichan.com/index.html?techtalk/646.htm~mainFrame)
* [tex.stackexchange.com/questions/86366/syncing-text-on-bilingual-pages](https://tex.stackexchange.com/questions/86366/syncing-text-on-bilingual-pages)
* [tex.stackexchange.com/questions/tagged/parallel](https://tex.stackexchange.com/questions/tagged/parallel)
* [godlygeek/tabular: Vim script for text filtering and alignment](https://github.com/godlygeek/tabular)
* [alpage.inria.fr/~sagot/](http://alpage.inria.fr/~sagot/)
* [globalwordnet.org/arabic-wordnet/awn-browser/](http://globalwordnet.org/arabic-wordnet/awn-browser/)
* [homepages.inf.ed.ac.uk/adubey/software/wnbrowser/index.html](http://homepages.inf.ed.ac.uk/adubey/software/wnbrowser/index.html)
* [masterrussian.net/f49/new-russian-english-books-parallelbook-format-20375/](http://masterrussian.net/f49/new-russian-english-books-parallelbook-format-20375/)
* [MT-based sentence alignment for OCR-generated parallel texts](http://mt-archive.info/AMTA-2010-Sennrich.pdf)
* [WCIST_ALIGNER_CR](https://arxiv.org/pdf/1509.09093.pdf)
* [Wang Pidong's Homepage: sentence-level alignment tools for statistical machine translation](http://wangpidong.blogspot.com/2012/05/sentence-level-alignment-tools-for.html)
* [offline python translation - Поиск в Google](https://www.google.com/search?q=offline+python+translation&rlz=1C5CHFA_enUS800US800&oq=offline+python+translation&aqs=chrome..69i57j0l2.7491j0j4&sourceid=chrome&ie=UTF-8)
* [babylonhealth/fastText_multilingual: Multilingual word vectors in 78 languages](https://github.com/babylonhealth/fastText_multilingual)
* [Parallel Books - Home](https://www.facebook.com/ParallelBooks)
* [Parallel text creator, text alignment software](http://www.supernova-soft.com/c5/index.php/french/products/text_aligner/)
* [Poverty driven bilingual alignment](http://www.lancaster.ac.uk/fass/projects/corpus/UCCTS2008Proceedings/papers/Gerdes.pdf)
* [rsennrich/Bleualign: Machine-Translation-based sentence alignment tool for parallel text](https://github.com/rsennrich/Bleualign)
* [sanchezvillamil06p.pdf](http://www.dlsi.ua.es/~mlf/docum/sanchezvillamil06p.pdf)
* [Statistical Machine Translation](http://www.statmt.org/)
* [Terminotix - Home](https://terminotix.com/?lang=en)
* [tomparys/bilingual-reader: Bilingual Reader for Android](https://github.com/tomparys/bilingual-reader)
* [TransRead](https://transread.limsi.fr/resources.html)
* [TransRead: Designing a Bilingual Reading Experience with Machine Translation Technologies](http://www.aclweb.org/anthology/N/N16/N16-3006.pdf)
* [WCIST_ALIGNER_CR](https://arxiv.org/ftp/arxiv/papers/1509/1509.09093.pdf)
* [ida.liu.se/~jodfo01/gslt/bitext-alignment-jody.pdf](http://www.ida.liu.se/~jodfo01/gslt/bitext-alignment-jody.pdf)
* [sketchengine.co.uk/user-guide/user-manual/corpora/setting-up-parallel-corpora/](https://www.sketchengine.co.uk/user-guide/user-manual/corpora/setting-up-parallel-corpora/)
* [[Corpora-List] Arabic Corpus work in Python](https://mailman.uib.no/public/corpora/2009-October/009362.html)

    * ** Multilingual Bible Parallel Corpus
    *  MTTK - Machine Translation Toolkit
    *  OpenSubtitles2018
    *  tatoeba to anki - Ecosia
    *  The IMS Open Corpus Workbench
    * **De Deo (Peña - es) | Ethicadb.org
    * **Download sentences - Tatoeba
    * **Sketch Engine | language corpus management and query system
    * download*opensubtitles-parser/setup.sh at master · inikdom/opensubtitles-parser · GitHub
* [/c/1997c/tops/dvips](http://www.mitpressjournals.org/doi/pdf/10.1162/089120103322711578)
* [A massively parallel corpus: the Bible in 100 languages](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4551210/)
* [Add a corpus to the NLTK corpus and importing it : Python](https://www.reddit.com/r/Python/comments/5ctedp/add_a_corpus_to_the_nltk_corpus_and_importing_it/)
* [Add-on:OpenSubtitles.org - Official Kodi Wiki](http://kodi.wiki/view/Add-on:OpenSubtitles.org)
* [Bible Corpus](http://www.lrec-conf.org/proceedings/lrec2014/pdf/220_Paper.pdf)
* [BYU corpora: billions of words of data: free online access](https://corpus.byu.edu/corpora.asp)
* [ccat.sas.upenn.edu/plc/kiswahili/video/reading/index.html](http://ccat.sas.upenn.edu/plc/kiswahili/video/reading/index.html)
* [Corpora 1.0 : Python Package Index](https://pypi.python.org/pypi/Corpora/1.0)
* [De Deo (Latin) | Ethicadb.org](http://www.ethicadb.org/pars.php?parid=1&lanid=0&lg=fr&ftop=82px)
* [Europarl Parallel Corpus](http://www.statmt.org/europarl/)
* [GitHub - AlJohri/OpenSubtitles: A series of scripts to download and parse the OpenSubtitles corpus.](https://github.com/AlJohri/OpenSubtitles)
* [GitHub - byroot/pysrt: Python parser for SubRip (srt) files](https://github.com/byroot/pysrt)
* [GitHub - christos-c/bible-corpus: A multilingual parallel corpus created from translations of the Bible.](https://github.com/christos-c/bible-corpus)
* [GitHub - inikdom/opensubtitles-parser: download, extract, parse and tokenize the opensubtitles dataset with this script](https://github.com/inikdom/opensubtitles-parser)
* [GitHub - rupss/open-subtitles-scraper](https://github.com/rupss/open-subtitles-scraper)
* [Glosbe API](https://fr.glosbe.com/a-api)
* [ccat.sas.upenn.edu/plc/kiswahili/video/reading/index.html](http://ccat.sas.upenn.edu/plc/kiswahili/video/reading/index.html)
* [christos-c.com/bible/](http://christos-c.com/bible/)
* [cwb.sourceforge.net/download.php](http://cwb.sourceforge.net/download.php)
* [homepages.inf.ed.ac.uk/s0787820/bible/](http://homepages.inf.ed.ac.uk/s0787820/bible/)
* [opus.lingfil.uu.se/OpenSubtitles2016.php](http://opus.lingfil.uu.se/OpenSubtitles2016.php)
* [stp.lingfil.uu.se/~joerg/paper/opensubs2016.pdf](http://stp.lingfil.uu.se/~joerg/paper/opensubs2016.pdf)
* [wolk.pl/tool-for-parallel-corpora-filtering-and-aligning/](http://wolk.pl/tool-for-parallel-corpora-filtering-and-aligning/)
* [ethicadb.org/pars.php?parid=1&lanid=0&lg=fr&ftop=82px](http://www.ethicadb.org/pars.php?parid=1&lanid=0&lg=fr&ftop=82px)
* [ethicadb.org/pars.php?parid=1&lanid=8&lg=fr](http://www.ethicadb.org/pars.php?parid=1&lanid=8&lg=fr)
* [lrec-conf.org/proceedings/lrec2014/pdf/220_Paper.pdf](http://www.lrec-conf.org/proceedings/lrec2014/pdf/220_Paper.pdf)
* [mitpressjournals.org/doi/pdf/10.1162/089120103322711578](http://www.mitpressjournals.org/doi/pdf/10.1162/089120103322711578)
* [nltk.org/_modules/nltk/corpus/reader/xmldocs.html](http://www.nltk.org/_modules/nltk/corpus/reader/xmldocs.html)
* [wikidoc.org/index.php/Text_corpus](http://www.wikidoc.org/index.php/Text_corpus)
* [wikiwand.com/en/Parallel_text](http://www.wikiwand.com/en/Parallel_text)
* [corpus.byu.edu/corpora.asp](https://corpus.byu.edu/corpora.asp)
* [en.wikipedia.org/wiki/List_of_text_corpora](https://en.wikipedia.org/wiki/List_of_text_corpora)
* [forum.language-learners.org/viewtopic.php?t=2013](https://forum.language-learners.org/viewtopic.php?t=2013)
* [fr.glosbe.com/a-api](https://fr.glosbe.com/a-api)
* [AlJohri/OpenSubtitles](https://github.com/AlJohri/OpenSubtitles)
* [emericg/OpenSubtitlesDownload](https://github.com/emericg/OpenSubtitlesDownload)
* [search?utf8=%E2%9C%93&q=tatoeba&type=](https://github.com/search?utf8=%E2%9C%93&q=tatoeba&type=)
* [hal.archives-ouvertes.fr/file/index/docid/968632/filename/Subtitles_MM-EG.pdf](https://hal.archives-ouvertes.fr/file/index/docid/968632/filename/Subtitles_MM-EG.pdf)
* [lexicom.courses/](https://lexicom.courses/)
* [mailman.uib.no/public/corpora/2009-October/009362.html](https://mailman.uib.no/public/corpora/2009-October/009362.html)
* [stackoverflow.com/questions/27361627/load-parallel-corpora-with-nltk-and-lemmatize-english-sentences](https://stackoverflow.com/questions/27361627/load-parallel-corpora-with-nltk-and-lemmatize-english-sentences)
* [tatoeba.org/eng/downloads](https://tatoeba.org/eng/downloads)
* [technaverbascripta.wordpress.com/2012/09/25/loading-a-corpus-into-the-natural-language-toolkit/](https://technaverbascripta.wordpress.com/2012/09/25/loading-a-corpus-into-the-natural-language-toolkit/)
* [ecosia.org/search?q=tatoeba+to+anki&addon=chrome&addonversion=2.0.3](https://www.ecosia.org/search?q=tatoeba+to+anki&addon=chrome&addonversion=2.0.3)
* [ncbi.nlm.nih.gov/pmc/articles/PMC4551210/](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4551210/)
* [omniglot.com/language/phrases/phrasefinder.php](https://www.omniglot.com/language/phrases/phrasefinder.php)
* [r/Python/comments/5ctedp/add_a_corpus_to_the_nltk_corpus_and_importing_it/](https://www.reddit.com/r/Python/comments/5ctedp/add_a_corpus_to_the_nltk_corpus_and_importing_it/)
* [sketchengine.co.uk/](https://www.sketchengine.co.uk/)
* [translatum.gr/forum/index.php?topic=53574.0](https://www.translatum.gr/forum/index.php?topic=53574.0)
* [video](https://www.youtube.com/channel/UCc70aB6IfdZpR6mlTON1qjg)
* [video](https://www.youtube.com/channel/UCKRw8GAAtm27q4R3Q0kst_g)
* [Resource Report: Building Parallel Text Corpora for Multi-Domain Translation System](https://www.researchgate.net/profile/Riza_Hammam/publication/228848307_Resource_Report_Building_Parallel_Text_Corpora_for_Multi-Domain_Translation_System/links/54fadd950cf2040df21d2f86/Resource-Report-Building-Parallel-Text-Corpora-for-Multi-Domain-Translation-System.pdf)
* [Text corpus - wikidoc](http://www.wikidoc.org/index.php/Text_corpus)

    The list contains a variety of resources for natural language processing and linguistic research. Some notable resources include the Corpus of Quranic Arabic, the Classical Greek Core Vocabulary List, and the Perseus Digital Library. Additionally, there are several sentence alignment tools listed, including hunalign and LF Aligner, that may be useful for parallel corpus creation.
* [Sampling-based Multilingual Alignment](https://aclanthology.org/R09-1040.pdf)
* [Tool for parallel corpora filtering and aligning | Krzysztof Wołk - Specjalista IT](http://wolk.pl/tool-for-parallel-corpora-filtering-and-aligning/)
* [TranslationParty - Find the equilibrium](http://www.translationparty.com/)
* [Using Global Voices.org to make simple parallel texts - A language learners’ forum](https://forum.language-learners.org/viewtopic.php?t=2013)
* [WIT3 - Web Inventory of Transcribed and Translated Talks](https://wit3.fbk.eu/)
* [angelodel80/CophiAlignment: Basic Aligner for parallel texts](https://github.com/angelodel80/CophiAlignment)
* [Anymalign](https://anymalign.limsi.fr/)
* [alignment 1.0.9 : Python Package Index](https://pypi.python.org/pypi/alignment/1.0.9)
* [ABBYY Aligner (CAT Tools Technical Help)](https://www.proz.com/forum/cat_tools_technical_help/280415-abbyy_aligner.html)
* [sourceforge.net/projects/aligner/](https://sourceforge.net/projects/aligner/)

    *  tiedemann / subalign / source / — Bitbucket
* [Bitext Maps and Alignment](http://nlp.cs.nyu.edu/bma/)
* [bitext-matching/README.md at master · PhilippeFerreiraDeSousa/bitext-matching · GitHub](https://github.com/PhilippeFerreiraDeSousa/bitext-matching/blob/master/lib/README.md)
* [Convert CSV files to PBO parallel bilingual books](https://gist.github.com/emk/a68c16bc1a8cd4840a5a)

    * **rsennrich/Bleualign: Machine-Translation-based sentence alignment tool for parallel text
* [rsennrich/Bleualign: Machine-Translation-based sentence alignment tool for parallel text](https://github.com/rsennrich/Bleualign)
* [Vocabulary · PyPI](https://pypi.org/project/Vocabulary/)
* [markuskiller/textblob-sent-align: ``TextBlob`` model extension: sentence alignment for parallel TextBlobs](https://github.com/markuskiller/textblob-sent-align)
* [tagaligner: an aligner for parallel text](http://tag-aligner.sourceforge.net/)
* [Terminotix - AlignFactory](https://terminotix.com/index.asp?name=AlignFactory&content=item&brand=1&item=4&lang=en)
* [Moses - Main/HomePage](http://www.statmt.org/moses/)
* [nltk.align package — NLTK 3.0 documentation](http://www.nltk.org/api/nltk.align.html)
* [nltk.corpus.reader package — NLTK 3.2.5 documentation](http://www.nltk.org/api/nltk.corpus.reader.html)
* [pcast (Paul Castronova)](https://github.com/pcast)
* [pcast/hocr-tools: Tools for manipulating and evaluating the hOCR format for representing multi-lingual OCR results by embedding them into HTML.](https://github.com/pcast/hocr-tools)
* [pcast/reader: Proof of concept for displaying parallel texts with phrase alignment.](https://github.com/pcast/reader)
* [yalign 0.1.1 : Python Package Index](https://pypi.python.org/pypi/yalign)

    * **gumblex/Bleualign: Machine-Translation-based sentence alignment tool for parallel text
* [Creating Bilingual Texts with AlSim Parallel Texts Reader - YouTube](https://www.youtube.com/watch?v=0Tvw9XNcgB0)
* [sites.google.com/view/alsim](https://sites.google.com/view/alsim)
* [bitbucket.org/tiedemann/lingua-align/wiki/Home](https://bitbucket.org/tiedemann/lingua-align/wiki/Home)
* [nltk.org/howto/wordnet.html](http://www.nltk.org/howto/wordnet.html)
* [ENPC-Aligner · PyPI](https://pypi.org/project/ENPC-Aligner/1.0.4/)
* [loomchild/maligna: Bilingual sengence aligner](https://github.com/loomchild/maligna)
* [mebubo/paragraph-align: Naive alignment of paragraphs in bilingual texts](https://github.com/mebubo/paragraph-align)

    * *?Crear subtítulos dobles para películas en Foreign Languages Online
    *  emk/substudy: Use SRT subtitle files to study foreign languages (in progress)
    *  substudy: A tool for learning languages using TV shows and subtitles | Random Hacks
    * **Extracting and analyzing subtitles - Lupyan Lab
* [hochulshin.com/python-subtitle-cleaningup/](http://hochulshin.com/python-subtitle-cleaningup/)
* [kodi.wiki/view/Add-on:OpenSubtitles.org](http://kodi.wiki/view/Add-on:OpenSubtitles.org)
* [opus.nlpl.eu/](http://opus.nlpl.eu/)
* [opus.nlpl.eu/OpenSubtitles2018.php](http://opus.nlpl.eu/OpenSubtitles2018.php)
* [video.google.com/timedtext?lang=en&v=aircAruvnKk](http://video.google.com/timedtext?lang=en&v=aircAruvnKk)
* [video.google.com/timedtext?lang=es&v=NI9TLDIPVcs](http://video.google.com/timedtext?lang=es&v=NI9TLDIPVcs)
* [randomhacks.net/substudy/](http://www.randomhacks.net/substudy/)
* [bitbucket.org/tiedemann/](https://bitbucket.org/tiedemann/)
* [easypronunciation.com/es/merge-two-subtitle-files-online](https://easypronunciation.com/es/merge-two-subtitle-files-online)
* [byroot/pysrt](https://github.com/byroot/pysrt)
* [emk](https://github.com/emk)
* [emk/substudy](https://github.com/emk/substudy)
* [researchgate.net/profile/Riza_Hammam/publication/228848307_Resource_Report_Building_Parallel_Text_Corpora_for_Multi-Domain_Translation_System/links/54fadd950cf2040df21d2f86/Resource-Report-Building-Parallel-Text-Corpora-for-Multi-Domain-Translation-System.pdf](https://www.researchgate.net/profile/Riza_Hammam/publication/228848307_Resource_Report_Building_Parallel_Text_Corpora_for_Multi-Domain_Translation_System/links/54fadd950cf2040df21d2f86/Resource-Report-Building-Parallel-Text-Corpora-for-Multi-Domain-Translation-System.pdf)
* [webucator.com/blog/2017/04/simple-python-script-extracting-text-srt-file/](https://www.webucator.com/blog/2017/04/simple-python-script-extracting-text-srt-file/)
* [kaegi/aligner: Fully automatically corrects subtitle with a reference subtitle](https://github.com/kaegi/aligner)
* [OpenSubs Paper](http://www.lrec-conf.org/proceedings/lrec2008/pdf/76_paper.pdf)
* [Sample YT video sub link](http://video.google.com/timedtext?lang=en&v=aircAruvnKk)
* [subtitle-downloader/subtitle-downloader.py at master · manojmj92/subtitle-downloader · GitHub](https://github.com/manojmj92/subtitle-downloader/blob/master/subtitle-downloader.py)
* [Subtitles The Lord of the Rings: The Fellowship of the Ring - subtitles english 1CD srt (eng)](https://www.opensubtitles.org/en/subtitles/7288827/the-lord-of-the-rings-the-fellowship-of-the-ring-en)

    Crash Course

    vlogbrothers
* [search?q=bitext+alignment&type=Repositories](https://github.com/search?q=bitext+alignment&type=Repositories)
* [gpetho/MScThesis](https://github.com/gpetho/MScThesis)
* [alibaba-edu/simple-effective-text-matching-pytorch](https://github.com/alibaba-edu/simple-effective-text-matching-pytorch)
* [justusschock/deep_alignment_network_pytorch](https://github.com/justusschock/deep_alignment_network_pytorch)
* [PhilippeFerreiraDeSousa/bitext-matching](https://github.com/PhilippeFerreiraDeSousa/bitext-matching)
* [search?q=word+alignment&type=Repositories](https://github.com/search?q=word+alignment&type=Repositories)
* [Text Technology Project - Hojas de cálculo de Google](https://docs.google.com/spreadsheets/d/1U0VKGtTF4XOXSPsnb8SFIP5z87IOiDTcwSgDv_SUQww/edit#gid=2056055344)

# Notes

* alignment rules: U{1:n} from both directions? blocks allowed? unaligned words also allowed?

```latex
* P = \textbf{1}(\textrm{max}(\textrm{rowsoftmax}(Z), \textrm{colsoftmax}(Z)) > \tau)
* Z_{[m \times n]} = L^{B}_{[m \times h]} (L_{[n \times h]}^{A})^T

= R_{[m \times n]}^{B} V_{[n \times h]}^{B} (R_{[n \times m]}^{A} V_{[m \times h]}^{A} )^T

= Q_{[m \times h]}^{A} (K^{B})^T_{[h \times n]} V_{[n \times h]}^{B} (Q_{[n \times h]}^{B} (K^{A})^T_{[h \times m]} V_{[m \times h]}^{A})^T

= W_{Q[m \times m]}^{A} X_{[m \times h]}^{A} (W_{K[n \times n]}^{B} X_{[n \times h]}^{B})^T W_{V[n \times n]}^{B} X_{[n \times h]}^{B} (W_{Q[n \times n]}^{B} X_{[n \times h]}^{B} (W_{K[m \times m]}^{A} X_{[m \times h]}^{A})^T W_{V[m \times m]}^{A} X_{[m \times h]}^{A}

)^T

```
* align English with LA, GRC, FR, DE, ES, RU, ZH (start with DE, FR, RU); write package for realignment: x:y, y:z → x:z (need to flag ambiguities and fix manually)
* data for EN-DE
    * 10k from bibles
    * 10k Tatoeba (300k total)
    * 20k from classic literature
    * 10k from film subtitles
    * 10k from TED talks
    * 10k from YouTube
    * 10k from assorted non-fiction: documentation, reports
    * 10k from media: GlobalVoices, CafeBabel, EuroNews, SwissInfo (especially)
* → search arxiv, neurips, acl for neural alignment
* 6 languages → 21 pairs; 7 languages → 28 pairs, 8 → 36, 9 → 45
* 10,000 aligned sentence pairs each
* baseline word alignments: cross-lingual BERT similarity matrix (normalized weighted dot product? cosine similarity?) → add small-valued diagonal-normal matrix (multiplied by learnable scalar?) to learned alignments to slightly favor diagonal alignments (serve as tiebreaker) → learnable tiebreaker matrix per language pair
* loss: cross-entropy?
* operation: umax: union max: x → x in {rowmax(X), colmax(X)}
* add Project Syndicate to parallel text dataset, Eurozine, ereb.eu,
* alignment scheme:
* i=j for minimal (100%)
* i:j for strict (additional)
* i;j for bisurjective (additional)
* (i-j)<>(k-l) for MWE additional pairs
* i<>j for non-literal corresponding pairs
* characters: = , : ;  ’><’ ‘<>’ ( ) . ?
* output 3- or 4-dimensional tensor to account for different classes of alignments? k different heads?

```latex
* A_{[4, h]} (\vec{v} \otimes \vec{w} )_{[h, 1]} = \vec{p}_{[4, 1]} (?)

```
* modulating matrix C; enables k different outputs for different alignment levels

```latex
* A_i = L^B_{[m, h]} C_{i[h, h]} (L^A)^T_{[h, n]}, i \in \{1,2,...,k\}

```
* learn rules of tensor multiplication (in ML context)
* CRF in 3 dimensions?
* use (cross-lingual?) embeddings to recognize figurative language (non-literal translations)
* word-alignment-viewer: make feature in webpage to show predicted alignment via shading: color-coded by alignment type; for naïve cross-lingual embedding similarity, make high-similarity words darker (softmax scaling?), fade out low-similarity words
* also add audio recordings & use alignment tool
* alignment types: how to color-code alignments?
    * semantic alignment
    * figurative alignment
    * syntactic alignment
    * loners (unpaired)
    * noise
* Added value for language learners in language learning
    * easy word-for-word reading
* Known Unknowns: Small-Vocabulary Sentence and Word Alignment [Using High-Frequency Closed-Class and Pattern-Matching Tokens]
* End-to-End Neural Sentence and Word Alignment  / End-to-End Neural Bitext Alignment
* Use CRF or related PGM for output layer? (word and alignment → read PGM book, section from SLP 3e on CRFs
* create classifier for whether two tests are exact translation, loose translation, (partition: insertion, deletion, paraphrase), or unrelated
* use punctuation and word length to score match likelihood?
* does HFCC approach gain from mapping not to a single <UNK> token, but instead to length-based tokens: <UNK1>, <UNK2>, <UNK3>, …
* Parallel Text & PGTK

    ‣
* [SimAlign: High Quality Word Alignments without Parallel Training Data using Static and Contextualized Embeddings](https://arxiv.org/abs/2004.08728v4)
* [Improving Word Alignment with Contextualized Embedding and Bilingual Dictionary](https://link.springer.com/chapter/10.1007/978-981-16-0705-9_13)
* [ruder.io/cross-lingual-embeddings/](https://www.ruder.io/cross-lingual-embeddings/)

    Drive: Line-a-line: A Tool for Annotating Word-Alignments
* [inventory.clarin.gr/corpus/670](https://inventory.clarin.gr/corpus/670)
* [clarin.eu/resource-families/parallel-corpora](https://www.clarin.eu/resource-families/parallel-corpora)
* [huggingface.co/blog/how-to-train-sentence-transformers](https://huggingface.co/blog/how-to-train-sentence-transformers)

    cross-attention: from each word embedding, learn query, key, and value vectors for querying the other sequence
* [stats.stackexchange.com/questions/421935/what-exactly-are-keys-queries-and-values-in-attention-mechanisms](https://stats.stackexchange.com/questions/421935/what-exactly-are-keys-queries-and-values-in-attention-mechanisms)
* [paperswithcode.com/task/word-alignment/codeless](https://paperswithcode.com/task/word-alignment/codeless)
* [ted.com/people/translators](https://www.ted.com/people/translators)

    ‣
* [tesseract-ocr.github.io/tessdoc/](https://tesseract-ocr.github.io/tessdoc/)
* [ted.com/talks?sort=newest&language=pt-br](https://www.ted.com/talks?sort=newest&language=pt-br)
* [statworx.com/content-hub/blog/finetuning-von-tesseract-ocr-fuer-deutsche-rechnungen/](https://www.statworx.com/content-hub/blog/finetuning-von-tesseract-ocr-fuer-deutsche-rechnungen/)

    ‣

    word-alignment: look into kearning word alignments from HFCC words, or HFCC + k most frequent, or that + pattern- and length-matched words (<UNK-LENGTH:7-PREFIX:VER-

    SUFFIX:EN>)

    use full bert or similar to generate manually-corrected gold labels
* [Word Alignment by Fine-tuning Embeddings on Parallel Corpora](https://arxiv.org/abs/2101.08231)

    ¡¡Atención para las Redes Neuronales, Claramente Explicadas!!!
* [researchgate.net/figure/Comparison-of-the-proposed-algorithm-with-Gale-and-Church-algorithm-for-a-text-where-the_fig2_1871685](https://www.researchgate.net/figure/Comparison-of-the-proposed-algorithm-with-Gale-and-Church-algorithm-for-a-text-where-the_fig2_1871685)
* [The TransBank Aligner: Cross-Sentence Alignment with Deep Neural Networks](https://link.springer.com/chapter/10.1007/978-3-030-27947-9_16)
* [Improving neural machine translation with sentence alignment learning](https://www.sciencedirect.com/science/article/abs/pii/S0925231220313473)
* [[2101.08231] Word Alignment by Fine-tuning Embeddings on Parallel Corpora](https://arxiv.org/abs/2101.08231)
* [autocomplete - How to show paths for auto imports with neovim nvim-cmp - Stack Overflow](https://stackoverflow.com/questions/72668920/how-to-show-paths-for-auto-imports-with-neovim-nvim-cmp)
* [Refining Word Segmentation Using a Manually Aligned Corpus for Statistical Machine Translation](https://aclanthology.org/D14-1173.pdf)
* [Tutorials/Using Other Window Managers with Plasma - KDE UserBase Wiki](https://userbase.kde.org/Tutorials/Using_Other_Window_Managers_with_Plasma)
* [hessian_AI - YouTube](https://www.youtube.com/@hessian_ai8880/featured)
* [Czech-English Manual Word Alignment](https://lindat.mff.cuni.cz/repository/xmlui/handle/11234/1-1804)
* [EUbookshop](https://opus.nlpl.eu/EUbookshop.php)
* [ParIce](https://clarin.is/en/resources/parice/)
* [CLARIN:EL - OpenSubtitles2011](https://inventory.clarin.gr/corpus/670)
* [CLARIN:EL - Parallel Global Voices](https://inventory.clarin.gr/corpus/753)
* [GeFRePaC - German French Reciprocal Parallel Corpus – ELRA Catalogue](https://catalog.elra.info/en-us/repository/browse/ELRA-W0031/)
* [Tatoeba](https://opus.nlpl.eu/Tatoeba.php)
* [PHP: Download documentation](https://www.php.net/download-docs.php)
* [deL1L2IM corpus – ELRA Catalogue](https://catalog.elra.info/en-us/repository/browse/ELRA-W0083/)
* [MLCC Multilingual and Parallel Corpora – ELRA Catalogue](https://catalog.elra.info/en-us/repository/browse/ELRA-W0023/)
* [ECB](https://opus.nlpl.eu/ECB.php)
* [Europarl](https://opus.nlpl.eu/Europarl.php)
* [GNOME](https://opus.nlpl.eu/GNOME.php)
* [GlobalVoices](https://opus.nlpl.eu/GlobalVoices.php)
* [ParCor - A Paralell Pronoun-Coreference Corpus](https://opus.nlpl.eu/ParCor/)
* [OpenSubtitles](https://opus.nlpl.eu/OpenSubtitles-v2018.php)
* [word2word · PyPI](https://pypi.org/project/word2word/)
* [Extraction of Multi-word Expressions from Small Parallel Corpora](https://aclanthology.org/C10-2144.pdf)
* [Information | Free Full-Text | Punctuation and Parallel Corpus Based Word Embedding Model for Low-Resource Languages](https://www.mdpi.com/2078-2489/11/1/24/htm)
* [OPUS: Search Word Alignments](https://opus.nlpl.eu/lex.php)
* [[2203.16838] NeuFA: Neural Network Based End-to-End Forced Alignment with Bidirectional Attention Mechanism](https://arxiv.org/abs/2203.16838)
* [thuhcsi/NeuFA: Neural network-based forced alignment with bidirectional attention mechanism](https://github.com/thuhcsi/neufa)
* [[1803.00057] A Neural Multi-sequence Alignment TeCHnique (NeuMATCH)
* [End-to-End Neural Word Alignment Outperforms GIZA++](https://aclanthology.org/2020.acl-main.146.pdf)
* [End-to-end speech recognition with Alignment RNN-Transducer | IEEE Conference Publication | IEEE Xplore](https://ieeexplore.ieee.org/document/9533348)
* [PyArabic · PyPI](https://pypi.org/project/PyArabic/)
* [One TTS Alignment To Rule Them All | Papers With Code](https://paperswithcode.com/paper/one-tts-alignment-to-rule-them-all)
* [Multi-head attention mechanism: "queries", "keys", and "values," over and over again - Data Science Blog](https://data-science-blog.com/blog/2021/04/07/multi-head-attention-mechanism/)
* [noor library the largest arab electronic library open for books](https://www.noor-book.com/en/)
* [CAMeL-Lab/camel_tools: A suite of Arabic natural language processing tools developed by the CAMeL Lab at New York University Abu Dhabi.](https://github.com/CAMeL-Lab/camel_tools)
* [CAMeL_Tools_Guided_Tour.ipynb - Colaboratory](https://colab.research.google.com/drive/1Y3qCbD6Gw1KEw-lixQx1rI6WlyWnrnDS?usp=sharing)
* [Latin Quran](https://web.archive.org/web/20121224042616/http://sites.univ-lyon2.fr/lesmondeshumanistes/wp-content/uploads/2010/09/Le-Coran-latin-de-Th%C3%A9odore-Bibliander.pdf)
* [List of modern literature translated into dead languages - Wikipedia](https://en.wikipedia.org/wiki/List_of_modern_literature_translated_into_dead_languages)
* [pranaydeeps/Ancient-Greek-BERT · Hugging Face](https://huggingface.co/pranaydeeps/Ancient-Greek-BERT)
* [GitHub - dbamman/latin-bert: Latin BERT](https://github.com/dbamman/latin-bert)
* [tgogos/ocr_greek: resources, links for OCR & greek](https://github.com/tgogos/ocr_greek)
* [OCR for ancient Greek - The Digital Classicist Wiki](https://wiki.digitalclassicist.org/OCR_for_ancient_Greek)
* [dcthree/antigrapheus: In-browser OCR of Ancient Greek and Latin](https://github.com/dcthree/antigrapheus)
* [brobertson/rigaudon: Polytonic Greek OCR engine derived from Gamera and based on the work of Dalitz and Brandt](https://github.com/brobertson/rigaudon)
* [ancient-greek · GitHub Topics](https://github.com/topics/ancient-greek)
* [brobertson/ciaconna: Polytonic Greek OCR tool suite based on Ocropus 0.7](https://github.com/brobertson/ciaconna)
* [pharos-alexandria/ocr-greek_cursive: Training files for Greek cursive script (in early print)](https://github.com/pharos-alexandria/ocr-greek_cursive)
* [Antigrapheus - Online OCR for Ancient Greek and Latin](https://dcthree.github.io/antigrapheus/)
* [TeX rendering in a Java application - TeX - LaTeX Stack Exchange](https://tex.stackexchange.com/questions/41609/tex-rendering-in-a-java-application)
* [Welcome < RTextDoc](http://jwork.org/rtextdoc/)
* [texlive - Embed Tex Live into application - TeX - LaTeX Stack Exchange](https://tex.stackexchange.com/questions/168652/embed-tex-live-into-application)
* [embed latex in application - Google Search](https://www.google.com/search?client=firefox-b-d&q=embed+latex+in+application)
* [overleaf/clsi: A web api for compiling LaTeX documents in the cloud](https://github.com/overleaf/clsi)
* [**busytex/busytex: TexLive programs bundled into a single static binary for x86_64-linux / WASM](https://github.com/busytex/busytex)
* [texlive-source/Build at trunk · TeX-Live/texlive-source](https://github.com/TeX-Live/texlive-source/blob/trunk/Build)
* [TeX-Live/texlive-source: source part of the TeX Live subversion repository - for issues please contact the tex-k mailing list at tug.org](https://github.com/TeX-Live/texlive-source/tree/trunk)
* [TexLive - NixOS Wiki](https://nixos.wiki/wiki/TexLive)
* [mwe2021.pdf](https://people.eng.unimelb.edu.au/tbaldwin/pubs/mwe2021.pdf)
* [Marcos de Toledo - Wikipedia, la enciclopedia libre](https://es.wikipedia.org/wiki/Marcos_de_Toledo)
* [LWT ◆ Learning with Texts - Browse Files at SourceForge.net](https://sourceforge.net/projects/learning-with-texts/files/)
* [HugoFara/lwt: Learn languages by reading! A language learning app stemmed from Learning with Texts (LWT).](https://github.com/HugoFara/lwt)
* [Learning with Texts | lwt](https://hugofara.github.io/lwt/)
* [A Simple and Amazing Way to Create your Own Interlinear Texts – Luca Toma - Luca Lampariello](https://www.lucalampariello.com/create-interlinear-texts/)
* [Lace: Visualizing, Editing and Searching Polylingual OCR Results](http://heml.mta.ca/lace/index.html)
* [brobertson/Lace2: In-broswer OCR editing program that transforms OCR results into structured, citable TEI. No XML experience required!](https://github.com/brobertson/Lace2)
* [Getting Started with CMake for LaTeX - Code Intrinsic](https://www.codeintrinsic.com/getting-started-with-cmake-for-creating-latex-build-process/)
* [Gallery - Templates, Examples and Articles written in LaTeX - Overleaf, Online LaTeX Editor](https://www.overleaf.com/gallery/tagged/dictionary)
* [Les auteurs latins: Lucrèce. Morceaux choisis.](http://gerardgreco.free.fr/IMG/pdf/drn1-3-00.pdf)
* [latex-bilingue/bilingue.pdf at master · lologhi/latex-bilingue](https://github.com/lologhi/latex-bilingue/blob/master/bilingue.pdf)
* [GitHub - iamalbert/pytorch-wordemb: Load pretrained word embeddings (word2vec, glove format) into torch.FloatTensor for PyTorch](https://github.com/iamalbert/pytorch-wordemb)
* [Wayback Machine](https://web.archive.org/web/20130512105242%20/http://www.volny.cz/petr-brezina/libelli/bilingue.pdf)
* [Bible translations into Arabic - Wikipedia](https://en.wikipedia.org/wiki/Bible_translations_into_Arabic)
* [LaTeX, pdfTeX, XeTeX, LuaTeX and ConTeXt - Overleaf, Online LaTeX Editor](https://www.overleaf.com/learn/latex/Articles/The_TeX_family_tree%3A_LaTeX%2C_pdfTeX%2C_XeTeX%2C_LuaTeX_and_ConTeXt)
* [Macronized editions of Latin texts | Latin D](https://latindiscussion.org/threads/macronized-editions-of-latin-texts.26943/)
* [Where to Find Ancient Texts with Macrons : r/latin](https://www.reddit.com/r/latin/comments/dfkezc/where_to_find_ancient_texts_with_macrons/)
* [Seeking Texts with Macrons online - Textkit Greek and Latin Forums](https://www.textkit.com/greek-latin-forum/viewtopic.php?t=12373)
* [antoineboquet/bailly.app: Code source du site Bailly.app.](https://github.com/antoineboquet/bailly.app)
* [Gaffiot/digital-gaffiot-json](https://github.com/Gaffiot/digital-gaffiot-json)
* [antoineboquet/bailly-server: Code source du serveur utilisé par le site Bailly.app.](https://github.com/antoineboquet/bailly-server)
* [antoineboquet/greek-conversion: A small library to convert a polytonic greek string from/into various representations.](https://github.com/antoineboquet/greek-conversion)
* [learning word alignment with neural nets at DuckDuckGo](https://duckduckgo.com/?q=learning+word+alignment+with+neural+nets&ia=web)
* [Word Alignment in the Era of Deep Learning: A Tutorial](https://arxiv.org/pdf/2212.00138.pdf)
* [Search for Improving neural machine translation with sentence alignment learning | Papers With Code](https://paperswithcode.com/search?q_meta=&q_type=&q=Improving+neural+machine+translation+with+sentence+alignment+learning)
* [[2007.01852] Language-agnostic BERT Sentence Embedding](https://arxiv.org/abs/2007.01852)
* [[1601.03805] Matrix Neural Networks](https://arxiv.org/abs/1601.03805)
* [Sentence Alignment and Word Alignment: Projects, Papers, Evaluation, etc.](https://web.eecs.umich.edu/~mihalcea/wa/)
* [Neural semi-Markov CRF for Monolingual Word Alignment at DuckDuckGo](https://duckduckgo.com/?q=Neural+semi-Markov+CRF+for+Monolingual+Word+Alignment&ia=web)
* [A Correction Model for Word Alignments](https://aclanthology.org/D11-1082.pdf)
* [robertostling/eflomal: Efficient Low-Memory Aligner](https://github.com/robertostling/eflomal)
* [raphink/geneve_1564: LaTeX facsimile of a Bible de Genève, 1564](https://github.com/raphink/geneve_1564)
* [big list - Showcase of beautiful typography done in TeX & friends - TeX - LaTeX Stack Exchange](https://tex.stackexchange.com/questions/1319/showcase-of-beautiful-typography-done-in-tex-friends)
* [ hmemcpy/milewski-ctfp-pdf: Bartosz Milewski's 'Category Theory for Programmers' unofficial PDF and LaTeX source](https://github.com/hmemcpy/milewski-ctfp-pdf)
* [Installation — Sentence-Transformers documentation](https://www.sbert.net/docs/installation.html)
* [reverso.net/telecharger-extension-navigateur](https://www.reverso.net/telecharger-extension-navigateur)
* [tesseract-ocr.github.io/tessdoc/tess5/TrainingTesseract-5.html#creating-starter-traineddata](https://tesseract-ocr.github.io/tessdoc/tess5/TrainingTesseract-5.html#creating-starter-traineddata)
* Create pretraining set with existing SotA word/sentence aligner and BERT-based method, then correct by hand
* Simple alignment types:
* minimal - only exact translations
* strict - suitable word pairs aligned; particles & similar left unaligned
* bisurjective: (best-one) - every word from each language aligned to best match
* multi-word expressions: ranges aligned to ranges
* [Multilingual Aligned Corpora From Movie Subtitles](https://giguete.users.greyc.fr/alignment/Subtitles_MM-EG.pdf)
* HFCC detector

    pronouns

    prepositions

    adverbs

    conjunctions

    articles

    determiners

    interjections

    particles

    numbers

    very most common verbs: to be, to say, to do, to ask, can/be able to,  ...

    auxiliary verbs

    regex-based:

    noun-like (capital in German, etc.)

    verb-like

    adjective-like

## Parallel Text Finisher

# parallel-text-finisher

* Create (in Go?) an interlinear LaTeX generator, easily configurable. → learn Go, see about OOP-like constructs, templating, string manipulations, etc.
* look at source of taskwarrior search filtering
* HTML generator in Julia for parallang (Franklin.jl, Genie? Genie Cloud? Pelican in Python?)

(how to) earn money from parallel text toolkit?
* Parallel text flutter app (or other cross-platform app, such as Doxius)
* how to make hover effects?: word/span highlight → highlight aligned words in corresponding sentence(s)

## WiktionaryTool.jl

# WiktionaryTool.jl 🌱

* [yelircaasi/wiktionary-etymology-tool](https://github.com/yelircaasi/wiktionary-etymology-tool)
* Language Candidates

    Julia

    Python

    R

    Scala

    C++

    Java

    JavaScript (Node.js or Deno?)

    Ruby?

    PHP?

    Go?

    Rust?

    Perl?

    * Scheme / Racket / Common Lisp?
* [lispcookbook.github.io/cl-cookbook/web-scraping.html](https://lispcookbook.github.io/cl-cookbook/web-scraping.html)
* [⇒](http://pkgdocs.julialang.org/v1/creating-packages/)
* Similar Projects
* [...](https://github.com/wswu/yawipa)

    → [pypi.org/search/?q=wiktionary](https://pypi.org/search/?q=wiktionary)

    → [Suyash458/WiktionaryParser: A Python Wiktionary Parser](https://github.com/Suyash458/WiktionaryParser)

    → [wiktextract - PyPI](https://pypi.org/project/wiktextract/)

    → [Wiktionary Parser for Python 3.6_ only for definitions - Stack ...](https://stackoverflow.com/questions/45676443/wiktionary-parser-for-python-3-6-only-for-definitions)

    → [Python: wiktionary (applications and programming libraries)](https://libs.garden/python/search?q=wiktionary)

    → [farleyoli/wiktionary-parser - githubmemory](https://githubmemory.com/repo/farleyoli/wiktionary-parser)
* [⇒](https://pypi.org/project/pyktionary/)
* [⇒](https://pypi.org/project/wkt-scraper/)
* [pypi.org/project/wiktextract/](https://pypi.org/project/wiktextract/)
* [Suyash458/WiktionaryParser](https://github.com/Suyash458/WiktionaryParser)
* Applications

    Etymology Graphs

        → semantic comparisons

        → measuring semantic drift

    Intercomprehension Tables

    Wiktionary Gap Identification

    False Friend Tables
* Notes

    ⇒ Julia package for Wiktionary scraping

    WiktionaryScraper.jl

    wiktionaryscraper

    * Wie soll das etymologische Netzwerk aussehen?

        Beziehungen:

        * Elternteil / Kind
        * Cousin, gleiche Bedeutung
        * Cousin, falscher Freund
        * Cousin, irgendwo in der Mitte

    ⇒ Develop Python and Julia packages for scraping Wiktionary

    * Additional Ideas

        → add different sources?

        → identify missing entries on Wiktionary and generate suggestions
* Child Projects
    * CLSEC (cross-lingual semantic and etymological contrasts)
        * contrasting etymologies / root analysis
        * translation persistence of various words
        * contrasting embeddings for translation pairs
        * semantically distinct multi-word expressions/phrases/idioms
        * → use for NSM or similar semantic representation/metalanguage
        * → closely related to paremiological projects → use common tools and methodologies where appropriat
* [CLI-Dictionary](https://github.com/Lodobo/CLI-Dictionary) - Scripts for downloading and viewing wiktionary entries from Kaikki.org.
    * Intercomprehension - Etymologically-Related Words
* Dumps and Dump Parsing
* [dan1wang/jsonbook-builder](https://github.com/dan1wang/jsonbook-builder)
* Wiktionary API
* [en.wiktionary.org/w/api.php](https://en.wiktionary.org/w/api.php)
* [en.wiktionary.org/api/rest_v1/#/Page_content/get_page_definition_term](https://en.wiktionary.org/api/rest_v1/#/Page_content/get_page_definition_term)
* Etymology lists on Wiktionary and Other Data Sources
* [en.wiktionary.org/wiki/Category:Terms_derived_from_Proto-Indo-European](https://en.wiktionary.org/wiki/Category:Terms_derived_from_Proto-Indo-European)

    → [en.wiktionary.org/wiki/Category:Terms_derived_from_Ancient_Greek](https://en.wiktionary.org/wiki/Category:Terms_derived_from_Ancient_Greek)
* [en.wiktionary.org/wiki/Category:Terms_derived_from_Latin](https://en.wiktionary.org/wiki/Category:Terms_derived_from_Latin)
* [en.wiktionary.org/wiki/Category:Terms_derived_from_Arabic](https://en.wiktionary.org/wiki/Category:Terms_derived_from_Arabic)
* [en.wiktionary.org/wiki/Category:Terms_derived_from_Hebrew](https://en.wiktionary.org/wiki/Category:Terms_derived_from_Hebrew)
* [en.wiktionary.org/wiki/Category:Proto-Slavic_lemmas](https://en.wiktionary.org/wiki/Category:Proto-Slavic_lemmas)
* [en.wiktionary.org/wiki/Category:Terms_derived_from_Russian](https://en.wiktionary.org/wiki/Category:Terms_derived_from_Russian)
* [en.wiktionary.org/wiki/Category:Terms_derived_from_Old_East_Slavic](https://en.wiktionary.org/wiki/Category:Terms_derived_from_Old_East_Slavic)
* [en.wiktionary.org/wiki/Category:Terms_derived_from_Slavic_languages](https://en.wiktionary.org/wiki/Category:Terms_derived_from_Slavic_languages)
* [en.wiktionary.org/wiki/Category:Terms_derived_from_West_Slavic_languages](https://en.wiktionary.org/wiki/Category:Terms_derived_from_West_Slavic_languages)
* [en.wiktionary.org/wiki/Category:Terms_derived_from_Proto-Slavic](https://en.wiktionary.org/wiki/Category:Terms_derived_from_Proto-Slavic)
* [en.wiktionary.org/wiki/Category:Terms_derived_from_South_Slavic_languages](https://en.wiktionary.org/wiki/Category:Terms_derived_from_South_Slavic_languages)
* [en.wiktionary.org/wiki/Category:Terms_derived_from_Old_Church_Slavonic](https://en.wiktionary.org/wiki/Category:Terms_derived_from_Old_Church_Slavonic)
* [en.wiktionary.org/wiki/Category:Terms_derived_from_Old_Norse](https://en.wiktionary.org/wiki/Category:Terms_derived_from_Old_Norse)
* [en.wiktionary.org/wiki/Category:English_terms_derived_from_Proto-Germanic](https://en.wiktionary.org/wiki/Category:English_terms_derived_from_Proto-Germanic)
* [en.wiktionary.org/wiki/Category:Terms_derived_from_Yiddish](https://en.wiktionary.org/wiki/Category:Terms_derived_from_Yiddish)
* [en.wiktionary.org/wiki/Category:Terms_derived_from_French](https://en.wiktionary.org/wiki/Category:Terms_derived_from_French)

    etc.
* [en.wiktionary.org/wiki/Category:Arabic_roots](https://en.wiktionary.org/wiki/Category:Arabic_roots)
* [en.wikipedia.org/wiki/Category:Lists_of_loanwords](https://en.wikipedia.org/wiki/Category:Lists_of_loanwords)
* [en.wikipedia.org/wiki/List_of_Germanic_and_Latinate_equivalents_in_English](https://en.wikipedia.org/wiki/List_of_Germanic_and_Latinate_equivalents_in_English)
* [en.wiktionary.org/wiki/Category:Terms_derived_from_Hindi](https://en.wiktionary.org/wiki/Category:Terms_derived_from_Hindi)
* [en.wiktionary.org/wiki/Category:Terms_derived_from_Hindustani_languages](https://en.wiktionary.org/wiki/Category:Terms_derived_from_Hindustani_languages)
* [en.wiktionary.org/wiki/Category:Terms_derived_from_Dravidian_languages](https://en.wiktionary.org/wiki/Category:Terms_derived_from_Dravidian_languages)
* [en.wiktionary.org/wiki/Category:Terms_derived_from_Swahili](https://en.wiktionary.org/wiki/Category:Terms_derived_from_Swahili)
* [en.wiktionary.org/wiki/Category:Terms_derived_from_Chinese](https://en.wiktionary.org/wiki/Category:Terms_derived_from_Chinese)
* [en.wiktionary.org/wiki/Category:English_terms_derived_from_Chinese](https://en.wiktionary.org/wiki/Category:English_terms_derived_from_Chinese)
* [en.wiktionary.org/wiki/Category:Terms_by_etymology_by_language](https://en.wiktionary.org/wiki/Category:Terms_by_etymology_by_language)
* [en.wiktionary.org/wiki/Category:French_terms_derived_from_North_Germanic_languages](https://en.wiktionary.org/wiki/Category:French_terms_derived_from_North_Germanic_languages)
* [List of Russian Roots](https://gist.github.com/oskarkv/c7aea99cbc2aeb5098ae)

    → BYU roots book

    → from frequency lists:
* [en.wiktionary.org/wiki/Wiktionary:Frequency_lists](https://en.wiktionary.org/wiki/Wiktionary:Frequency_lists)
* [1000mostcommonwords.com](https://1000mostcommonwords.com/)

    Ancient Greek Lemmas

    Latin Lemmas
* [English from Ancient Greek](https://en.wiktionary.org/w/index.php?title=Category:English_terms_derived_from_Ancient_Greek&pagefrom=AILUROPHILE%0Aailurophile#mw-pages)
* [Terms derived from Ancient Greek](https://en.wiktionary.org/wiki/Category:Terms_derived_from_Ancient_Greek)
* [Terms derived from Latin](https://en.wiktionary.org/wiki/Category:Terms_derived_from_Latin)
* [en.wiktionary.org/wiki/Category:Terms_derived_from_Proto-Germanic](https://en.wiktionary.org/wiki/Category:Terms_derived_from_Proto-Germanic)
* [en.wiktionary.org/wiki/Category:Terms_derived_from_Proto-Slavic](https://en.wiktionary.org/wiki/Category:Terms_derived_from_Proto-Slavic)
* [en.wiktionary.org/wiki/Category:Terms_derived_from_Proto-Semitic](https://en.wiktionary.org/wiki/Category:Terms_derived_from_Proto-Semitic)
* [en.wiktionary.org/wiki/Category:Terms_derived_from_Proto-Indo-European](https://en.wiktionary.org/wiki/Category:Terms_derived_from_Proto-Indo-European)
* Scraping
* [julia.school/julia/scraping/](https://julia.school/julia/scraping/)
* [juliabloggers.com/julia-introduction-to-web-scraping-phivolcs-seismic-events/](https://www.juliabloggers.com/julia-introduction-to-web-scraping-phivolcs-seismic-events/)
* [stochasticlifestyle.com/finalizing-julia-package-documentation-testing-coverage-publishing/](http://www.stochasticlifestyle.com/finalizing-julia-package-documentation-testing-coverage-publishing/)
* [discourse.julialang.org/t/how-to-start-writing-a-new-julia-package/2864/24](https://discourse.julialang.org/t/how-to-start-writing-a-new-julia-package/2864/24)
* [JuliaLang/Example.jl](https://github.com/JuliaLang/Example.jl) [JuliaLang/METADATA.jl/issues](https://github.com/JuliaLang/METADATA.jl/issues) [tobanwiebe.com/blog/2016/08/julia-packaging](https://tobanwiebe.com/blog/2016/08/julia-packaging)
* [stackoverflow.com/questions/59825336/how-can-i-do-web-scraping-in-julia](https://stackoverflow.com/questions/59825336/how-can-i-do-web-scraping-in-julia)

## Grecromancer

## grecromancer (Classics TTS)

* Name ideas: GrecRomancer (from Necromancer
* To do: Divide into smaller sub-projects.

### Data Ideas

* Align at word level by pre-trained ASR:
* get output or intermediate output in another language (Italian for Latin, Italian / Modern Greek / Russian for Greek)
* recover temporal alignment
* align Latin / greek characters / syllables to corresponding best match in ASR output
  * dynamic programming approach?
  * beam search?
  * forced alignment → look into off-the-shelf
* using the time stamps for each word (ideally with both loose and tight to put bounds on estimate of temporal location of word), create different permutations

### IP Concerns

* 1. learn about relevant IP law and legal precedent
* 2. decide whether to contact and collaborate with relevant speakers
* → after impressive samples have been generated?

### Resources

* [Valerio Velardo - The Sound of AI](https://www.youtube.com/@ValerioVelardoTheSoundofAI/playlists)
* [Digital speech processing](https://www.youtube.com/playlist?list=PLvv3PyiCcNrFuT7CEIvIr4a4g4orascx3)
* [Deep Learning (for Audio) with Python](https://www.youtube.com/playlist?list=PL-wATfeyAMNrtbkCNsLcpoAyBBRJZVlnf)
* Polytonic Representation
  * atomic: each breathing / vowel / accent combination treated as a separate character
  → same for diphthongs?
  * sequential: each
* ASR and Alignment
* [ ]  [xinjli/allosaurus](https://github.com/xinjli/allosaurus)
* [ ]  [readbeyond/aeneas](https://github.com/readbeyond/aeneas)
* [ ]  [Montreal Forced Aligner](https://montreal-forced-aligner.readthedocs.io/en/latest/)
* [ ]  [babel.ling.upenn.edu/phonetics/old_website_2015/p2fa/index.html](https://babel.ling.upenn.edu/phonetics/old_website_2015/p2fa/index.html)
* [ ]  [Label-Synchronous Speech-to-Text Alignment for ASR Using Forward and Backward Transformers](https://arxiv.org/abs/2104.10328)
* [ ]  [Text and Speech Alignment Methods for Speech Translation Corpora Creation](https://uu.diva-portal.org/smash/get/diva2:1440026/FULLTEXT01.pdf)
* [ ]  [SailAlign: Robust long speech-text alignment](https://sail.usc.edu/publications/files/KatsamanisEtAl_SailAlign_VLSRP2011.pdf)
* [ ]  [FORCED ALIGNMENT WITH WAV2VEC2](https://pytorch.org/audio/main/tutorials/forced_alignment_tutorial.html)
* [ ]  [Audio-to-text alignment for speech recognition with very limited resources](http://www.xavieranguera.com/papers/IS2014_phonealignment.pdf)
* [ ]  Text-to-Speech Alignment for Imperfect Transcriptions
* [ ]  ALIGNMENT OF SPEECH TO HIGHLY IMPERFECT TEXT TRANSCRIPTIONS
* [ ]  [Weakly-supervised text-to-speech alignment confidence measure](https://aclanthology.org/C16-1192.pdf)
* [ ]  [as-ideas/DeepForcedAligner](https://github.com/as-ideas/DeepForcedAligner)
* [ ]  [NeuFA: Neural Network Based End-to-End Forced Alignment with Bidirectional Attention Mechanism](https://arxiv.org/abs/2203.16838)
* [ ]  [app.litmaps.com/seed/178150517](https://app.litmaps.com/seed/178150517)
* [ ]  [app.litmaps.com/seed/253654604](https://app.litmaps.com/seed/253654604)
* [ ]  [app.litmaps.com/seed/253654604](https://app.litmaps.com/seed/253654604)
* [ ]  [app.litmaps.com/seed/246165086](https://app.litmaps.com/seed/246165086)
* [ ]  [app.litmaps.com/seed/93108309](https://app.litmaps.com/seed/93108309)
* [ ]  [app.litmaps.com/seed/238756929](https://app.litmaps.com/seed/238756929)
* [ ]  [app.litmaps.com/seed/15327392](https://app.litmaps.com/seed/15327392)
* [ ]  [MFA](https://www.semanticscholar.org/paper/Montreal-Forced-Aligner%3A-Trainable-Text-Speech-McAuliffe-Socolof/9e8b06c60722fee06d7f01d4eeaf3ae81e0247d7)
* TTS
* [Papers with Code - Text-To-Speech Synthesis](https://paperswithcode.com/task/text-to-speech-synthesis/)
* [Papers with Code - Text-To-Speech Synthesis](https://paperswithcode.com/task/text-to-speech-synthesis/codeless)

    * Data Augmentatio
* [ ]  → use all (or many) n-grams of appropriate length for early training, then only proper phrase/sentence splits for later finer training
        → separate models for word-level and phrase/sentence-level TTS (but p/s-level highest priority
* [ ]  Low-resource expressive text-to-speech using data augmentatio
* [ ]  [Text-to-speech system for low-resource language using cross-lingual transfer learning and data augmentation](https://asmp-eurasipjournals.springeropen.com/articles/10.1186/s13636-021-00225-4)
* [ ]  [SpecAugment: A Simple Data Augmentation Method for Automatic Speech Recognition](https://arxiv.org/abs/1904.08779)
* [ ]  [speechresearch.github.io/fastspeech2/](https://speechresearch.github.io/fastspeech2/)
* [ ]  [paperswithcode.com/method/fastspeech-2](https://paperswithcode.com/method/fastspeech-2)
* [ ]  [Requirements and Motivations of Low-Resource Speech Synthesis for Language Revitalization](https://aclanthology.org/2022.acl-long.507.pdf)
* [ ]  [datacamp.com/tutorial/complete-guide-data-augmentation](https://www.datacamp.com/tutorial/complete-guide-data-augmentation)
* [ ]  [SpecAugment: A Simple Data Augmentation Method for Automatic Speech Recognition](https://paperswithcode.com/paper/specaugment-a-simple-data-augmentation-method)
* [ ]  [Multi-speaker TTS system for low-resource language using cross-lingual transfer learning and data augmentation](http://www.apsipa.org/proceedings/2021/pdfs/0000849.pdf)
* [ ]  [TTS-by-TTS 2: Data-selective augmentation for neural speech synthesis using ranking support vector machine with variational autoencoder](https://arxiv.org/abs/2206.14984)
* [ ]  [TTS-by-TTS: TTS-driven Data Augmentation for Fast and High-Quality Speech Synthesis](https://arxiv.org/abs/2010.13421)
* [ ]  [Audio Data Augmentation Is All You Need](https://www.youtube.com/watch?v=HH_h52I_Qeg)
* [ ]  [Text-To-Speech Data Augmentation for Low Resource Speech Recognition](https://arxiv.org/abs/2204.00291)
* [ ]  [On-The-Fly Data Augmentation for Text-to-Speech Style Transfer](https://www.cse.ust.hk/faculty/mak/PDF/asru2021-tts.pdf)
* [ ]  [TTS-GAN: A Transformer-based Time-Series Generative Adversarial Network](https://arxiv.org/abs/2202.02691)
* [ ]  [wav2vec 2.0: A Framework for Self-Supervised Learning of Speech Representations](https://arxiv.org/abs/2006.11477)
* [ ]  for fine-tuning: use approach similar to TTS-by-TTS(2) by ensuring that synthetic data used for further training are recognizable by ASR model → will this work, or merely constrict the range of sounds properly generated?
* [ ]  high-quality re-creation with autoencoder, denoising (probably not adding noise!), normalize speed, pitch, and volume, interpolate across 3 directions between original and normalized, (slight pitch increase / decrease), different word cut points (dependent upon correct word alignment), slight speed up, slight slow down,
    → all perturbations should be quite small to maintain quality of the data
    → how to normalize speed? what is one “unit”? →  regression problem? system of equations with weights to learn for each letter (here → variable)? how to maintain speech when speeding up?
* [ ]  weight rarer phonemes and/or phoneme sequences more heavily in the training data?
* [ ]  [r/LanguageTechnology/comments/rz8epu/coqui_introduces_yourtts_a_zerosample](https://www.reddit.com/r/LanguageTechnology/comments/rz8epu/coqui_introduces_yourtts_a_zerosample)
* [ ]  [coqui-ai/TTS](https://github.com/coqui-ai/TTS)
* [ ]  [mozilla/TTS](https://github.com/mozilla/TTS)
* [ ]  [Transfer Learning Framework for Low-Resource Text-to-Speech using a Large-Scale Unlabeled Speech Corpus](https://arxiv.org/abs/2203.15447)
* [ ]  [docs.nvidia.com/deeplearning/nemo/user-guide/docs/en/stable/tts/datasets.html](https://docs.nvidia.com/deeplearning/nemo/user-guide/docs/en/stable/tts/datasets.html)
* [ ]  [docs.nvidia.com/deeplearning/nemo/user-guide/docs/en/stable/core/core.html](https://docs.nvidia.com/deeplearning/nemo/user-guide/docs/en/stable/core/core.html)
* [ ]  [tensorflow.org/datasets/catalog/ljspeech](https://www.tensorflow.org/datasets/catalog/ljspeech)
* [ ]  [A Survey on Neural Speech Synthesis](https://arxiv.org/abs/2106.15561)
* [ ]  [imics-lab/tts-gan](https://github.com/imics-lab/tts-gan)
* [ ]   [ogunlao.github.io/blog/2021/01/26/how-to-create-speech-dataset.html](https://ogunlao.github.io/blog/2021/01/26/how-to-create-speech-dataset.html)
    → should use phrase and sentence breaks as much as possible
    → use accent sequence patterns to identify likely grammatical phrases and reasonable breakpoints
* [ ]  [pytorch.org/audio/main/tutorials/forced_alignment_tutorial.html](https://pytorch.org/audio/main/tutorials/forced_alignment_tutorial.html)
* [ ]  [tiefenauer/forced-alignment](https://github.com/tiefenauer/forced-alignment)
* [ ]
* [GitHub - enhuiz/vall-e: An unofficial PyTorch implementation of the audio LM VALL-E](https://github.com/enhuiz/vall-e)
* [GitHub - wenet-e2e/speech-synthesis-paper: List of speech synthesis papers.](https://github.com/wenet-e2e/speech-synthesis-paper)
* [End-to-End Adversarial Text-to-Speech (Paper Explained)](https://www.youtube.com/watch?v=WTB2p4bqtXU)
* [ogunlao.github.io/blog/2020/07/17/breaking-down-ctc-loss.html](https://ogunlao.github.io/blog/2020/07/17/breaking-down-ctc-loss.html)
* [wav2vec video](https://youtu.be/8Kpowre6yyk)
* [Speech & Music | Applied Deep Learning](https://www.youtube.com/playlist?list=PLoEMreTa9CNkL5fCXx50MN6nwWvsJgio6)
* [graphcore.ai/posts/how-to-use-openais-whisper-for-speech-recognition](https://www.graphcore.ai/posts/how-to-use-openais-whisper-for-speech-recognition)
* TTS LA/GRC
* [Audio samples from "Semi-Supervised Training for Improving Data Efficiency in End-to-End Speech Synthesis"](https://google.github.io/tacotron/publications/semisupervised/)
* [How much dataset is needed at least to train on your version? · Issue #12 · NVIDIA/tacotron2 · GitHub](https://github.com/NVIDIA/tacotron2/issues/12)
* [How to train a new model with dataset of diffirent language? · Issue #321 · NVIDIA/tacotron2 · GitHub](https://github.com/NVIDIA/tacotron2/issues/321)
* [ancientgreek.eu/](https://ancientgreek.eu/)
* [latinitium.com/learn-latin-with-video-and-audio-70-hours-of-spoken-latin/](https://latinitium.com/learn-latin-with-video-and-audio-70-hours-of-spoken-latin/)
* [linguae.weebly.com/latin-speech-engines.html](https://linguae.weebly.com/latin-speech-engines.html)
* [luke-ranieri.myshopify.com/](https://luke-ranieri.myshopify.com/)
* [luke-ranieri.myshopify.com/products/gospel-of-john-english-latin-greek-trilingual-audiobook-text](https://luke-ranieri.myshopify.com/products/gospel-of-john-english-latin-greek-trilingual-audiobook-text)
* [medium.com/@rajanieprabha/tacotron-2-implementation-and-experiments-832695b1c86e](https://medium.com/@rajanieprabha/tacotron-2-implementation-and-experiments-832695b1c86e)
* [medium.com/@rajanieprabha/tacotron-2-implementation-and-experiments-832695b1c86e](https://medium.com/@rajanieprabha/tacotron-2-implementation-and-experiments-832695b1c86e)
* [youtube.com/c/Latinitium](https://youtube.com/c/Latinitium)
* [youtube.com/c/ScorpioMartianus](https://youtube.com/c/ScorpioMartianus)
* [Is this good result · Issue #200 · Rayhane-mamah/Tacotron-2 · GitHub](https://github.com/Rayhane-mamah/Tacotron-2/issues/200)
* [SpeedySpeech](https://arxiv.org/pdf/2008.03802.pdf)
* [Why learn ancient Greek? - YouTube](https://www.youtube.com/watch?v=0y6xa2O8VeE)
* [What Classical Attic ACTUALLY sounded like 🤯 Vulgar Attic pronunciation (English & Latin subtitles) - YouTube](https://www.youtube.com/watch?v=TBIZ2WRfAgY)
* [Introducing Voicebox: The Most Versatile AI for Speech Generation | Meta](https://about.fb.com/news/2023/06/introducing-voicebox-ai-for-speech-generation/)

### Podium Arts

# Podium Arts

* [ancientgreek.eu/](https://ancientgreek.eu/)
* [video](https://www.youtube.com/@Podium-arts)

# YouTube

* 1. [Apology of Socrates, by Xenophon](https://www.youtube.com/watch?v=YGITyNb4CUo)
* 2. [Aristotelian Physiognomics (reconstr. Ancient Attic Greek pronunciation)](https://www.youtube.com/watch?v=R92kiYZVXY0)
* 3. ["A Greek Boy at Home" (Rouse) part 2 + appendix; reconstructed Ancient Attic Greek pronunciation.](https://www.youtube.com/watch?v=fFL8Vk1tVHE)
* 4. [Genesis chapter 01 recited in reconstructed Ancient Attic Greek pronunciation, by Ioannis Stratakis](https://www.youtube.com/watch?v=-pQZ7XXRv4w)
* 5. [Athenian Constitution (Xenophon) narrated in reconstructed Ancient Attic Greek, by Ioannis Stratakis](https://www.youtube.com/watch?v=izwQ30Q5bYg)
* 6. [Categories by Aristotle (reconstructed Ancient Attic Greek pronunciation) by Ioannis Stratakis](https://www.youtube.com/watch?v=q8qElrxe7KU&t=6s)
* 7. [Lucius or The Ass (Lucian) narrated in reconstructed Ancient Attic Greek by Ioannis Stratakis](https://www.youtube.com/watch?v=ksAoPtfkZjA)
* 8. [Aristaenetus , love letter 1.1 read in reconstructed Ancient Attic Greek](https://www.youtube.com/watch?v=VCKMEWp7LlQ)
* 9. [on Sleep & Waking by Aristotle. (reconstructed Ancient Attic Greek pronunciation)](https://www.youtube.com/watch?v=53cqETn4gCU)
* 10. [on Sense & the Sensible, by Aristotle, (reconstructed Ancient Attic Greek pronunciation)](https://www.youtube.com/watch?v=h7rIePi3R64)
* 11. ["A Greek Boy at Home" (Rouse) part 1. II-XVII reconstructed Ancient Attic Greek pronunciation.](https://www.youtube.com/watch?v=Bv9vFpGw3gg)
* 12. [Iliad, rhapsody 20, by Homer recited in reconstructed Ancient Greek, by Ioannis Stratakis](https://www.youtube.com/watch?v=vGRA1nGQUFg)
* 13. [Iliad, rhapsody 07, by Homer recited in reconstructed Ancient Greek, by Ioannis Stratakis](https://www.youtube.com/watch?v=4UEg3qIqhk4)
* 14. [Gospel of John, part of chapter 17 (narrated in reconstructed Ancient Attic Greek pronunciation)](https://www.youtube.com/watch?v=URNXt72VoKY)
* 15. ["A First Greek Reader" (Beresford & Douglas) reconstructed Ancient Greek pronunciation](https://www.youtube.com/watch?v=Cr0_lKX7UTM)
* 16. ["Cleitophon" by Plato, (reconstructed Ancient Greek pronunciation)](https://www.youtube.com/watch?v=mUNhBolXP3w)
* 17. [῾Critias῾ by Plato, narrated in reconstructed Ancient Greek pronunciation](https://www.youtube.com/watch?v=wN5ltc7pK-U)
* 18. [Iliad, rhapsody 12, by Homer recited in reconstructed Ancient Greek, by Ioannis Stratakis](https://www.youtube.com/watch?v=v5cBn2X5NXE)
* 19. [the Fables of Aesop, part-02 (ed. C.Halm)](https://www.youtube.com/watch?v=-Cwfs-TSvGk)
* 20. [Iliad, rhapsody 03, by Homer recited in reconstructed Ancient Greek, by Ioannis Stratakis](https://www.youtube.com/watch?v=0KuSv38NDDo)
* 21. [Iliad 19, by Homer (reconstructed Ancient Greek pronunciation)](https://www.youtube.com/watch?v=N8lrHTMf_Do&t=63s)
* 22. [Euthyphro, by Plato (reconstructed Ancient Greek pronunciation)](https://www.youtube.com/watch?v=tHIGHELlnns)
* 23. ["Characters" by Theophrastus, read in reconstructed Ancient Greek](https://www.youtube.com/watch?v=SpM8Da7x2lk)
* 24. [the Book of Revelation (St. John the Divine) in reconstructed Koine Ancient Greek](https://www.youtube.com/watch?v=8vhDMvUHjRg)
* 25. [Daphnis & Chloë (by Longus) - Δάφνις ϗ Χλόη (Λόγγος)](https://www.youtube.com/watch?v=jCUPC0vuiqs&t=36s)
* 26. [On Memory & Recollection, by Aristotle (reconstructed Ancient Greek pronunciation)](https://www.youtube.com/watch?v=AHP3uV-8vk8)
* 27. [Apology of Socrates, by Plato (reconstructed Ancient Greek pronunciation)](https://www.youtube.com/watch?v=k3tlBO3agFU&t=185s)
* 28. [Aesop's fables (3, 4, 11, 23, 101 ed.Halm)](https://www.youtube.com/watch?v=8MejrGFg6g0&t=80s)
* 29. ["Politics" (book 1, ch.12) by Aristotle (audiobook sample)](https://www.youtube.com/watch?v=g1mOT1RH8o8&t=27s)
* 30. [Letter to Nicocles (audiobook) a.k.a. "the Royal Art"](https://www.youtube.com/watch?v=sYxZ3gGOz64)
* 31. ["Meditations" book 01 (Marcus Aurelius) in reconstructed Ancient Attic Greek by Ioannis Stratakis](https://www.youtube.com/watch?v=p2DsUgSs72k)
* 32. [Pindar "Olympian Odes"](https://www.youtube.com/watch?v=gEp7AVotbCE)
* 33. [On the Heavens 1.09 (Aristotle) spoken reconstructed Ancient Greek pronunciation](https://www.youtube.com/watch?v=RNlzQ6Trr3Q)
* 34. [Batrachomyomachia by "Homer" (spoken reconstructed Ancient Greek pronunciation)](https://www.youtube.com/watch?v=NXFVCDQE7uc)
* 35. [the "Art of Grammar" by Dionysius Thrax (spoken reconstructed Ancient Greek)](https://www.youtube.com/watch?v=k9dxBH3RgaQ)
* 36. [Aristotle "On Harmony" (On Music), Problemata XIX, in spoken reconstructed Ancient Greek](https://www.youtube.com/watch?v=tudLtIpLvuQ)
* 37. [Pindar Olympian Ode .01 (spoken reconstructed Ancient Greek)](https://www.youtube.com/watch?v=mrfVRb7yW8M)
* 38. [Aristotle: "On the Voice" (Problemata XI), spoken in reconstructed Ancient Greek](https://www.youtube.com/watch?v=1ithB9SdQcM)
* 39. [Isocrates' "Letter to Demonicus" (audiobook spoken in reconstructed Ancient Greek)](https://www.youtube.com/watch?v=NuKjxVjnzN4)
* 40. ["On the Refusal of a Pension" oration by Lysias (audiobook spoken in reconstructed Ancient Greek)](https://www.youtube.com/watch?v=GffSvdLsUgk)
* 41. ["An EphesianTale" by Xenophon of Ephesus (audiobook spoken in reconstructed Ancient Greek)](https://www.youtube.com/watch?v=g7FIlh-eY2Q)
* 42. [Homer, Odyssey rhapsody 01 (audiobook spoken in reconstructed Ancient Greek)](https://www.youtube.com/watch?v=UdyXlUmD3v4)
* 43. [Aristotle's "On Interpretation" (audiobook spoken in reconstructed Ancient Greek)](https://www.youtube.com/watch?v=mcxQFC-4vWo)
* 44. [Plato: "Ion" (audiobook spoken in reconstructed Ancient Greek)](https://www.youtube.com/watch?v=TTmCJDXktRY)
* 45. [Aristotle: On the Soul, book 3, ch 8 (audiobook spoken in reconstructed Ancient Greek)](https://www.youtube.com/watch?v=tfr43gwAZOM)
* 46. [the Tablet of Cebes (audiobook in reconstructed Ancient-Greek)](https://www.youtube.com/watch?v=eo5zzuZ_eLE)
* 47. ["Poetics" by Aristotle (audiobook spoken reconstructed ancient Greek)](https://www.youtube.com/watch?v=Am71Njxz0eI)
* 48. [Xenophon, Anabasis 1.1 (spoken reconstructed ancient Greek)](https://www.youtube.com/watch?v=vEcQxQRVa-A)
* 49. [Xenophon "Spartan Constitution" (audiobook spoken in reconstructed ancient Greek)](https://www.youtube.com/watch?v=IbAnHCDUDiw)
* 50. [Sappho to Aphrodite, fragm-1, sung in reconstructed ancient Greek](https://www.youtube.com/watch?v=XTHE-P4oZ9w)
* 51. [Ψήγματα Ἀρχαίου Ἑλληνικοῦ Ἤχου (παρουσίασις/presentation 8/11/2015)](https://www.youtube.com/watch?v=RDt_XEy3SHM)
* 52. [Sophocles, Oedipus at Colonus 1-13 (spoken reconstructed ancient Greek)](https://www.youtube.com/watch?v=ZYRKzOl_hV8)
* 53. [Euripides, Helen 1-67 (spoken reconstructed ancient Greek)](https://www.youtube.com/watch?v=LkxmGuE4ae8)
* 54. [Iliad A , 16 Feb 2015 (excerpts)](https://www.youtube.com/watch?v=o8aOL_w5vno)
* 55. [Homer, iliad-A trailer (for the 16-02-2015 performance, Athens GR)](https://www.youtube.com/watch?v=8-T04m14HR0)
* 56. [Homer, Odyssey a1-27 (spoken in reconstructed ancient Greek pronunciation)](https://www.youtube.com/watch?v=MOvVWiDsPWQ)
* 57. [Empedocles of Agrigento, "On Nature" (fragm. 4) spoken reconstructed Ancient Greek](https://www.youtube.com/watch?v=PxdmjxNH7Pw)
* 58. [Sappho, "the Brothers Poem" (spoken reconstructed Ancient Greek)](https://www.youtube.com/watch?v=GdMnNSuAW1g)
* 59. [Herodotus, Histories 1.1-4 (spoken reconstructed ancient Greek)](https://www.youtube.com/watch?v=Fkuq1MWfaWc)
* 60. ["Fox & Snake" (Aesop's fable 033, spoken reconstructed ancient Greek))](https://www.youtube.com/watch?v=AiYO1nUEyyA)
* 61. ["Fox with swollen stomach" (Aesop's fable 030, in spoken ancient Greek))](https://www.youtube.com/watch?v=XriVDG-Z1q4)
* 62. ["Virtues & Vices" of Aristotle (spoken reconstructed ancient Greek)](https://www.youtube.com/watch?v=Q_jnHuiB_5M)
* 63. [longest word in the world (spoken reconstructed ancient Greek pronunciation)](https://www.youtube.com/watch?v=HZvg4Zy5rLs)
* 64. [Hippocratic Oath (reconstructed ancient Greek pronunciation)](https://www.youtube.com/watch?v=Q5FHZx0oOqs)
* 65. [Aesop's Fable 19 (spoken in reconstructed ancient Greek)](https://www.youtube.com/watch?v=VpMGZmtsfHI)
* 66. [iliad 1. intro](https://www.youtube.com/watch?v=4ltPZxh_4ZQ)
* 67. [Iliad of Homer production](https://www.youtube.com/watch?v=4iA1Ej84jCw)
* 68. [Callimachus 2 in reconstructed ancient Greek pronunciation](https://www.youtube.com/watch?v=UXmpHKTuGGM)
* 69. [Theogony 1-21 spoken in reconstructed Ancient Greek](https://www.youtube.com/watch?v=WjgnVvI1H7g)

## Audiobooks in spoken Ancient Greek Language

* [HIPPOCRATES the Medical Oath](https://ancientgreek.eu/free/oath.html) 4 / 0
* [BERESFORD & DOUGLAS A First Greek Reader](https://ancientgreek.eu/edu/first-greek-reader.html) 106 / -
* [OLD TESTAMENT Genesis 01](https://ancientgreek.eu/audiobooks/genesis-01.html) 8 / -
* 5.4 [W.H.D. ROUSE A Greek boy at Home -01](https://ancientgreek.eu/edu/greek-boy-1.html) 135 / 25
* 4.26 [W.H.D. ROUSE A Greek boy at Home -02](https://ancientgreek.eu/edu/greek-boy-2.html) 213 / 50
* → 466 / 77
* 2.8 [DIONYSIUS THRAX the Art of Grammar](https://ancientgreek.eu/audiobooks/grammar-dt.html) 42 / 15
* 2.63 [ARISTOTLE On Sense and the Sensible](https://ancientgreek.eu/audiobooks/sense-aristotle.html) 79 / 30
* 2.6 [ARISTOTLE Physiognomics](https://ancientgreek.eu/audiobooks/physiognomics-aristotle.html) 65 / 25
* 2.6 [XENOPHON Spartan Constitution](https://ancientgreek.eu/audiobooks/spartan-c.html) 52 / 20
* 2.52 [ARISTOTLE Poetics](https://ancientgreek.eu/audiobooks/poetics.html) 106 / 42
* 2.52 [THEOPHRASTUS Characters](https://ancientgreek.eu/audiobooks/characters-theophrastus.html) 83 / 33
* → 893 / 242
* 2.5 [AESOP Fables 084-173b](https://ancientgreek.eu/audiobooks/aesop-02.html) 127 / 51
* → 1020 / 293 (17h)
* 2.5 [ARISTOTLE On the Voice](https://ancientgreek.eu/audiobooks/voice.html) 50 / 20
* 2.5 [ISOCRATES Letter to Nicocles](https://ancientgreek.eu/audiobooks/isocrates-nicocles.html) 50 / 20
* 2.44 [ARISTOTLE On Interpretation](https://ancientgreek.eu/audiobooks/interpretation.html) 61 / 25
* 2.28 [CEBES the Tablet of Cebes](https://ancientgreek.eu/audiobooks/cebes.html) 57 / 25
* 2.24 [XENOPHON OF EPHESUS An Ephesian Tale](https://ancientgreek.eu/audiobooks/ephesiantale.html) 179 / 80
* 2.24 [PLATO Ion](https://ancientgreek.eu/audiobooks/ion.html) 38 / 17
* 2.2 [AESOP Fables 001-083](https://ancientgreek.eu/audiobooks/aesop-01.html) 113 / 51
* 2.2 [PLATO Apology of Socrates](https://ancientgreek.eu/audiobooks/apology-p.html) 101 / 46
* 2.16 [PLATO Critias](https://ancientgreek.eu/audiobooks/plato-critias.html) 52 / 24
* 2.1 [ARISTOTLE On Sleep and Waking](https://ancientgreek.eu/audiobooks/sleep-aristotle.html) 31 / 15
* 2.04 [ARISTOTLE On the Soul](https://ancientgreek.eu/audiobooks/soul.html) 204 / 100
* 2 [ARISTOTLE Categories](https://ancientgreek.eu/audiobooks/categories-aristotle.html) 100 / 50
* 2 [ARISTOTLE Politics, book 1](https://ancientgreek.eu/audiobooks/politics-aristotle-1.html) 60 / 30
* 1.89 [XENOPHON Athenian Constitution](https://ancientgreek.eu/audiobooks/athenian-constitution-xenophon.html) 34 / 18
* 1.85 [LONGUS Daphnis & Chloë](https://ancientgreek.eu/audiobooks/daphnis-chloe.html) 223 / 120
* 1.85 [ARISTOTLE On Harmony /Music](https://ancientgreek.eu/audiobooks/harmony.html) 37 / 20
* 1.7 [PLATO Cleitophon](https://ancientgreek.eu/audiobooks/plato-cleitophon.html) 17 / 10
* 1.7 [PLATO Euthyphro](https://ancientgreek.eu/audiobooks/euthyphro-plato.html) 51 / 30
* 1.65 [ISOCRATES Letter to Demonicus](https://ancientgreek.eu/audiobooks/demonicus.html) 33 / 20
* 1.58 [ARISTOTLE Virtues & Vices](https://ancientgreek.eu/audiobooks/vv.html) 19 / 12
* 1.5 [AESOP Fables 001-012](https://ancientgreek.eu/audiobooks/aesop-1.html) 18 / 12
* 1.5 [AESOP Fables 013-024](https://ancientgreek.eu/audiobooks/aesop-2.html) 18 / 12
* 1.25 [AESOP Fables 025-036](https://ancientgreek.eu/audiobooks/aesop-3.html) 15 / 12
* 1.49 [LUCIAN Lucius or The Ass](https://ancientgreek.eu/audiobooks/lucius-lucian.html) 107 / 72
* 1.33 [LYSIAS Refusal of a Pension](https://ancientgreek.eu/audiobooks/lysias-pension.html) 16 / 12
* 1.3 [MARCUS AURELIUS Meditations 01](https://ancientgreek.eu/audiobooks/marcus-aurelius-meditations-01.html) 20 / 15
* 1.25 [ARISTOTLE On Memory & Recollection](https://ancientgreek.eu/audiobooks/memory-aristotle.html) 25 / 20
* 0.94 [PARMENIDES On Being](https://ancientgreek.eu/audiobooks/parmenides.html) 17 / 18
* 0.7 [XENOPHON Apology of Socrates](https://ancientgreek.eu/audiobooks/apology-x.html) 21 / 30
* Maybe not
* [HOMER Batrachomyomachia](https://ancientgreek.eu/audiobooks/batracho.html)
* [HOMER Odyssey 01](https://ancientgreek.eu/audiobooks/odyssey-01.html)
* [HOMER Iliad 20](https://ancientgreek.eu/audiobooks/iliad-20-homer.html)
* [HOMER Iliad 07](https://ancientgreek.eu/audiobooks/iliad-07-homer.html)
* [HOMER Iliad 12](https://ancientgreek.eu/audiobooks/iliad-12-homer.html)
* [HOMER Iliad 03](https://ancientgreek.eu/audiobooks/iliad-03-homer.html)
* [HOMER Iliad 19](https://ancientgreek.eu/audiobooks/iliad-19-homer.html)
* [JOHN THE EVANGELIST The Gospel of John](https://ancientgreek.eu/audiobooks/gospel-john.html)
* [JOHN OF PATMOS NT Book of Revelation](https://ancientgreek.eu/audiobooks/revelation-john.html)
* [PINDAR Olympian Odes](https://ancientgreek.eu/audiobooks/pindar-o.html)

     ([ARISTOTLE *Nicomachean Ethics 01](https://ancientgreek.eu/#))*

## Latinitium

# Latinitium

* [latinitium.com/category/2000-years-of-latin-prose/](https://latinitium.com/category/2000-years-of-latin-prose/)
* [video](https://www.youtube.com/@Latinitium)
* [soundcloud.com/user-327529648](https://soundcloud.com/user-327529648)
* [store.latinitium.com/products/evangelium-lucae-audiobook](https://store.latinitium.com/products/evangelium-lucae-audiobook) (224 / 16)
* [store.latinitium.com/collections/pugio-bruti-a-crime-story-in-easy-latin,](https://store.latinitium.com/collections/pugio-bruti-a-crime-story-in-easy-latin,) [dokumen.pub/pugio-bruti.html](https://dokumen.pub/pugio-bruti.html) (102 / 16)
* [store.latinitium.com/collections/ad-alpes-a-tale-of-roman-life](https://store.latinitium.com/collections/ad-alpes-a-tale-of-roman-life) (440 / 39)
* [store.latinitium.com/collections/familia-romana-audiobook](https://store.latinitium.com/collections/familia-romana-audiobook) (495 / 39)
* [store.latinitium.com/products/ritchie-s-fabulae-faciles-audiobook](https://store.latinitium.com/products/ritchie-s-fabulae-faciles-audiobook) (152 / 16)
* → 1413 / 126 (23.5h)

# [latinitium.com/latin-audio-archive](https://latinitium.com/latin-audio-archive)

* [The Story Of Androclus And The Lion](https://latinitium.com/latin-audio-archive#The_Story_Of_Androclus_And_The_Lion)
* [The Story Of Perseus Part 2 – Latin Texts](https://latinitium.com/latin-audio-archive#The_Story_Of_Perseus_Part_2_Latin_Texts)
* [The Story Of Perseus Part I](https://latinitium.com/latin-audio-archive#The_Story_Of_Perseus_Part_I)
* [City Life, Country Life (Pliny)](https://latinitium.com/latin-audio-archive#City_Life_Country_Life_Pliny)
* [Cicero’s Story About Fraud](https://latinitium.com/latin-audio-archive#Ciceros_Story_About_Fraud)
* [Erasmus’ Perilous Winter Journey](https://latinitium.com/latin-audio-archive#Erasmus_Perilous_Winter_Journey)
* [Cicero on the Magical Ring of Gyges](https://latinitium.com/latin-audio-archive#Cicero_on_the_Magical_Ring_of_Gyges)
* [Sallust on Glory and Virtue](https://latinitium.com/latin-audio-archive#Sallust_on_Glory_and_Virtue)
* [Aurelius Victor on Romulus, the First King of Rome](https://latinitium.com/latin-audio-archive#Aurelius_Victor_on_Romulus_the_First_King_of_Rome)
* [Cincinnatus](https://latinitium.com/latin-audio-archive#Cincinnatus)
* [Demosthenes and The Donkey’s Shadow](https://latinitium.com/latin-audio-archive#Demosthenes_and_The_Donkeys_Shadow)
* [The Story of the Shrewd Elephant](https://latinitium.com/latin-audio-archive#The_Story_of_the_Shrewd_Elephant)
* [Suetonius on Julius Caesar](https://latinitium.com/latin-audio-archive#Suetonius_on_Julius_Caesar)
* [The Story About The Wood-cutter And The Golden Axe](https://latinitium.com/latin-audio-archive#The_Story_About_The_Wood-cutter_And_The_Golden_Axe)
* [Aurelius Commodus](https://latinitium.com/latin-audio-archive#Aurelius_Commodus)
* [The Crime and Fate of Daedalus](https://latinitium.com/latin-audio-archive#The_Crime_and_Fate_of_Daedalus)
* [Two Letters from Cicero](https://latinitium.com/latin-audio-archive#Two_Letters_from_Cicero)
* [Caesar and the Pirates](https://latinitium.com/latin-audio-archive#Caesar_and_the_Pirates)
* [Never Lose Hope in Your Studies](https://latinitium.com/latin-audio-archive#Never_Lose_Hope_in_Your_Studies)
* [Ancient Roman Furniture](https://latinitium.com/latin-audio-archive#Ancient_Roman_Furniture)
* [Sallust on the Death of Catiline](https://latinitium.com/latin-audio-archive#Sallust_on_the_Death_of_Catiline)
* [The Story of Aeneas](https://latinitium.com/latin-audio-archive#The_Story_of_Aeneas)
* [Cicero’s Quest for the Tomb of Archimedes](https://latinitium.com/latin-audio-archive#Ciceros_Quest_for_the_Tomb_of_Archimedes)
* [Roman Houses](https://latinitium.com/latin-audio-archive#Roman_Houses)
* [Gladiatorial Fights in Ancient Rome](https://latinitium.com/latin-audio-archive#Gladiatorial_Fights_in_Ancient_Rome)
* [Cicero on True and Perfect Friendship](https://latinitium.com/latin-audio-archive#Cicero_on_True_and_Perfect_Friendship)
* [The Story of the Avenging Pigs](https://latinitium.com/latin-audio-archive#The_Story_of_the_Avenging_Pigs)
* [Tommaso Vallauri on Q. Curtius Rufus](https://latinitium.com/latin-audio-archive#Tommaso_Vallauri_on_Q_Curtius_Rufus)
* [What Price did Philoxenus Pay for his Outspokenness?](https://latinitium.com/latin-audio-archive#What_Price_did_Philoxenus_Pay_for_his_Outspokenness)
* [The Life of Cicero, Part 2](https://latinitium.com/latin-audio-archive#The_Life_of_Cicero_Part_2)
* [The Life of Cicero, Part I](https://latinitium.com/latin-audio-archive#The_Life_of_Cicero_Part_I)
* [The Life and Death of Brutus](https://latinitium.com/latin-audio-archive#The_Life_and_Death_of_Brutus)
* [Cicero on the Circus Games](https://latinitium.com/latin-audio-archive#Cicero_on_the_Circus_Games)
* [The Story of Theseus, Part II](https://latinitium.com/latin-audio-archive#The_Story_of_Theseus_Part_II)
* [The Story of Theseus, Part I](https://latinitium.com/latin-audio-archive#The_Story_of_Theseus_Part_I)
* [The Christmas Story X2 (Vulgate And Sebastien Châteillon)](https://latinitium.com/latin-audio-archive#The_Christmas_Story_X2_Vulgate_And_Sebastien_Chateillon)
* [Catiline Addresses the Conspirators](https://latinitium.com/latin-audio-archive#Catiline_Addresses_the_Conspirators)
* [The Audacious Architect of Alexandria (Vitruvius)](https://latinitium.com/latin-audio-archive#The_Audacious_Architect_of_Alexandria_Vitruvius)
* [The Story of Mantacius the fraudster](https://latinitium.com/latin-audio-archive#The_Story_of_Mantacius_the_fraudster)
* [Why Pliny wants to be like Spurinna](https://latinitium.com/latin-audio-archive#Why_Pliny_wants_to_be_like_Spurinna)
* [What did Cicero Feel Going into Exile?](https://latinitium.com/latin-audio-archive#What_did_Cicero_Feel_Going_into_Exile)

### Latinum

# Latinum

* [patreon.com/posts/download-8843692](https://www.patreon.com/posts/download-8843692)

## # interlineator

* toolkit to create interlinear and juxtalinear annotations - especially for grammatical and phonetic glosses
* toolkit for generating linguistic annotations (interlinear, juxtalinear, hover, etc.)
* option to only gloss words under a certain frequency, or not contained in a certain list

## # henry-higgins

* A) Constrastive audio visualization (user vs target), normalizing for speed and pitch, also aligning to transcription and to each other
* B) Convolutional (+ attention?) binary classifier native vs non-native, good for visualization, esp. in frequency domain, but also in time domain
* → look at how to visualize activations and attention alignments

## Resources

* [Exploring Phoneme-Level Speech Representations for End-to-End Speech Translation](https://esalesky.github.io/assets/pdf/acl19_exploring.pdf)
* Allosaurus → enhance and fine-tune, use in articulatory feedback??
* [Phoneme-to-Audio Alignment with Recurrent Neural Networks for Speaking and Singing Voice](https://hal.science/hal-03552964/file/1676anav.pdf)

## Considerations

* make as a plugin to Praat? or similar, but with a more polished interface?
* [apps.kde.org/artikulate/](https://apps.kde.org/artikulate/)
* make GAN-/RL-based accent trainer.
* Train to distinguish user's attempt from gold sample. The user retries.
* Should be invariant to pitch and timbre
* other PolyglotToolkit Projects:

    translation-trainer: use tatoeba or supplied parallel text (optimally with multiple translations), compute metrics, show diff, display dashboard, etc.

    language utility (pre-processor) packages, esp for Arabic, Ancient Greek, Chinese

    * Alignment Tool(s)

        make GUI tool (or nvim plugin) for manual sentence/word alignment

    * CLI for viewing parallel texts in the terminal

    Vocalizer: add diacritics to language (seq2seq package) - for arabic, hebrew, ancient greek, latin (with macros → [Alatius/latin-macronizer),](https://github.com/Alatius/latin-macronizer),) [ictibus.blogspot.com/,](http://ictibus.blogspot.com/,) [ilovegooglebooks.blogspot.com/search/label/macrons,](http://ilovegooglebooks.blogspot.com/search/label/macrons,) russian → [russiangram.com/,](https://russiangram.com/,) easy test case for training data, ukrainian

    Latin error detector: fix wrong endings → right architecture for finding single location (here error) in a sequence

    Maybe start with Ancient Greek diacritics: easy data, learnable objective

    use PoS tagging, Wiktionary word info (via Wiktionary tool) → later dependency parsing?

## Expression Translation Tables (→ Multi-Word Expression Project, Proverbs Project)

* [en.wiktionary.org/wiki/Category:Multiword_terms_by_language](https://en.wiktionary.org/wiki/Category:Multiword_terms_by_language)