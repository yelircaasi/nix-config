# Sorted

## Shell.nix

```nix
let
  pkgs = import <nixpkgs> {};
in
  pkgs.mkShell {
    packages = with pkgs; [
      (python3.withPackages (
	ps: with ps; [
	  numpy
	  odfpy
	  pandas
	]
      ))
      jupyter
    ];
  }
```

```nix
neovim.package = neovim-nightly.override {
configure = {
packages.myPlugins = with pkgs.vimPlugins; {
start = [
vim-go # already packaged plugin
easygrep # custom package
];
opt = [];
};};
``` 

## 
? [Archive · Thorsten Hans' blog](ghttps://www.thorsten-hans.com/archive/)
? [Chris McDonough - YouTube](ghttps://www.youtube.com/@ChrisMcDonough)
? [Chris McDonough - YouTube](ghttps://www.youtube.com/@ChrisMcDonough/playlists)
? [Code search results](ghttps://github.com/search?q%3Dpkgs.lynx%2Blanguage%253Anix%26type%3Dcode)
? [Open-Source Application Development :: add0n.com](ghttps://add0n.com/index.html)
? [Openwords (Openwords)](https://github.com/Openwords)
? [Remote Mob Programming | How we do Remote Mob Programming.](https://www.remotemobprogramming.org/)
? [This is how I roll](ghttps://linuxmatters.sh/19/)
? [alphacoders](https://wall.alphacoders.com/)
? [catonmat.net](ghttps://catonmat.net/)
? [error after wsl update: getpwnam(username) failed 0 · Issue #9340 · microsoft/WSL](https://github.com/microsoft/WSL/issues/9340)
? [gauntlet - isaac.r.riley@gmail.com - Gmail](ghttps://mail.google.com/mail/u/0/%23inbox/KtbxLxGkPcDcKKtSrBrqctBhSvWJqfhMKg)
? [https://1337x.to/](https://1337x.to/)
? [https://adnauseam.io/](https://adnauseam.io/) 
? [https://discord.com/channels/834325286664929280/902554373094252554/1198694610436882590](https://discord.com/channels/834325286664929280/902554373094252554/1198694610436882590) **Haskell tools & sources:**Sources:*Haskell for imperative programmers* 
? [https://paletton.com/](https://paletton.com/)
? [https://puter.com/app/terminal](https://puter.com/app/terminal)
? [https://revanced.app/](https://revanced.app/) 
? [https://revanced.app/](https://revanced.app/) 
? [https://studio.ribbonfarm.com/](https://studio.ribbonfarm.com/)
? [https://uncut.wtf/](ghttps://uncut.wtf/)
? [https://uninsane.org/](https://uninsane.org/)
? [https://www.reddit.com/r/golang/s/fVY4hoTMYY](https://www.reddit.com/r/golang/s/fVY4hoTMYY)
? [https://www.reddit.com/r/linux/s/QB2fxnMkOy](https://www.reddit.com/r/linux/s/QB2fxnMkOy)
? [https://www.reddit.com/r/linuxmasterrace/s/GX6bM8wS97](ghttps://www.reddit.com/r/linuxmasterrace/s/GX6bM8wS97)
? [https://www.reddit.com/r/pcmasterrace/comments/1bh6t1p/what_would_you_change/](ghttps://www.reddit.com/r/pcmasterrace/comments/1bh6t1p/what_would_you_change/)
? [https://www.youtube.com/watch?v=V7vVq0fjAYs&lc=UgyPyqovYoxl7hS5lGt4AaABAg.A-NJPQ9TA8nA-NekO_Mkx2](https://www.youtube.com/watch?v%3DV7vVq0fjAYs%26lc%3DUgyPyqovYoxl7hS5lGt4AaABAg.A-NJPQ9TA8nA-NekO_Mkx2)
? [https://yacy.de/](https://yacy.de/)
? [library.lol/main/7551914D5F4308F59AFF8A5D0A0EFDDD](http://library.lol/main/7551914D5F4308F59AFF8A5D0A0EFDDD)
? [strato.de](ghttp://strato.de) V-Server Linux
? [yt](https://m.youtube.com/watch?v%3DjwRqiCv6Z9k)**
ai  [https://www.jaided.ai/easyocr/documentation/](https://www.jaided.ai/easyocr/documentation/)
ai : knowledge assimilation - how to quantify and formulate the concept of surprise?
ai AL and Ethics
ai Computer Vision. Algorithms and Applications.pdf
ai [* 2309.04979.pdf](https://arxiv.org/pdf/2309.04979.pdf)
ai [2307.12798.pdf](https://arxiv.org/pdf/2307.12798.pdf)
ai [2308.00479.pdf](https://arxiv.org/pdf/2308.00479.pdf)
ai [2308.05822.pdf](https://arxiv.org/pdf/2308.05822.pdf)
ai [2308.10633.pdf](https://arxiv.org/pdf/2308.10633.pdf)
ai [2309.15217.pdf](https://arxiv.org/pdf/2309.15217.pdf)
ai [2310.01427.pdf](https://arxiv.org/pdf/2310.01427.pdf)
ai [2310.01558.pdf](https://arxiv.org/pdf/2310.01558.pdf)
ai [978-0-7503-6116-3.pdf](https://iopscience.iop.org/book/mono/978-0-7503-6116-3.pdf)
ai [ALEPH ALPHA - AI for Enterprises and Governments](https://aleph-alpha.com/)
ai [Advanced RAG 04: Re-ranking | by Florian June | in Towards AI - Freedium](https://freedium.cfd/https://pub.towardsai.net/advanced-rag-04-re-ranking-85f6ae8170b1)
ai [Autoblow.com Blowjob Paper](https://autoblow.com/bjpaper/)
ai [Beyond ChatGPT: Exploring the OpenAI Platform - The New Stack](https://thenewstack.io/beyond-chatgpt-exploring-the-openai-platform/)
ai [CML · Continuous Machine Learning](https://cml.dev/)
ai [Cognition - YouTube](ghttps://www.youtube.com/@Cognition-Labs)
ai [Cognition](ghttps://www.cognition-labs.com/)
ai [Differentiable Retrieval Augmentation via Generative Language Modeling for E-commerce Query Intent Classification](https://arxiv.org/pdf/2308.09308.pdf)
ai [Directory of LLMs - Hojas de cálculo de Google](https://docs.google.com/spreadsheets/d/1gc6yse74XCwBx028HV_cvdxwXkmXejVjkO-Mz2uwE0k/edit%23gid%3D0)
ai [DistilBERT](https://huggingface.co/docs/transformers/model_doc/distilbert)
ai [Erster Eindruck und Meinung: DEVIN, der KI-Softwareentwickler - YouTube](ghttps://www.youtube.com/watch?v%3DrsWWubkrvE4)
ai [Exploring the Ethical Implications of OpenAI – 3Cloud](https://3cloudsolutions.com/resources/exploring-ethical-implications-open-ai/)
ai [Fine-Tuning DistilBert for Multi-Class Text Classification using transformers and TensorFlow sunnyville | Artificial Intelligence Agency | Dubai](https://www.sunnyville.ai/fine-tuning-distilbert-multi-class-text-classification-using-transformers-and-tensorflow/)
ai [Fine-tuning a masked language model - Hugging Face NLP Course](https://huggingface.co/learn/nlp-course/chapter7/3)
ai [First Steps - ai2-tango v1.3.2](https://ai2-tango.readthedocs.io/en/latest/first_steps.html)
ai [Format selector for 2307.05915](https://arxiv.org/format/2307.05915)
ai [KerasNLP Models](https://keras.io/api/keras_nlp/models/)
ai [Künstliche neuronale Netze - Aufbau & Funktionsweise - TheBlog – Webflow HTML website template](http://web.archive.org/web/20230926012537/https://www.jaai.de/post/kuenstliche-neuronale-netze-aufbau-funktion)
ai [MLflow Projects — MLflow 2.10.2 documentation](https://mlflow.org/docs/latest/projects.html%23mlproject-file)
ai [MLflow Projects — MLflow 2.10.2 documentation](https://mlflow.org/docs/latest/projects.html)
ai [Machine Learning: Algorithmen, Methoden und Beispiele](https://datasolut.com/was-ist-machine-learning/)# Untitled
ai [MicrosoftLearning/mslearn-azure-ml](https://github.com/MicrosoftLearning/mslearn-azure-ml)
ai [Neural algorithmic reasoning](https://thegradient.pub/neural-algorithmic-reasoning/?utm_source%3Dsubstack%26utm_medium%3Demail)
ai [OLMo: Open Language Model. A State-Of-The-Art, Truly Open LLM and… | by AI2 | Feb, 2024 | AI2 Blog](https://blog.allenai.org/olmo-open-language-model-87ccfc95f580)
ai [OpenAI - OpenAI Tech Stack](https://stackshare.io/openai/openai)
ai [OpenAI's 'Unreasonable Claims' Exhaust AI-Ethics Researchers](https://www.businessinsider.com/openai-ethics-researchers-unreasonable-claims-2023-ai-100-10)
ai [Quantize 🤗 Transformers models](https://huggingface.co/docs/transformers/main/main_classes/quantization)
ai [Replace Github Copilot with a Local LLM - YouTube](ghttps://www.youtube.com/watch?v%3DF1bXfnrzAxM)
ai [Retrieval Augmented Generation (RAG) - Amazon SageMaker](https://docs.aws.amazon.com/sagemaker/latest/dg/jumpstart-foundation-models-customize-rag.html)
ai [Retrieval Augmented Generation (RAG): Reducing Hallucinations in GenAI Applications | Pinecone](https://www.pinecone.io/learn/retrieval-augmented-generation/)
ai [RoBERTa from scratch with different vocab vs. fine-tuning - Intermediate - Hugging Face Forums](https://discuss.huggingface.co/t/roberta-from-scratch-with-different-vocab-vs-fine-tuning/569/7)
ai [SIGIR 2022 Tutorial | Recent Advances in Retrieval-Augmented Text Generation](https://jcyk.github.io/RetGenTutorial/)
ai [SequentialChain with LangChain - Python Example (explained) Data Science Garage Data Science Garage • • 39 visualizaciones hace 6 horas Nuevo](https://www.youtube.com/watch?v%3DJ7n9e0eSoKg)
ai [Startpage Search Results](https://www.startpage.com/do/dsearch?q%3Dis%2Bsam%2Baltman%2Bevil%253F%26cat%3Dweb%26language%3Denglish)
ai [State of Art AI](https://stateofart.ai/)
ai [Summary of the tasks](https://huggingface.co/docs/transformers/v4.15.0/task_summary)
ai [Supermaven: The Fastest Copilot with a 300,000-Token Context Window! - YouTube](https://www.youtube.com/watch?v%3DJhmdYN1wbG0)
ai [Supermaven](https://supermaven.com/)
ai [Teilüberwachtes Lernen | Mailchimp](https://mailchimp.com/de/resources/semi-supervised-learning/)
ai [The Download: OpenAI update, 10 unexpected uses of Copilot, Zed goes open source, and more - YouTube](https://m.youtube.com/watch?v%3DLJrlWDJ-hjU)
ai [The Illustrated GPT-2: Visualizing Transformer Language Models (2019)](https://brianlovin.com/hn/38691583)
ai [The different types of the Neural Networks - YouTube](https://www.youtube.com/watch?v%3D0sp6qQ3zVuU)
ai [Three types of AI-assisted programmers - Stack Overflow](https://stackoverflow.blog/2023/12/11/three-types-of-ai-assisted-programmers/?cb%3D1)
ai [Token classification](https://huggingface.co/docs/transformers/tasks/token_classification%23inference)
ai [Training with GRIT for better LLMs and faster RAG - Contextual AI](https://contextual.ai/training-with-grit/)
ai [Was ist Machine Learning? | Definition, Arten, Beispiele | SAP](https://www.sap.com/austria/products/artificial-intelligence/what-is-machine-learning.html)
ai [What is MLflow? — MLflow 2.10.2 documentation](https://mlflow.org/docs/latest/introduction/index.html)
ai [What is retrieval-augmented generation? | IBM Research Blog](https://research.ibm.com/blog/retrieval-augmented-generation-RAG)
ai [[2005.11401] Retrieval-Augmented Generation for Knowledge-Intensive NLP Tasks](https://arxiv.org/abs/2005.11401)
ai [[2310.20144] EELBERT: Tiny Models through Dynamic Embeddings](https://arxiv.org/abs/2310.20144)
ai [[2311.05232] A Survey on Hallucination in Large Language Models: Principles, Taxonomy, Challenges, and Open Questions](https://arxiv.org/abs/2311.05232)
ai [[2403.02164] Cognition is All You Need -- The Next Layer of AI Above Large Language Models](ghttps://arxiv.org/abs/2403.02164)
ai [bert-base-multilingual-cased · Hugging Face](https://huggingface.co/bert-base-multilingual-cased)
ai [config.json · FacebookAI/xlm-mlm-ende-1024 at main](https://huggingface.co/FacebookAI/xlm-mlm-ende-1024/blob/main/config.json)
ai [config.json · TransQuest/microtransquest-en_de-wiki at main](https://huggingface.co/TransQuest/microtransquest-en_de-wiki/blob/main/config.json)
ai [config.json · distilbert/distilbert-base-multilingual-cased at main](https://huggingface.co/distilbert/distilbert-base-multilingual-cased/blob/main/config.json)
ai [config.json · lewtun/distilbert-base-uncased-finetuned-imdb-accelerate at main](https://huggingface.co/lewtun/distilbert-base-uncased-finetuned-imdb-accelerate/blob/main/config.json)
ai [dbmdz/bert-mini-historic-multilingual-cased · Hugging Face](https://huggingface.co/dbmdz/bert-mini-historic-multilingual-cased)
ai [domischwimmbeck/bert-base-german-cased-20000-ner-uncased · Hugging Face](https://huggingface.co/domischwimmbeck/bert-base-german-cased-20000-ner-uncased)
ai [https://aiconsole.ai/](https://aiconsole.ai/) 
ai [https://allenai.org/olmo](https://allenai.org/olmo)
ai [https://blog.research.google/2024/02/graph-neural-networks-in-tensorflow.html](https://blog.research.google/2024/02/graph-neural-networks-in-tensorflow.html)
ai [https://deci.ai/blog/decilm-15-times-faster-than-llama2-nas-generated-llm-with-variable-gqa/](https://deci.ai/blog/decilm-15-times-faster-than-llama2-nas-generated-llm-with-variable-gqa/)
ai [https://en.wikipedia.org/wiki/Diffusion_model](https://en.wikipedia.org/wiki/Diffusion_model)
ai [https://en.wikipedia.org/wiki/Stable_Diffusion](https://en.wikipedia.org/wiki/Stable_Diffusion)
ai [https://github.com/changzy00/pytorch-attention](https://github.com/changzy00/pytorch-attention)
ai [https://github.com/microsoft/ML-For-Beginners](https://github.com/microsoft/ML-For-Beginners)
ai [https://github.com/sooftware/attentions](https://github.com/sooftware/attentions)
ai [https://github.com/vercel/ai](https://github.com/vercel/ai)
ai [https://huggingface.co/transformers/v3.2.0/glossary.html#token-type-ids](https://huggingface.co/transformers/v3.2.0/glossary.html%23token-type-ids)
ai [https://newsletter.ruder.io/p/true-zero-shot-mt](https://newsletter.ruder.io/p/true-zero-shot-mt)
ai [https://spotintelligence.com/2023/01/31/self-attention/](https://spotintelligence.com/2023/01/31/self-attention/)
ai [https://stackoverflow.blog/2024/03/08/a-leading-ml-educator-on-what-you-need-to-know-about-llms/?cb=1](https://stackoverflow.blog/2024/03/08/a-leading-ml-educator-on-what-you-need-to-know-about-llms/?cb%3D1)
ai [https://thegradientpub.substack.com/p/do-text-embeddings-perfectly-encode](https://thegradientpub.substack.com/p/do-text-embeddings-perfectly-encode)
ai [https://venturebeat.com/ai/new-open-source-ai-coding-tool-surpasses-its-inspiration-google-deepminds-alphacode/](https://venturebeat.com/ai/new-open-source-ai-coding-tool-surpasses-its-inspiration-google-deepminds-alphacode/)
ai [https://www.analyticsvidhya.com/genaipinnacle](https://www.analyticsvidhya.com/genaipinnacle)
ai [https://www.forbes.com/sites/johnwerner/2024/01/24/ai-and-the-future-of-coding/](https://www.forbes.com/sites/johnwerner/2024/01/24/ai-and-the-future-of-coding/)
ai [https://www.heise.de/news/KI-Update-Deep-Dive-Programmieren-mit-KI-9647325.html](https://www.heise.de/news/KI-Update-Deep-Dive-Programmieren-mit-KI-9647325.html)
ai [https://www.marktechpost.com/2024/01/11/meet-neograd-a-deep-learning-framework-created-from-scratch-using-python-and-numpy-with-automatic-differentiation-capabilities/](https://www.marktechpost.com/2024/01/11/meet-neograd-a-deep-learning-framework-created-from-scratch-using-python-and-numpy-with-automatic-differentiation-capabilities/) 
ai [https://www.marktechpost.com/2024/03/16/researchers-at-stanford-university-introduce-pyvene-an-open-source-python-library-that-supports-intervention-based-research-on-machine-learning-models/](https://www.marktechpost.com/2024/03/16/researchers-at-stanford-university-introduce-pyvene-an-open-source-python-library-that-supports-intervention-based-research-on-machine-learning-models/)
ai [https://www.marktechpost.com/2024/03/19/microsoft-introduces-autodev-a-fully-automated-artificial-intelligence-driven-software-development-framework/](https://www.marktechpost.com/2024/03/19/microsoft-introduces-autodev-a-fully-automated-artificial-intelligence-driven-software-development-framework/)
ai [https://www.modular.com/blog/mojo-sdk-v0-7-now-available-for-download](https://www.modular.com/blog/mojo-sdk-v0-7-now-available-for-download)
ai [https://www.techrepublic.com/article/how-programming-will-change-over-the-next-10-years-5-predictions/](https://www.techrepublic.com/article/how-programming-will-change-over-the-next-10-years-5-predictions/)
ai [igorsterner/german-english-roberta-base-binary-ner · Hugging Face](https://huggingface.co/igorsterner/german-english-roberta-base-binary-ner)
ai [iryna-kondr/scikit-llm: Seamlessly integrate LLMs into scikit-learn.](https://github.com/iryna-kondr/scikit-llm)
ai [retrieval-augmented generation - Google Scholar](https://scholar.google.de/scholar?q%3Dretrieval-augmented%2Bgeneration%26hl%3Den%26as_sdt%3D0%26as_vis%3D1%26oi%3Dscholart)
ai [retrieval-augmented generation - Google Search](https://www.google.com/search?client%3Dfirefox-b-d%26q%3Dretrieval-augmented%2Bgeneration%23ip%3D1)
ai [shoarora/alectra-small-owt at main](https://huggingface.co/shoarora/alectra-small-owt/tree/main)
ai [transformers/examples/research_projects/distillation/README.md at main · huggingface/transformers](https://github.com/huggingface/transformers/blob/main/examples/research_projects/distillation/README.md)
ai [transformers/examples/research_projects/distillation/train.py at main · huggingface/transformers](https://github.com/huggingface/transformers/blob/main/examples/research_projects/distillation/train.py)
ai [wikimedia/wikipedia at main](https://huggingface.co/datasets/wikimedia/wikipedia/tree/main/20231101.ab)
ai [wikipedia · Datasets at Hugging Face](https://huggingface.co/datasets/wikipedia)
ai ethical analysis of openai
ai teilüberwachtes Lernen
ai: read deeply on AI alignment
ao [https://www.marktechpost.com/2024/02/08/this-ai-paper-introduces-piratenets-a-novel-ai-system-designed-to-facilitate-stable-and-efficient-training-of-deep-physics-informed-neural-network-models/](https://www.marktechpost.com/2024/02/08/this-ai-paper-introduces-piratenets-a-novel-ai-system-designed-to-facilitate-stable-and-efficient-training-of-deep-physics-informed-neural-network-models/)
clockodo  [Basics of the Clockodo REST API](https://www.clockodo.com/en/api/)
clockodo  [Control the stop clock with /api/v2/clock (REST-API)](https://www.clockodo.com/en/api/clock/) 
clockodo  [clockodo node](https://www.npmjs.com/package/clockodo)
clockodo  [clockodo.py](https://github.com/nyantec/clockodo.py)
clockodo [Manage entries with /api/v2/entries (REST-API)](https://www.clockodo.com/en/api/entries/)
clockodo [clock api](https://www.clockodo.com/en/api/clock/)
clockodo [clockodo - npm](https://www.npmjs.com/package/clockodo) 
clockodo [clockodo api](https://www.clockodo.com/en/api/entries/)
convention: trailing underscore for probability distribution dictionaries; no underscore for single values
distro [Enlightenment Main](https://www.enlightenment.org/)
distro [The thoughtful, capable, and ethical replacement for Windows and macOS ⋅ elementary OS](https://elementary.io/)
distro [https://wiki.alpinelinux.org/wiki/Wayland](https://wiki.alpinelinux.org/wiki/Wayland)
distro [https://www.wubuntu.org/](https://www.wubuntu.org/)
distro [https://www.zdnet.com/article/sparky-linux-is-a-blazing-fast-distro-that-can-keep-your-older-machines-running-for-years/](https://www.zdnet.com/article/sparky-linux-is-a-blazing-fast-distro-that-can-keep-your-older-machines-running-for-years/)
dual monitor [https://fedoramagazine.org/how-to-setup-multiple-monitors-in-sway/](https://fedoramagazine.org/how-to-setup-multiple-monitors-in-sway/)
dual monitor [https://github.com/nwg-piotr/nwg-displays](https://github.com/nwg-piotr/nwg-displays)
dual monitor [https://github.com/search?q=repo%3Aswaywm%2Fsway](https://github.com/search?q%3Drepo%253Aswaywm%252Fsway) monitor&type=code
dual monitor [https://wiki.hyprland.org/Configuring/Monitors/](https://wiki.hyprland.org/Configuring/Monitors/)
dual monitor [https://www.reddit.com/r/swaywm/comments/jqj1ww/sway_on_ultrawide_monitor_tips_or_recommended/](https://www.reddit.com/r/swaywm/comments/jqj1ww/sway_on_ultrawide_monitor_tips_or_recommended/)
emacs [Overview - Emacs NG - A new approach to Emacs](ghttps://emacs-ng.github.io/emacs-ng/)
emacs [dotfiles/Emacs.org at master · daviwil/dotfiles](ghttps://github.com/daviwil/dotfiles/blob/master/Emacs.org)
emacs [dotfiles/Emacs.org at master · daviwil/dotfiles](https://github.com/daviwil/dotfiles/blob/master/Emacs.org)
emacs [emacs 30 config](https://www.reddit.com/r/emacs/s/PvfAewpcci)
emacs [http://libgen.rs/search.php?&req=emacs&phrase=1&view=simple&column=def&sort=year&sortmode=DESC](http://libgen.rs/search.php?%26req%3Demacs%26phrase%3D1%26view%3Dsimple%26column%3Ddef%26sort%3Dyear%26sortmode%3DDESC)
emacs [https://github.com/MiniApollo/kickstart.emacs](https://github.com/MiniApollo/kickstart.emacs)
emacs [https://www.emacswiki.org/emacs/StarterKits](https://www.emacswiki.org/emacs/StarterKits)
emacs [https://www.reddit.com/r/NixOS/s/aMiyjPWmc1](https://www.reddit.com/r/NixOS/s/aMiyjPWmc1) emacs on nixos
emacs [https://www.reddit.com/r/emacs/s/PvfAewpcci](https://www.reddit.com/r/emacs/s/PvfAewpcci)
emacs [marsam/emacspy: Program Emacs in Python instead of ELisp (i.e. write dynamic modules for Emacs in Python)](ghttps://github.com/marsam/emacspy)
emacs perso [novoid (Karl Voit)](https://github.com/novoid/)
fetch credentials provider [](https://github.com/NixOS/nix/issues/8635)
find local zoom tool (magnifying glass icon)
guix [https://fishinthecalculator.me/blog/secrets-management-with-sops-guix.html](https://fishinthecalculator.me/blog/secrets-management-with-sops-guix.html)
guix [https://github.com/abcdw/rde](https://github.com/abcdw/rde)
guix [https://guix.gnu.org/manual/fr/html_node/index.html#Top](https://guix.gnu.org/manual/fr/html_node/index.html%23Top)
guix [https://guix.gnu.org/manual/ru/html_node/index.html#Top](https://guix.gnu.org/manual/ru/html_node/index.html%23Top)
guix [https://trop.in/rde/](https://trop.in/rde/)
hask  [haskell resources](https://discord.com/channels/834325286664929280/902554373094252554/1198694610436882590)
hask **Haskell x Nix**[Nixifying a Haskell project using nixpkgs – NixOS Asia](ghttps://nixos.asia/en/nixify-haskell-nixpkgs)
hask [99 haskell problems](https://wiki.haskell.org/H-99:_Ninety-Nine_Haskell_Problems)
hask [A simple task & time manager written in Haskell : r/commandline](ghttps://www.reddit.com/r/commandline/comments/fbf8ej/a_simple_task_time_manager_written_in_haskell/)
hask [Cross-compile Haskell programs for the Raspberry Pi using Nix | Light Thoughts](ghttps://blog.michivi.com/posts/2020-06-cross-compile-haskell-for-raspberry-pi/)
hask [Functional Programming & Haskell - Computerphile - YouTube](ghttps://www.youtube.com/watch?v%3DLnX3B9oaKzw%26t%3D4s)
hask [Getting Started With Haskell - YouTube](ghttps://www.youtube.com/watch?v%3DfJRBeWwdby8%26t%3D2s)
hask [HNix: Enhancing Nix with Haskell — Monday Morning Haskell](ghttps://mmhaskell.com/blog/2018/5/28/hnix-enhancing-nix-with-haskell?utm_content%3Dcmp-true)
hask [Haskell - NixOS Wiki](https://nixos.wiki/wiki/Haskell)
hask [Haskell : Learn You a Haskell for Great Good - YouTube](ghttps://www.youtube.com/playlist?list%3DPLS6urCrsYES24Fwzg5-Uga1QEbNm9kiU_)
hask [Haskell Playlist](https://www.youtube.com/playlist?app%3Ddesktop%26list%3DPLF1Z-APd9zK7usPMx3LGMZEHrECUGodd3)
hask [How to Setup a Haskell Programming Environment with Nix | Lambda-Blob](ghttps://lambdablob.com/posts/nix-haskell-programming-environment/)
hask [How to read Haskell code (in 7 minutes) - YouTube](ghttps://www.youtube.com/watch?v%3DgK0hMxJhqwM)
hask [HowTo "Pipe Forward": A Kick-Start into Functional Programming - YouTube](https://www.youtube.com/watch?v%3DVJ0gxoxf-iU)
hask [Nix integration - The Haskell Tool Stack](ghttps://docs.haskellstack.org/en/stable/nix_integration/)
hask [Nix: Haskell Concepts for Package Managment — Monday Morning Haskell](ghttps://mmhaskell.com/blog/2018/5/21/nix-haskell-concepts-for-package-managment)
hask [Quick and dirty setup for Haskell on NixOS - Mitaka’s Refuge](https://dimitarg.github.io/nixos-haskell/)
hask [School of Haskell | School of Haskell](https://www.schoolofhaskell.com/)
hask [Series: Setting Up Haskell Development on NixOS Linux from Scratch « fluffynukeit](https://fluffynukeit.com/series/haskell-nixos/)
hask [Setting Up a Haskell Project on NixOS | fluffynukeit](https://fluffynukeit.com/setting-up-a-haskell-project-on-nixos/)
hask [Smooth, non-invasive Haskell Stack and Nix shell integration - Tweag](ghttps://www.tweag.io/blog/2022-06-02-haskell-stack-nix-shell/)
hask [Super-Simple Haskell Development with Nix - Help - NixOS Discourse](https://discourse.nixos.org/t/super-simple-haskell-development-with-nix/14287/2)
hask [cat theory for programmers](https://bartoszmilewski.com/2014/10/28/category-theory-for-programmers-the-preface/)
hask [exercism haskell](https://exercism.org/tracks/haskell/*88)
hask [hasell wiki - learning](https://wiki.haskell.org/Learning_Haskell)
hask [haskell - Reddit Search!](ghttps://www.reddit.com/r/commandline/search/?q%3Dhaskell%26type%3Dlink%26cId%3Df2d728b3-4b9f-442f-8c19-e34790418b56%26iId%3D5e9cff63-c465-475b-89d0-6a7f4fea360a)
hask [haskell-nix/hnix: A Haskell re-implementation of the Nix expression language](ghttps://github.com/haskell-nix/hnix?tab%3Dreadme-ov-file)
hask [hoogle](https://hoogle.haskell.org/)
hask [https://en.wikibooks.org/wiki/Haskell](https://en.wikibooks.org/wiki/Haskell) [](https://mmhaskell.com/machine-learning)
hask [https://github.com/MrcJkb/haskell-tools.nvim](https://github.com/MrcJkb/haskell-tools.nvim)
hask [https://github.com/maralorn/haskell-taskwarrior/tree/main](https://github.com/maralorn/haskell-taskwarrior/tree/main) [](https://taskwarrior.org/tools/)
hask [https://github.com/system-f/fp-course](https://github.com/system-f/fp-course), 
hask [https://hackage.haskell.org/package/nri-prelude-0.6.0.6/docs/Dict.html](https://hackage.haskell.org/package/nri-prelude-0.6.0.6/docs/Dict.html) [](https://www.reddit.com/r/Python/s/IkKJLgK57k)
hask [https://hoogle.haskell.org/](https://hoogle.haskell.org/) Exercises:*Lots of nice different exercises with varying levels of complexity* 
hask [https://liquid.kosmikus.org/01-intro.html#/what-is-liquid-haskell](https://liquid.kosmikus.org/01-intro.html%23/what-is-liquid-haskell) [](https://www.reddit.com/r/haskell/s/DYoFDXVCVV)
hask [https://mmhaskell.com/machine-learning](https://mmhaskell.com/machine-learning) [](https://wiki.haskell.org/Structure_of_a_Haskell_project)
hask [https://nixos.org/manual/nixpkgs/unstable/#haskell-language-server](https://nixos.org/manual/nixpkgs/unstable/%23haskell-language-server)
hask [https://search.nixos.org/packages?channel=23.11&from=0&size=50&sort=relevance&type=packages&query=liquid](https://search.nixos.org/packages?channel%3D23.11%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dliquid)
hask [https://taskwarrior.org/tools/](https://taskwarrior.org/tools/) ← see Haskell [](https://www.softwarefactory-project.io/haskell-for-python-developers.html)
hask [https://ucsd-progsys.github.io/liquidhaskell-tutorial/Tutorial_01_Introduction.html](https://ucsd-progsys.github.io/liquidhaskell-tutorial/Tutorial_01_Introduction.html)
hask [https://wiki.haskell.org/H-99:_Ninety-Nine_Haskell_Problems](https://wiki.haskell.org/H-99:_Ninety-Nine_Haskell_Problems)
hask [https://wiki.haskell.org/Learning_Haskell](https://wiki.haskell.org/Learning_Haskell) *Haskell layout* 
hask [https://wiki.haskell.org/Structure_of_a_Haskell_project](https://wiki.haskell.org/Structure_of_a_Haskell_project) [](https://github.com/maralorn/haskell-taskwarrior/tree/main)
hask [https://www.reddit.com/r/Python/s/IkKJLgK57k](https://www.reddit.com/r/Python/s/IkKJLgK57k) [](https://liquid.kosmikus.org/01-intro.html%23/what-is-liquid-haskell)
hask [https://www.reddit.com/r/functionalprogramming/comments/uw8n1i/modern_purely_functional_languages_like_haskell/?rdt=61219](https://www.reddit.com/r/functionalprogramming/comments/uw8n1i/modern_purely_functional_languages_like_haskell/?rdt%3D61219)
hask [https://www.reddit.com/r/haskell/s/DYoFDXVCVV](https://www.reddit.com/r/haskell/s/DYoFDXVCVV) [](https://www.reddit.com/r/functionalprogramming/comments/uw8n1i/modern_purely_functional_languages_like_haskell/?rdt%3D61219)
hask [https://www.softwarefactory-project.io/haskell-for-python-developers.html](https://www.softwarefactory-project.io/haskell-for-python-developers.html) [](https://hackage.haskell.org/package/nri-prelude-0.6.0.6/docs/Dict.html)
hask [https://www.youtube.com/watch?v=uKpPJV0hhCY](https://www.youtube.com/watch?v%3DuKpPJV0hhCY) *Category Theory for Programmers*, not strictly haskell but relevant and some examples are in haskell 
hask [https://youtube.com/playlist?list=PLe7Ei6viL6jGp1Rfu0dil1JH1SHk9bgDV](https://youtube.com/playlist?list%3DPLe7Ei6viL6jGp1Rfu0dil1JH1SHk9bgDV) *Data61 fp course* 
hask [https://youtube.com/playlist?list=PLly9WMAVMrayYo2c-1E_rIRwBXG_FbLBW](https://youtube.com/playlist?list%3DPLly9WMAVMrayYo2c-1E_rIRwBXG_FbLBW)] *Learn you a haskell for Great Good* 
hask [input-output-hk/haskell.nix: Alternative Haskell Infrastructure for Nixpkgs](ghttps://github.com/input-output-hk/haskell.nix)
hask [learnyouhaskell](http://learnyouahaskell.com/)
hask [mmhaskell](https://mmhaskell.com/)
hask [prim module](https://jordanmartinez.github.io/purescript-jordans-reference-site/content/11-Syntax/01-Basic-Syntax/src/01-Preliminary-Concepts/03-The-Prim-Module-ps.html)
hask [realworldhaskell](http://book.realworldhaskell.org/read/)
hask nix [Nix Haskell Development (2020) - Guides - NixOS Discourse](https://discourse.nixos.org/t/nix-haskell-development-2020/6170)
hask[https://mmhaskell.com/](https://mmhaskell.com/) *Real World Haskell* 
haskell [> ADD RELEVANT PROJECTS TO LIST jtdaugherty/brick: A declarative Unix terminal UI library written in Haskell](ghttps://github.com/jtdaugherty/brick?tab%3Dreadme-ov-file)
haskell [dhall-haskell/dhall-nix at main · dhall-lang/dhall-haskell](https://github.com/dhall-lang/dhall-haskell/tree/main/dhall-nix)
haskell [haskell-nix/hnix: A Haskell re-implementation of the Nix expression language](ghttps://github.com/haskell-nix/hnix)
haskell [hnix: Haskell implementation of the Nix language](ghttps://hackage.haskell.org/package/hnix)
haskell [http://book.realworldhaskell.org/read/](http://book.realworldhaskell.org/read/) *Haskell wiki* 
haskell [http://learnyouahaskell.com/](http://learnyouahaskell.com/) *Monday Morning Haskell* 
haskell [https://bartoszmilewski.com/2014/10/28/category-theory-for-programmers-the-preface/](https://bartoszmilewski.com/2014/10/28/category-theory-for-programmers-the-preface/) Tools:*Search engine for functions by their names and signatures* 
haskell [https://exercism.org/tracks/haskell/*88](https://exercism.org/tracks/haskell/*88) problems divided into specific categories with many solutions included* 
haskell [soupi/haskell-study-plan: An opinionated list of resources for learning Haskell](ghttps://github.com/soupi/haskell-study-plan)
haskk [Gabriella439/haskell-nix: Nix and Haskell in production](https://github.com/Gabriella439/haskell-nix)
hlang A modern language-learning platform | https://www.linuxlinks.com/librelingo-language-learning-platform/
hlang Extensible flashcard learning program | https://www.linuxlinks.com/Anki/
hlang Foreign Language Text Reader | https://www.linuxlinks.com/FLTR/
hlang French and Italian conjugator | https://www.linuxlinks.com/Verbiste/
hlang Front-end for the French computing dictionary Jargon Informatique | https://www.linuxlinks.com/jargon-informatique-front-end-for-the-french-computing-dictionary-jargon-informatique/
hlang Japanese vocabulary and kanji dictionary | https://www.linuxlinks.com/TagainiJisho/
hlang Language learning application based on LibreLingo |https://www.linuxlinks.com/glossaico-language-learning-application-librelingo/
hlang Language-mining tool to help English speakers understand Chinese | https://www.linuxlinks.com/StepintoChinese/
hlang Learn words in a foreign language | https://www.linuxlinks.com/OpenTeacher/
hlang Pronunciation trainer - The KDE Education Project | https://www.linuxlinks.com/artikulate-pronunciation-trainer-the-kde-education-project/
hlang Read and listen, save and test words in context | https://www.linuxlinks.com/LearningWithTexts/
hlang Train your oral skills in foreign languages | https://www.linuxlinks.com/Perroquet/
hlang Vocabulary trainer for KDE 5 | https://www.linuxlinks.com/Parley/
humor [https://www.reddit.com/r/ChatGPT/s/kL08jZ243y](https://www.reddit.com/r/ChatGPT/s/kL08jZ243y) morning coffee in Norway
image [https://www.freepik.com/free-vector/gradient-hexagonal-background_13900571.htm](https://www.freepik.com/free-vector/gradient-hexagonal-background_13900571.htm)
image [https://www.wallpaperflare.com/landscape-photography-of-mountains-surrounded-by-body-of-water-wallpaper-hcoir](https://www.wallpaperflare.com/landscape-photography-of-mountains-surrounded-by-body-of-water-wallpaper-hcoir)
img [266283496-d41e79fd-c3e5-499a-b8b5-c01f002becf7.png (1373×1051)](ghttps://private-user-images.githubusercontent.com/23169302/266283496-d41e79fd-c3e5-499a-b8b5-c01f002becf7.png?jwt%3DeyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MDg5MjYxMTEsIm5iZiI6MTcwODkyNTgxMSwicGF0aCI6Ii8yMzE2OTMwMi8yNjYyODM0OTYtZDQxZTc5ZmQtYzNlNS00OTlhLWI4YjUtYzAxZjAwMmJlY2Y3LnBuZz9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDAyMjYlMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwMjI2VDA1MzY1MVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTJjMDdjMzBkMWNhYjViZGI2NTIzN2NhZGE0Yjc5MjA1NTI2MGIyY2YzMTE4ZjdjODZjZWRhMjlmZmIxM2JlNDUmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.8Q0LOHtXB3DEkVfFSn-MF93ubcf35_6Gjf7PdsA4mVw)
inix [PureNix: Write PureScript and transpile it to Nix : r/NixOS](ghttps://www.reddit.com/r/NixOS/comments/sw3zpp/purenix_write_purescript_and_transpile_it_to_nix/)
jira [https://developer.atlassian.com/server/jira/platform/rest-apis/](https://developer.atlassian.com/server/jira/platform/rest-apis/) 
jira [https://github.com/Biscuit-Colorscheme/biscuit](https://github.com/Biscuit-Colorscheme/biscuit) 
jira [https://github.com/ralphbean/jira-tools](https://github.com/ralphbean/jira-tools) 
jira [https://www.npmjs.com/package/@rushdigital/confluence-cli](https://www.npmjs.com/package/@rushdigital/confluence-cli) 
jira [jira-cli](https://github.com/ankitpokhrel/jira-cli)
jira [jira-tools](https://github.com/ralphbean/jira-tools)
jira [jira](https://www.npmjs.com/package/@rushdigital/confluence-cli)
key [Hacker's Corner: Complete Guide to Keylogging in Linux - Part 1 | L...](https://linuxsecurity.com/features/complete-guide-to-keylogging-in-linux-part-1)
key [Hacker's Corner: Complete Guide to Keylogging in Linux - Part 2 | L...](https://linuxsecurity.com/features/complete-guide-to-keylogging-in-linux-part-2)
key [Hacker's Corner: Complete Guide to Keylogging in Linux - Part 3 | L...](https://linuxsecurity.com/features/complete-guide-to-keylogging-in-linux-part-3)
key [dots/keyboard/.config/keyboard at main · veyxov/dots](ghttps://github.com/veyxov/dots/tree/main/keyboard/.config/keyboard)
key [http://xahlee.info/comp/unicode_matching_brackets.html](http://xahlee.info/comp/unicode_matching_brackets.html)
key [https://github.com/houmain/keymapper](https://github.com/houmain/keymapper)
key [https://gitlab.com/interception/linux/plugins/dual-function-keys](https://gitlab.com/interception/linux/plugins/dual-function-keys)
key [kanata/docs/config.adoc at main · jtroo/kanata](ghttps://github.com/jtroo/kanata/blob/main/docs/config.adoc)
key [veyxov/qanata: Application aware layer switching in](ghttps://github.com/veyxov/qanata) [kanata](https://github.com/veyxov/qanata)
key keymaps convo [](https://www.reddit.com/r/neovim/s/2j96StuexD)
landscape [https://ubuntu.com/landscape/docs](https://ubuntu.com/landscape/docs) 
misc  [https://www.tomshardware.com/tech-industry/artificial-intelligence/jensen-huang-advises-against-learning-to-code-leave-it-up-to-ai](https://www.tomshardware.com/tech-industry/artificial-intelligence/jensen-huang-advises-against-learning-to-code-leave-it-up-to-ai)
misc J [https://www.reddit.com/r/GetMotivated/s/8N440q42gj](https://www.reddit.com/r/GetMotivated/s/8N440q42gj) motivation and wasted time
misc [7 Greatest Centre-Forwards Since 2000 - YouTube](https://www.youtube.com/watch?v%3DbmQF_NMXFR0)
misc [All The Terrible Arguments Used To Justify Genocide - SOME MORE NEWS - YouTube](ghttps://www.youtube.com/watch?v%3DLrGlRax9AiY)
misc [Digital Plants (L-Systems) - Computerphile - YouTube](ghttps://www.youtube.com/watch?v%3Dpuwhf-404Xc)
misc [Gerald Weinberg - Wikipedia](https://en.wikipedia.org/wiki/Gerald_Weinberg%23Publications)
misc [Jonathan Blow on Software Quality at the CSUA 4 - YouTube](https://www.youtube.com/watch?v%3DMlIZ2Q3Rvc8)
misc [Jugend ohne Gott? Warum diese jungen Menschen wieder Bock auf Kirche haben | Y-Kollektiv Y-Kollektiv Y-Kollektiv Verificada • • 196 K visualizaciones hace 6 días Nuevo](https://www.youtube.com/watch?v%3Dgn7GnY6egLY)
misc [KDE PLASMA 6 review: was it worth the wait? - YouTube](ghttps://www.youtube.com/watch?v%3DmtaQroi75M0)
misc [Library Genesis: Morgan Housel - The Psychology of Money: Timeless Lessons on Wealth, Greed, and Happiness](https://libgen.rs/book/index.php?md5%3DACC521DCBF15F206F9B8155E68622706)
misc [NVIDIA CEO: "Programmieren lernen ist Zeitverschwendung" | Morpheus Meinung - YouTube](ghttps://www.youtube.com/watch?v%3DWXYnPU9NEaM)
misc [Rants and Asides: Social Justice and Open Source - YouTube](ghttps://www.youtube.com/watch?v%3DqOsdlc_5PPw)
misc [Rust Creator Graydon Hoare Recounts the History of Compilers - The New Stack](ghttps://thenewstack.io/rust-creator-graydon-hoare-recounts-the-history-of-compilers/)
misc [Sabine Hossenfelder: «Freier Wille – das macht keinen Sinn» | Sternstunde Philosophie | SRF Kultur - YouTube](ghttps://www.youtube.com/watch?v%3DtVxMcmYN0P8)
misc [Supreme Court Ethics: Last Week Tonight with John Oliver (HBO) - YouTube](https://www.youtube.com/watch?v%3DGE-VJrdHMug)
misc [The Hardest Problem in Computer Science: Marketing - Michael Bernstein - YouTube](ghttps://www.youtube.com/watch?v%3DrMnpqGntrxI)
misc [The History of Technological Anxiety and the Future of Economic Growth: Is This Time Different?](https://pubs.aeaweb.org/doi/pdfplus/10.1257/jep.29.3.31)
misc [The Trillion Dollar Equation - YouTube](ghttps://www.youtube.com/watch?v%3DA5w-dEgIU1M)
misc [They Smile In Your Face feat. Corey Robin | Chapo Trap House - YouTube](ghttps://www.youtube.com/watch?v%3DUmLDFj1TwzM)
misc [When a White Guy Visits India - YouTube](https://www.youtube.com/watch?v%3DnM1mPse326A)
misc [Why Do Most Programmers Who Start Companies Fail?](ghttps://www.youtube.com/watch?v%3DgIJEjN9_fl8)
misc [Why are Gen-Z Women so Much More Liberal than Men? TLDR News Global TLDR News Global • • 33 K visualizaciones hace 3 horas Nuevo](ghttps://www.youtube.com/watch?v%3DywtKokFjYb4)
misc [https://equitablegrowth.org/technological-progress-anxiety-thinking-about-peak-horse-and-the-possibility-of-peak-human/](https://equitablegrowth.org/technological-progress-anxiety-thinking-about-peak-horse-and-the-possibility-of-peak-human/)
misc [https://explainextended.com/2023/12/31/happy-new-year-15/](https://explainextended.com/2023/12/31/happy-new-year-15/)
misc [https://substack.com/app](https://substack.com/app) 
misc [https://www.csl-computer.com/razer-kraken-green.html?utm_source=Google_Merchant_Center&utm_medium=Preisvergleich&utm_campaign=Google_Merchant_Center&gclid=Cj0KCQiA5fetBhC9ARIsAP1UMgE-qdC0EhxCS7YXS7GM8HFIym7qzsazYRd328Fx2jeofPOSwwA2mikaApPYEALw_wcB](https://www.csl-computer.com/razer-kraken-green.html?utm_source%3DGoogle_Merchant_Center%26utm_medium%3DPreisvergleich%26utm_campaign%3DGoogle_Merchant_Center%26gclid%3DCj0KCQiA5fetBhC9ARIsAP1UMgE-qdC0EhxCS7YXS7GM8HFIym7qzsazYRd328Fx2jeofPOSwwA2mikaApPYEALw_wcB) headset
misc [https://www.inc.com/justin-bariso/neuroscience-says-1-simple-habit-boosts-brain-connectivity-learning-memory.html](https://www.inc.com/justin-bariso/neuroscience-says-1-simple-habit-boosts-brain-connectivity-learning-memory.html)
misc [https://www.mckinsey.com/featured-insights/future-of-work/what-can-history-teach-us-about-technology-and-jobs](https://www.mckinsey.com/featured-insights/future-of-work/what-can-history-teach-us-about-technology-and-jobs)
misc [‘Hipster eugenics’: why is the media cosying up to people who want to build a super race? | Life and style | The Guardian](ghttps://www.theguardian.com/lifeandstyle/2023/apr/20/pro-natalism-babies-global-population-genetics)
misc j[https://www.google.com/search?q=history](https://www.google.com/search?q%3Dhistory) of labor and technology&ie=utf-8&oe=utf-8&client=firefox-b-m
mobile [AryanVBW/LinuxDroid: The most powerful security toolkit for Android: without rooting your device. Run security tools like Nmap, Metasploit, and Wireshark on your Android device without voiding your warranty. Access a wide range of penetration testing tools and utilities, right from your Android phone or tablet.](https://github.com/AryanVBW/LinuxDroid)
music [NIGHTWISH - How's The Heart (OFFICIAL LYRIC VIDEO) - YouTube](ghttps://www.youtube.com/watch?v%3DF8vuyd9M2LU)
music [Rumours (Full Album) - YouTube](ghttps://www.youtube.com/watch?v%3DuzEt9cATWFw%26t%3D1202s)
music [Rumours (Full Album) - YouTube](https://www.youtube.com/watch?v%3DuzEt9cATWFw)
music [Semitics – 47SOUL | السبعة وأربعين](https://47soul.com/discography/semitics/)
neovim nix [reddit link](https://www.reddit.com/r/neovim/s/6nuivNQJII)
nix [Add missing 'nix profile' subcommands by edolstra · Pull Request #5249 · NixOS/nix](ghttps://github.com/NixOS/nix/pull/5249)
nix [Building a Rust service with Nix](ghttps://fasterthanli.me/series/building-a-rust-service-with-nix)
nix [Can someone show me how to manage $HOME without home-manager? : r/NixOS](ghttps://www.reddit.com/r/NixOS/comments/j4uc0k/can_someone_show_me_how_to_manage_home_without/)
nix [Can't get rid of home-manager package - Help - NixOS Discourse](ghttps://discourse.nixos.org/t/cant-get-rid-of-home-manager-package/8449/6)
nix [Changes after updating home-manager - Today I Learned](ghttps://fnordig.de/til/nix/package-changes.html)
nix [Deleting Old System Profiles - What am I Missing? : r/NixOS](ghttps://www.reddit.com/r/NixOS/comments/unwip2/deleting_old_system_profiles_what_am_i_missing/)
nix [Derivations (Nix From First Principles: Flake Edition #5) - Tony Finn](ghttps://tonyfinn.com/blog/nix-from-first-principles-flake-edition/nix-5-derivation-intro/)
nix [Download Nix / NixOS | Nix & NixOS](ghttps://nixos.org/download)
nix [Home Manager - NixOS Wiki](ghttps://nixos.wiki/wiki/Home_Manager)
nix [How do you delete old generations and gc them automatically? : r/NixOS](ghttps://www.reddit.com/r/NixOS/comments/ejsdhb/how_do_you_delete_old_generations_and_gc_them/)
nix [How to (partially) compensate for the lack of static typing / type annotations? - Help - NixOS Discourse](https://discourse.nixos.org/t/how-to-partially-compensate-for-the-lack-of-static-typing-type-annotations/40139)
nix [How to manage user configuration with flakes without home manager on nixos-21.05? - Help - NixOS Discourse](ghttps://discourse.nixos.org/t/how-to-manage-user-configuration-with-flakes-without-home-manager-on-nixos-21-05/16102/11)
nix [How to remove old system generations? - Help - NixOS Discourse](ghttps://discourse.nixos.org/t/how-to-remove-old-system-generations/6648)
nix [Julia Evans](https://jvns.ca/) (Nix)
nix [Julow/nix-workspaces: Reproducible workspaces using Nix modules.](ghttps://github.com/Julow/nix-workspaces)
nix [List and delete NixOS generations - Help - NixOS Discourse](ghttps://discourse.nixos.org/t/list-and-delete-nixos-generations/29637)
nix [Managing OS and home configurations using nixos-flake – nixos-flake](https://community.flake.parts/nixos-flake)
nix [Module system deep dive — nix.dev documentation](https://nix.dev/tutorials/module-system/module-system)
nix [Nix By Example · Nix Cookbook](ghttps://ops.functionalalgebra.com/nix-by-example/)
nix [Nix Function to Validate Email Address - CodePal](https://codepal.ai/code-generator/query/5pPHhh0W/nix-function-validate-email)
nix [Nix-lite, or Nix without the store, for templating - NixOS Discourse](https://discourse.nixos.org/t/nix-lite-or-nix-without-the-store-for-templating/38577)
nix [NixOS - Das Linux mit ganz eigenen Herangehensweisen. Grundkonzept vorgestellt - YouTube](https://www.youtube.com/watch?app%3Ddesktop%26v%3Dl3HnhX4tmZc)
nix [NixOS 23.11 manual | Nix & NixOS](ghttps://nixos.org/manual/nixos/stable/index.html%23sec-changing-config)
nix [NixOS 23.11 manual | Nix & NixOS](ghttps://nixos.org/manual/nixos/stable/options%23opt-services.xserver.displayManager.autoLogin)
nix [NixOS Generations Trimmer - NixOS Wiki](ghttps://nixos.wiki/wiki/NixOS_Generations_Trimmer)
nix [NixOS Search - Options - nix.gc](ghttps://search.nixos.org/options?channel%3D23.11%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dnix.gc)
nix [NixOS Search - Packages - spacefm](https://search.nixos.org/packages?channel%3Dunstable%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dspacefm)
nix [NixOS Secrets Management | SOPS-NIX - YouTube](ghttps://www.youtube.com/watch?v%3DG5f6GC7SnhU)
nix [NixOS can automatically run non-installed programs on typing their name : r/NixOS](https://www.reddit.com/r/NixOS/comments/6a1z7f/nixos_can_automatically_run_noninstalled_programs/)
nix [NixOS/nixos-artwork: Nix related artwork](https://github.com/NixOS/nixos-artwork)
nix [NixOS: Everything Everywhere All At Once - YouTube](ghttps://www.youtube.com/watch?v%3DCwfKlX3rA6E)
nix [Repository search results](https://github.com/search?q%3Dags%2Blanguage%253ANix%2B%26type%3Drepositories)
nix [Say Goodbye to Containers - Ephemeral Environments with Nix Shell - YouTube](https://www.youtube.com/watch?v%3D0ulldVwZiKA)
nix [Switching non-NixOS Home Manager to flakes – dee.underscore.world](ghttps://dee.underscore.world/blog/home-manager-flakes/)
nix [Upgrading Nix - Nix Reference Manual](ghttps://nixos.org/manual/nix/stable/installation/upgrading)
nix [What are the options for hardware.nvidia.package? (docs seem out-of-date) : r/NixOS](ghttps://www.reddit.com/r/NixOS/comments/or7pvq/what_are_the_options_for_hardwarenvidiapackage/)
nix [[RFC 0137] Nix language versioning by fricklerhandwerk · Pull Request #137 · NixOS/rfcs](https://github.com/NixOS/rfcs/pull/137)
nix [community.flake.parts](https://community.flake.parts/)
nix [devenv.sh](http://devenv.sh) 
nix [flake.lock: Update by github-actions[bot] · Pull Request #3 · io12/nix-snapd](ghttps://github.com/io12/nix-snapd/pull/3/commits)
nix [home-manager/modules · main · Nick Hiebert / dotfiles · GitLab](https://gitlab.com/BRBWaffles/dotfiles/-/tree/main/home-manager/modules?ref_type%3Dheads)
nix [https://app.cachix.org/cache/nix-community](https://app.cachix.org/cache/nix-community) ***
nix [https://codeberg.org/SkelyToni/NixOS](https://codeberg.org/SkelyToni/NixOS)
nix [https://cybernews.com/editorial/the-sweet-fruits-of-hard-work-the-most-exquisite-custom-made-nix-designs/](https://cybernews.com/editorial/the-sweet-fruits-of-hard-work-the-most-exquisite-custom-made-nix-designs/)
nix [https://danth.github.io/stylix/index.html](https://danth.github.io/stylix/index.html)
nix [https://devenv.sh/blog/2024/03/20/devenv-10-rewrite-in-rust/#whats-new](https://devenv.sh/blog/2024/03/20/devenv-10-rewrite-in-rust/%23whats-new)
nix [https://discourse.nixos.org/t/accessing-gpus-inside-a-nix-generated-docker-container/21122](https://discourse.nixos.org/t/accessing-gpus-inside-a-nix-generated-docker-container/21122)
nix [https://discourse.nixos.org/t/gpu-enabled-docker-containers-in-nixos/23870](https://discourse.nixos.org/t/gpu-enabled-docker-containers-in-nixos/23870)
nix [https://discourse.nixos.org/t/home-manager-shell-nix-shell-for-your-home-manager-config/24632](https://discourse.nixos.org/t/home-manager-shell-nix-shell-for-your-home-manager-config/24632)
nix [https://discourse.nixos.org/t/how-are-you-keeping-devshell-dependencies-live-in-store/16730/2](https://discourse.nixos.org/t/how-are-you-keeping-devshell-dependencies-live-in-store/16730/2)
nix [https://discourse.nixos.org/t/how-to-partially-compensate-for-the-lack-of-static-typing-type-annotations/40139](https://discourse.nixos.org/t/how-to-partially-compensate-for-the-lack-of-static-typing-type-annotations/40139)
nix [https://discourse.nixos.org/t/nix-store-gc-equivalent-to-delete-older-than/31767/2](https://discourse.nixos.org/t/nix-store-gc-equivalent-to-delete-older-than/31767/2)
nix [https://discourse.nixos.org/t/nvidia-docker-seems-not-working/26665](https://discourse.nixos.org/t/nvidia-docker-seems-not-working/26665)
nix [https://discourse.nixos.org/t/using-a-private-gitlab-instance-with-fetchgit/28013/3](https://discourse.nixos.org/t/using-a-private-gitlab-instance-with-fetchgit/28013/3)
nix [https://discourse.nixos.org/t/using-nvidia-container-runtime-with-containerd-on-nixos/27865](https://discourse.nixos.org/t/using-nvidia-container-runtime-with-containerd-on-nixos/27865)
nix [https://discourse.nixos.org/t/what-do-i-need-to-know-to-use-nix-and-where-to-find-more-a-concise-overview-for-new-users/41656](https://discourse.nixos.org/t/what-do-i-need-to-know-to-use-nix-and-where-to-find-more-a-concise-overview-for-new-users/41656)
nix [https://drakerossman.com/blog/hackernews-userscript-in-rust-wasm](https://drakerossman.com/blog/hackernews-userscript-in-rust-wasm)
nix [https://drakerossman.com/blog/how-to-patch-a-package-source-on-nixos](https://drakerossman.com/blog/how-to-patch-a-package-source-on-nixos?utm_source%3Ddrakerossman%26utm_medium%3Demail%26utm_campaign%3Ddrakerossmancom-patching-package-source-on-nixos)
nix [https://drakerossman.com/blog/interview-with-cto-of-listenfield-agtech-introducing-nixos-to-organization](https://drakerossman.com/blog/interview-with-cto-of-listenfield-agtech-introducing-nixos-to-organization)
nix [https://drakerossman.com/blog/overview-of-nix-formatters-ecosystem](https://drakerossman.com/blog/overview-of-nix-formatters-ecosystem)
nix [https://drakerossman.com/blog/practical-nixos-the-book](https://drakerossman.com/blog/practical-nixos-the-book)
nix [https://drakerossman.com/blog/rust-development-on-nixos-bootstrapping-rust-nightly-via-flake](https://drakerossman.com/blog/rust-development-on-nixos-bootstrapping-rust-nightly-via-flake)
nix [https://freedomlibrary.hillsdale.edu/programs/cca-i-russia/russia-from-1696-1917-an-overview](https://freedomlibrary.hillsdale.edu/programs/cca-i-russia/russia-from-1696-1917-an-overview)
nix [https://functor.tokyo/blog/2022-01-10-why-purenix](https://functor.tokyo/blog/2022-01-10-why-purenix)
nix [https://github.com/Awan/nix](https://github.com/Awan/nix)
nix [https://github.com/FelixKratz/dotfiles/tree/0619040a8eebbf9896c5ce4fc9d312270426ed8f](ghttps://github.com/FelixKratz/dotfiles/tree/0619040a8eebbf9896c5ce4fc9d312270426ed8f)
nix [https://github.com/MasterofNull/nixos/](https://github.com/MasterofNull/nixos/)
nix [https://github.com/Mic92/nix-update](https://github.com/Mic92/nix-update)
nix [https://github.com/NixOS/nix/issues/8635](https://github.com/NixOS/nix/issues/8635)
nix [https://github.com/NixOS/nixpkgs/issues/280566#issuecomment-1925520721](https://github.com/NixOS/nixpkgs/issues/280566%23issuecomment-1925520721)
nix [https://github.com/NixOS/rfcs/pull/166](https://github.com/NixOS/rfcs/pull/166)
nix [https://github.com/avnibilgin/dotfiles](https://github.com/avnibilgin/dotfiles)
nix [https://github.com/emacs-twist/twist.nix](https://github.com/emacs-twist/twist.nix) (emacs twist)
nix [https://github.com/kbeerta/flake](https://github.com/kbeerta/flake)
nix [https://github.com/ksenia-portu/flake/blob/master/flake.nix](https://github.com/ksenia-portu/flake/blob/master/flake.nix)
nix [https://github.com/nix-community/dream2nix/tree/main/examples](https://github.com/nix-community/dream2nix/tree/main/examples)
nix [https://github.com/nix-community/haumea](https://github.com/nix-community/haumea)
nix [https://github.com/nix-community/robotnix](https://github.com/nix-community/robotnix)
nix [https://github.com/target/nix-fetchers](https://github.com/target/nix-fetchers)
nix [https://gitlab.com/nobodyinperson/flakes/-/blob/main/poetryFHS/flake.nix?ref_type=heads](https://gitlab.com/nobodyinperson/flakes/-/blob/main/poetryFHS/flake.nix?ref_type%3Dheads)
nix [https://gitlab.com/nobodyinperson/flakes/-/tree/main/poetry2nix](https://gitlab.com/nobodyinperson/flakes/-/tree/main/poetry2nix)
nix [https://gitlab.com/nobodyinperson/flakes](https://gitlab.com/nobodyinperson/flakes)
nix [https://haseebmajid.dev/posts/2023-10-26-how-to-setup-a-go-development-shell-with-nix-flakes/](https://haseebmajid.dev/posts/2023-10-26-how-to-setup-a-go-development-shell-with-nix-flakes/)
nix [https://jpetazzo.github.io/2020/04/01/quest-minimal-docker-images-part-3/](https://jpetazzo.github.io/2020/04/01/quest-minimal-docker-images-part-3/)
nix [https://news.ycombinator.com/item?id=30057287](https://news.ycombinator.com/item?id%3D30057287) curse of nixos
nix [https://newsletter.ruder.io/p/the-big-picture-of-ai-research](https://newsletter.ruder.io/p/the-big-picture-of-ai-research)
nix [https://nix.dev/tutorials/module-system/module-system](https://nix.dev/tutorials/module-system/module-system)
nix [https://nix4noobs.com/flakes/devshells/](https://nix4noobs.com/flakes/devshells/)
nix [https://nixos.org/guides/nix-pills/garbage-collector](https://nixos.org/guides/nix-pills/garbage-collector)
nix [https://nixos.org/manual/nix/stable/package-management/garbage-collection.html](https://nixos.org/manual/nix/stable/package-management/garbage-collection.html)
nix [https://nixos.org/manual/nix/stable/package-management/profiles](https://nixos.org/manual/nix/stable/package-management/profiles)
nix [https://nixos.org/manual/nixpkgs/stable/#fetchfromgitlab](https://nixos.org/manual/nixpkgs/stable/%23fetchfromgitlab)
nix [https://nixos.wiki/wiki/Ca-derivations](https://nixos.wiki/wiki/Ca-derivations)
nix [https://primamateria.github.io/blog/haumea-cheatsheet/](https://primamateria.github.io/blog/haumea-cheatsheet/)
nix [https://reflexivereflection.com/posts/2015-02-28-deb-installation-nixos.html](https://reflexivereflection.com/posts/2015-02-28-deb-installation-nixos.html)
nix [https://search.nixos.org/packages?channel=23.11&show=libgen-cli&from=0&size=50&sort=relevance&type=packages&query=libgen](https://search.nixos.org/packages?channel%3D23.11%26show%3Dlibgen-cli%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dlibgen)
nix [https://search.nixos.org/packages?channel=23.11&show=runit&from=0&size=50&sort=relevance&type=packages&query=runit](https://search.nixos.org/packages?channel%3D23.11%26show%3Drunit%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Drunit) nixos runit
nix [https://summer.nixos.org/blog/callpackage-a-tool-for-the-lazy/](https://summer.nixos.org/blog/callpackage-a-tool-for-the-lazy/)
nix [https://thegradientpub.substack.com/p/ted-gibson-language-structure-communication-llms](https://thegradientpub.substack.com/p/ted-gibson-language-structure-communication-llms)
nix [https://tmp.bearblog.dev/minimal-containers-using-nix/](https://tmp.bearblog.dev/minimal-containers-using-nix/)
nix [https://tonyfinn.com/blog/nix-from-first-principles-flake-edition/nix-8-flakes-and-developer-environments/](https://tonyfinn.com/blog/nix-from-first-principles-flake-edition/nix-8-flakes-and-developer-environments/)
nix [https://unix.stackexchange.com/questions/522822/different-methods-to-run-a-non-nixos-executable-on-nixos/522823#522823](https://unix.stackexchange.com/questions/522822/different-methods-to-run-a-non-nixos-executable-on-nixos/522823%23522823)
nix [https://unix.stackexchange.com/questions/717168/how-to-package-my-software-in-nix-or-write-my-own-package-derivation-for-nixpkgs/717169?noredirect=1#comment1464428_717169](https://unix.stackexchange.com/questions/717168/how-to-package-my-software-in-nix-or-write-my-own-package-derivation-for-nixpkgs/717169?noredirect%3D1%23comment1464428_717169)
nix [https://www.reddit.com/r/NixOS/comments/129mdgp/gdm_only_showing_black_screen_and_white_cursor/](https://www.reddit.com/r/NixOS/comments/129mdgp/gdm_only_showing_black_screen_and_white_cursor/)
nix [https://www.reddit.com/r/NixOS/comments/bs4q2p/installing_deb_packages_in_nixos/?rdt=64360](https://www.reddit.com/r/NixOS/comments/bs4q2p/installing_deb_packages_in_nixos/?rdt%3D64360)
nix [https://www.reddit.com/r/NixOS/comments/wjskae/how_can_i_change_grub_theme_from_the/?rdt=48996](https://www.reddit.com/r/NixOS/comments/wjskae/how_can_i_change_grub_theme_from_the/?rdt%3D48996)
nix [https://www.reddit.com/r/NixOS/s/LhnKgqVscG](https://www.reddit.com/r/NixOS/s/LhnKgqVscG) protect flake shell used with nix develop from having their packages deleted by nix-collect-garbage
nix [https://www.reddit.com/r/NixOS/s/UhoOeQnx6T](https://www.reddit.com/r/NixOS/s/UhoOeQnx6T)
nix [https://www.reddit.com/r/NixOS/s/bUsuKtHM9W](https://www.reddit.com/r/NixOS/s/bUsuKtHM9W)
nix [https://www.reddit.com/r/NixOS/s/bytkKR3Tvq](https://www.reddit.com/r/NixOS/s/bytkKR3Tvq)
nix [https://www.reddit.com/r/NixOS/s/eq9BlQ1sRj](https://www.reddit.com/r/NixOS/s/eq9BlQ1sRj)
nix [https://www.reddit.com/r/NixOS/s/iNzCdcCZWj](https://www.reddit.com/r/NixOS/s/iNzCdcCZWj) folder structure feedback
nix [https://www.reddit.com/r/NixOS/s/s1yFBo1r44](ghttps://www.reddit.com/r/NixOS/s/s1yFBo1r44)
nix [https://yuanwang.ca/posts/getting-started-with-flakes.html](https://yuanwang.ca/posts/getting-started-with-flakes.html)
nix [juspay/nix-dev-home: A](https://github.com/juspay/nix-dev-home) [home-manager](https://github.com/juspay/nix-dev-home) [template providing useful tools & settings for Nix-based development (macOS & Linux supported)](https://github.com/juspay/nix-dev-home)
nix [nix flake - Nix Reference Manual](ghttps://nixos.org/manual/nix/stable/command-ref/new-cli/nix3-flake.html%23flake-references)
nix [nix flake lock - Nix Reference Manual](ghttps://nixos.org/manual/nix/stable/command-ref/new-cli/nix3-flake-lock)
nix [nix-collect-garbage - Nix Reference Manual](ghttps://nixos.org/manual/nix/stable/command-ref/nix-collect-garbage)
nix [nix-community/nixpkgs.lib: nixpkgs lib for cheap instantiation [maintainer=@github-action] (with initial help from @blaggacao)](ghttps://github.com/nix-community/nixpkgs.lib)
nix [nix-shorts/posts/inspecting-values-with-repl.md at master · alper/nix-shorts](ghttps://github.com/alper/nix-shorts/blob/master/posts/inspecting-values-with-repl.md)
nix [services - MyNixOS](https://mynixos.com/search?q%3Dservices)
nix [srid/nixos-flake: A flake-parts module to manage NixOS and macOS machines, along with home-manager support, in a unified fashion.](https://github.com/srid/nixos-flake)
nix [symphorien/nix-du: Visualise which gc-roots to delete to free some space in your nix store](ghttps://github.com/symphorien/nix-du)
nix [unimport nix plugin? at DuckDuckGo](ghttps://duckduckgo.com/?q%3Dunimport%2Bnix%2Bplugin%253F%26ia%3Dweb)
nix [yelircaasi | Cachix](ghttps://app.cachix.org/cache/yelircaasi%23pull)
nix add reasonably-minimal container CL environment to Nix flake
nix ai [Nixified AI](https://nixified.ai/)
nix cuda [https://gist.github.com/ChadSki/926e5633961c9b48131eabd32e57adb2](https://gist.github.com/ChadSki/926e5633961c9b48131eabd32e57adb2) nix with cuda
nix deploy = homeManager.makeModule { modules = [ config.nixos ]; };
nix ds [https://nixos.wiki/wiki/Tensorflow](https://nixos.wiki/wiki/Tensorflow) 
nix flakes explanation [reddit](https://www.reddit.com/r/NixOS/s/eq9BlQ1sRj)
nix landscape [Commits · yelircaasi/landscape-client-nixos](https://github.com/yelircaasi/landscape-client-nixos/commits/nixos/)
nix landscape [https://github.com/canonical/landscape-scripts](https://github.com/canonical/landscape-scripts) 
nix landscape [landscape-client/setup_client.py at master · canonical/landscape-client](https://github.com/canonical/landscape-client/blob/master/setup_client.py)
nix mobile  [https://nlnet.nl/project/mobile-nixos/](https://nlnet.nl/project/mobile-nixos/)
nix mobile [Installing Guix as a Complete GNU/Linux System - YouTube](https://www.youtube.com/watch?v%3DoSy-TmoxG_Y%26list%3DPLEoMzSkcN8oNxnj7jm5V2ZcGc52002pQU%26index%3D5%26pp%3DiAQB)
nix mobile [Nix Phone and the End of Android](https://www.youtube.com/watch?v%3D0UIpg19KECw)
nix mobile [https://calyxos.org/install/devices/FP4/linux/](https://calyxos.org/install/devices/FP4/linux/)
nix mobile [https://fosstodon.org/@GreyLinux](https://fosstodon.org/@GreyLinux)
nix mobile [https://github.com/turbo-muffin/ancap-catppuccin](https://github.com/turbo-muffin/ancap-catppuccin)
nix mobile [https://nixos.wiki/wiki/PinePhone](https://nixos.wiki/wiki/PinePhone)
nix mobile [https://pine64.com/product/pinephone-beta-edition-with-convergence-package/](https://pine64.com/product/pinephone-beta-edition-with-convergence-package/)
nix mobile [https://www.reddit.com/r/NixOS/comments/sgjksu/today_i_learned_that_you_can_run_nixos_on_a/](https://www.reddit.com/r/NixOS/comments/sgjksu/today_i_learned_that_you_can_run_nixos_on_a/) nixos on mobile
nix mobile search nixos-mobile on github
nix note: create different configuration expressions to wrap and manage window managers and widgets and login managers etc: hyprland-ags.nix  hyprland-basic.nix  sway.nix  swayfx.nix  riverwm.nix  popos.nix
nix nvidia [Impossible to initialize nvidia nvml : Driver/library version mismatch · Issue #98328 · NixOS/nixpkgs](ghttps://github.com/NixOS/nixpkgs/issues/98328)
nix nvidia [Syllo/nvtop: GPUs process monitoring for AMD, Intel and NVIDIA](ghttps://github.com/Syllo/nvtop%23gpu-support)
nix nvidia [What's a legacy driver? | NVIDIA](ghttps://www.nvidia.com/en-us/drivers/unix/legacy-gpu/)
nix nvidia docker [https://github.com/suvash/nixos-nvidia-cuda-python-docker-compose](https://github.com/suvash/nixos-nvidia-cuda-python-docker-compose)
nix nvidia docker [https://sebastian-staffa.eu/posts/nvidia-docker-with-nix/](https://sebastian-staffa.eu/posts/nvidia-docker-with-nix/)
nix nvidia docker [https://www.google.com/search?client=firefox-b-d&q=nvidia+docker+container+on+nixos#ip=1](https://www.google.com/search?client%3Dfirefox-b-d%26q%3Dnvidia%2Bdocker%2Bcontainer%2Bon%2Bnixos%23ip%3D1)
nix nvidia ml [https://www.reddit.com/r/NixOS/comments/tzlunt/deep_learning_on_nixos/](https://www.reddit.com/r/NixOS/comments/tzlunt/deep_learning_on_nixos/)
nix prog [hraban/cl-nix-lite: Common Lisp module for Nix, without Quicklisp](ghttps://github.com/hraban/cl-nix-lite)
nix rice  [the-argus/gtk-nix: A gtk theme that can be configured with nix](https://github.com/the-argus/gtk-nix/)
nix rice [https://github.com/danth/stylix](https://github.com/danth/stylix)
nix sops [https://blog.gitguardian.com/a-comprehensive-guide-to-sops/](https://blog.gitguardian.com/a-comprehensive-guide-to-sops/)
nix sops [https://github.com/Mic92/sops-nix](https://github.com/Mic92/sops-nix)
nix sops [https://github.imold.wang/lucidph3nx/nvim-sops](https://github.imold.wang/lucidph3nx/nvim-sops)
nix sops [https://konradmalik.com/posts/2023/02/sops-nix-simple-secrets-management-for-nix/](https://konradmalik.com/posts/2023/02/sops-nix-simple-secrets-management-for-nix/)
nix sops [https://www.youtube.com/watch?v=G5f6GC7SnhU](https://www.youtube.com/watch?v%3DG5f6GC7SnhU)
nix sw [https://news.ycombinator.com/item?id=33655542](https://news.ycombinator.com/item?id%3D33655542) 
nix: write insertIf function in Nix to interpolate string if some option is set, otherwise empty stringkeep in separate files and then bring together in Nix. Call files that are incorrect as standalone .luaPiece (for exampke) and in nvim turn on highlighting with false positive errors turned off
note get Quaintance math book on phone and laptop, make sure Drive has latest version
nviim [https://www.google.com/search?q=quick](https://www.google.com/search?q%3Dquick) intro to neovim key mapping&ie=utf-8&oe=utf-8&client=firefox-b-m
nvim  [Auto-import? · Issue #34 · python-lsp/python-lsp-server](ghttps://github.com/python-lsp/python-lsp-server/issues/34)
nvim  [https://github.com/LGUG2Z/helix-vim](https://github.com/LGUG2Z/helix-vim)
nvim  [https://vhyrro.github.io/](https://vhyrro.github.io/)
nvim  [xvzftube/nvim-lua-for-ds: A simple neovim config for data science](ghttps://github.com/xvzftube/nvim-lua-for-ds)
nvim ## **[Cool shortcuts to become a neovim wizard.](https://www.reddit.com/r/neovim/s/EHI2tlRrKP)**
nvim * [Entire Neovim Manual](https://www.youtube.com/watch?v%3DrT-fbLFOCy0)
nvim **[using neovim as a machine learning engineer](ghttps://www.reddit.com/r/neovim/comments/1bf9e8t/using_neovim_as_a_machine_learning_engineer)**
nvim [10 Questions with Vim’s creator, Bram Moolenaar](https://www.binpress.com/vim-creator-bram-moolenaar-interview/)
nvim [A Morlock's Guide to Lua, Part 3: Using Lua to Configure Nvim](https://neovim.substack.com/p/a-morlocks-guide-to-lua-part-3-using)
nvim [A guide to modern Web Development with (Neo)vim](https://www.freecodecamp.org/news/a-guide-to-modern-web-development-with-neo-vim-333f7efbf8e2/)
nvim [Add a plugin to provide autoimport functionality by bagel897 · Pull Request #199 · python-lsp/python-lsp-server](ghttps://github.com/python-lsp/python-lsp-server/pull/199)
nvim [BirdeeHub/nixCats-nvim: A Lua-natic nix user's Neovim Flake, kickstart.nvim style](https://github.com/BirdeeHub/nixCats-nvim)
nvim [DIY quality of life improvements - Anton Kastritskiy - Vimconf 2021 - YouTube](ghttps://www.youtube.com/watch?v%3DpkyurqHhlXI)
nvim [Data Science Workflow with neovim - Watch Me Do Kaggle House Regression EDA (Part 1) - YouTube](ghttps://www.youtube.com/watch?v%3DV7vVq0fjAYs)
nvim [Ditching PyCharm in favor of NeoVim : r/neovim](ghttps://www.reddit.com/r/neovim/comments/m0o9eg/ditching_pycharm_in_favor_of_neovim/)
nvim [Extmarks Example? : r/neovim](https://www.reddit.com/r/neovim/comments/ism2jl/extmarks_example/)
nvim [Features — rope 1.12.0 documentation](ghttps://rope.readthedocs.io/en/latest/rope.html)
nvim [Getting Started with VIM as a Python Editor - YouTube](ghttps://www.youtube.com/watch?v%3DHKJUILUvkGk)
nvim [GitHub - BirdeeHub/nixCats-nvim: A Lua-natic nix user's Neovim Flake, - Announcements - NixOS Discourse](https://discourse.nixos.org/t/github-birdeehub-nixcats-nvim-a-lua-natic-nix-users-neovim-flake/38956/6)
nvim [Here we go... | Rocks Devlog #1 - YouTube](https://m.youtube.com/watch?v%3DJDTy5w7AriU)** 
nvim [How do you manage rename/file move with auto refactoring : r/neovim](ghttps://www.reddit.com/r/neovim/comments/ywoejc/how_do_you_manage_renamefile_move_with_auto/)
nvim [How to replace a character by a newline in Vim - Stack Overflow](ghttps://stackoverflow.com/questions/71323/how-to-replace-a-character-by-a-newline-in-vim)
nvim [I Read the Entire Neovim User Manual - YouTube](https://www.youtube.com/watch?v%3DrT-fbLFOCy0)
nvim [Install Cody for Neovim - Sourcegraph docs](https://docs.sourcegraph.com/cody/overview/install-neovim)
nvim [Introduction - Vim-Clap Documentation](https://liuchengxu.github.io/vim-clap/)
nvim [Let's build a Neovim Distro - YouTube](ghttps://www.youtube.com/watch?v%3DvTalfnXiHY4)
nvim [Manu`s website | Configure Nvim with Lua: Plugin/package management (3)](ghttps://manujsdev.com/blog/config-nvim-with-lua-plugin-package-management)
nvim [Markdown Writing and Previewing in Neovim -- A Complete Guide - jdhao's digital space](https://jdhao.github.io/2019/01/15/markdown_edit_preview_nvim/%23google_vignette)
nvim [Markdown Writing and Previewing in Neovim -- A Complete Guide - jdhao's digital space](https://jdhao.github.io/2019/01/15/markdown_edit_preview_nvim/)
nvim [My ultimate Neovim configuration for Python development | Mohammad M. Ramezanpour](ghttps://ramezanpour.net/post/2021/04/24/My-ultimate-Neovim-configuration-for-Python-development)
nvim [Neovim basics for Ruby and Rails development with LSP, NERDTree, Teles](https://anchietajunior.hashnode.dev/neovim-for-ruby-with-lsp-nerdtree-telescope)
nvim [Neovim for Beginners — Refactoring | by alpha2phi | Medium](ghttps://archive.ph/kcEUk)
nvim [Neuron Zettelkasten](https://neuron.zettel.page/) 
nvim [NixNeovim/NixNeovim: Configure Neovim with Nix!](https://github.com/NixNeovim/NixNeovim)
nvim [Perl-Based Neovim Plugins, part 1: Run Dat Service : Hacking thy fearful symmetry](https://techblog.babyl.ca/entry/neovim-plugins-part-1/)
nvim [Plans & Pricing | Tabnine](https://www.tabnine.com/pricing)
nvim [Pyflyby — pyflyby 1.9.0 documentation](ghttps://deshaw.github.io/pyflyby/%23quick-start-tidy-imports)
nvim [Question/feature request: Auto-import with pyright LSP · Issue #426 · hrsh7th/nvim-cmp](ghttps://github.com/hrsh7th/nvim-cmp/issues/426)
nvim [Refactoring - Neovim Wiki](https://zchee.github.io/neovim-wiki/Refactoring/)
nvim [The ULTIMATE Git workflow using Neovim's Fugitive, Telescope & Git-Signs! - YouTube](ghttps://www.youtube.com/watch?v%3DIyBAuDPzdFY)
nvim [The perfect Neovim setup for Python - YouTube](ghttps://www.youtube.com/watch?v%3D4BnVeOUeZxc%26t%3D336s)
nvim [ThePrimeagen/refactoring.nvim: The Refactoring library based off the Refactoring book by Martin Fowler](ghttps://github.com/ThePrimeagen/refactoring.nvim?tab%3Dreadme-ov-file%23refactoring-features)
nvim [Transform Your Neovim into a IDE: A Step-by-Step Guide - MartinLwx's Blog](https://martinlwx.github.io/en/config-neovim-from-scratch/)
nvim [Unisay/purescript-lua Ideas · Discussions · GitHub](https://github.com/Unisay/purescript-lua/discussions/categories/ideas)
nvim [Using Neovim as an IDE for Python | David Spencer](ghttps://www.davidspencer.xyz/posts/neovim-as-an-ide-python/)
nvim [Vim Motions for absolute beginners!!! - YouTube](https://www.youtube.com/watch?v%3DlWTzqPfy1gE)
nvim [Why do I use Neovim? - YouTube](https://www.youtube.com/watch?v%3Dby0E9Nm2Eco)
nvim [[r/neovim] [Fzf-Lua] Awesome Colorschemes - the timewaster you never knew you wanted](https://www.reddit.com/r/neovim/s/bIEM8GEtP7)
nvim [compile plugins to lua bytecode · Issue #614 · wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim/issues/614)
nvim [dotfiles/config/nvim at main · alpha2phi/dotfiles](ghttps://github.com/alpha2phi/dotfiles/tree/main/config/nvim)
nvim [glacambre/firenvim: Embed Neovim in Chrome, Firefox & others.](ghttps://github.com/glacambre/firenvim)
nvim [grapple.nvim](https://www.reddit.com/r/neovim/s/OBUYxjRoXb)
nvim [http://libgen.rs/search.php?req=neovim&open=0&res=25&view=simple&phrase=1&column=def](http://libgen.rs/search.php?req%3Dneovim%26open%3D0%26res%3D25%26view%3Dsimple%26phrase%3D1%26column%3Ddef)
nvim [https://blog.ezeanyinabia.com/integrating-tuis-into-neovim/](https://blog.ezeanyinabia.com/integrating-tuis-into-neovim/)
nvim [https://cloud.thesola.io/git/thesola10/nvim-config](https://cloud.thesola.io/git/thesola10/nvim-config)
nvim [https://dotfyle.com/this-week-in-neovim/65](https://dotfyle.com/this-week-in-neovim/65)
nvim [https://git.sr.ht/~rbdr/nota.nvim](https://git.sr.ht/~rbdr/nota.nvim)
nvim [https://github.com/2KAbhishek/tdo.nvim](https://github.com/2KAbhishek/tdo.nvim)
nvim [https://github.com/2kabhishek/tdo](https://github.com/2kabhishek/tdo)
nvim [https://github.com/AckslD/swenv.nvim](https://github.com/AckslD/swenv.nvim)
nvim [https://github.com/Dan7h3x/NvimPy](https://github.com/Dan7h3x/NvimPy)
nvim [https://github.com/EnriqueBravo115/nvim](https://github.com/EnriqueBravo115/nvim)
nvim [https://github.com/JackDerksen/viis-lazyvim](https://github.com/JackDerksen/viis-lazyvim)
nvim [https://github.com/JackDerksen/viis-lazyvim](https://github.com/JackDerksen/viis-lazyvim)
nvim [https://github.com/Nedra1998/nvim-mdlink](https://github.com/Nedra1998/nvim-mdlink)
nvim [https://github.com/NixOS/nixpkgs/blob/master/doc/languages-frameworks/vim.section.md](https://github.com/NixOS/nixpkgs/blob/master/doc/languages-frameworks/vim.section.md)
nvim [https://github.com/NormalNvim/NormalNvim](https://github.com/NormalNvim/NormalNvim)
nvim [https://github.com/Selyss/mind.nvim](https://github.com/Selyss/mind.nvim) 
nvim [https://github.com/SuperBo/fugit2.nvim](https://github.com/SuperBo/fugit2.nvim)
nvim [https://github.com/artemave/workspace-diagnostics.nvim](https://github.com/artemave/workspace-diagnostics.nvim)
nvim [https://github.com/backdround/global-note.nvim](https://github.com/backdround/global-note.nvim)
nvim [https://github.com/benlubas/image-save.nvim](https://github.com/benlubas/image-save.nvim)
nvim [https://github.com/benlubas/molten-nvim/blob/main/docs/Notebook-Setup.md](https://github.com/benlubas/molten-nvim/blob/main/docs/Notebook-Setup.md)
nvim [https://github.com/cbochs/grapple.nvim](https://github.com/cbochs/grapple.nvim)
nvim [https://github.com/chrishrb/gx.nvim](https://github.com/chrishrb/gx.nvim)
nvim [https://github.com/daUnknownCoder/NeutronVim](https://github.com/daUnknownCoder/NeutronVim)
nvim [https://github.com/datsfilipe/datsnvim](https://github.com/datsfilipe/datsnvim)
nvim [https://github.com/dlvhdr/gh-blame.nvim](https://github.com/dlvhdr/gh-blame.nvim)
nvim [https://github.com/gmr458/nvim](https://github.com/gmr458/nvim)
nvim [https://github.com/goolord/alpha-nvim/blob/41283fb402713fc8b327e60907f74e46166f4cfd/lua%2Falpha.lua#L780](https://github.com/goolord/alpha-nvim/blob/41283fb402713fc8b327e60907f74e46166f4cfd/lua%252Falpha.lua%23L780)
nvim [https://github.com/grapp-dev/nui-components.nvim](ghttps://github.com/grapp-dev/nui-components.nvim)
nvim [https://github.com/gsuuon/model.nvim](https://github.com/gsuuon/model.nvim)
nvim [https://github.com/hrsh7th/nvim-insx](https://github.com/hrsh7th/nvim-insx) 
nvim [https://github.com/icholy/lsplinks.nvim](https://github.com/icholy/lsplinks.nvim)
nvim [https://github.com/jamibear/neovim.nix/tree/main](https://github.com/jamibear/neovim.nix/tree/main)
nvim [https://github.com/jghauser/kitty-runner.nvim](https://github.com/jghauser/kitty-runner.nvim)
nvim [https://github.com/kreatoo/dots/blob/master/main%2Fnvim%2Finit.lua](https://github.com/kreatoo/dots/blob/master/main%252Fnvim%252Finit.lua)
nvim [https://github.com/kuznetsss/delegate.nvim](https://github.com/kuznetsss/delegate.nvim)
nvim [https://github.com/leet0rz/barebone-nvim/blob/main/init.lua#L63-L113](https://github.com/leet0rz/barebone-nvim/blob/main/init.lua%23L63-L113)
nvim [https://github.com/lukas-reineke/headlines.nvim/releases/tag/v4.0.0](https://github.com/lukas-reineke/headlines.nvim/releases/tag/v4.0.0)
nvim [https://github.com/lukas-reineke/headlines.nvim](https://github.com/lukas-reineke/headlines.nvim)
nvim [https://github.com/marco-souza/term.nvim](https://github.com/marco-souza/term.nvim)
nvim [https://github.com/nvim-neo-tree/neo-tree.nvim/wiki/Recipes#open-with-system-viewer](https://github.com/nvim-neo-tree/neo-tree.nvim/wiki/Recipes%23open-with-system-viewer)
nvim [https://github.com/nvim-neotest/neotest/discussions/204](https://github.com/nvim-neotest/neotest/discussions/204)
nvim [https://github.com/nvim-telescope/telescope-file-browser.nvim](https://github.com/nvim-telescope/telescope-file-browser.nvim)
nvim [https://github.com/olimorris/codecompanion.nvim](ghttps://github.com/olimorris/codecompanion.nvim)
nvim [https://github.com/orhnk/vimacs](https://github.com/orhnk/vimacs)
nvim [https://github.com/otavioschwanck/arrow.nvim](ghttps://github.com/otavioschwanck/arrow.nvim)
nvim [https://github.com/otavioschwanck/arrow.nvim](https://github.com/otavioschwanck/arrow.nvim)
nvim [https://github.com/rgroli/other.nvim](https://github.com/rgroli/other.nvim)
nvim [https://github.com/sakhnik/nvim-gdb?tab=readme-ov-file](https://github.com/sakhnik/nvim-gdb?tab%3Dreadme-ov-file)
nvim [https://github.com/sontungexpt/stinvim](https://github.com/sontungexpt/stinvim)
nvim [https://github.com/tamton-aquib/keys.nvim](https://github.com/tamton-aquib/keys.nvim)
nvim [https://github.com/tanloong/interlaced.nvim](https://github.com/tanloong/interlaced.nvim) partext
nvim [https://github.com/thallada/farout.nvim](https://github.com/thallada/farout.nvim)
nvim [https://github.com/wlemuel/vim-tldr](https://github.com/wlemuel/vim-tldr)
nvim [https://github.com/wochap/nvim](https://github.com/wochap/nvim)
nvim [https://hiphish.github.io/blog/2024/02/01/introducing-yo-dawg-nvim/](https://hiphish.github.io/blog/2024/02/01/introducing-yo-dawg-nvim/)
nvim [https://stackoverflow.com/questions/73841647/in-neovim-vim-how-to-know-all-used-key-combination](https://stackoverflow.com/questions/73841647/in-neovim-vim-how-to-know-all-used-key-combination)
nvim [https://vim-bootstrap.com/](https://vim-bootstrap.com/)
nvim [https://vim-racer.com/](ghttps://vim-racer.com/)
nvim [https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/](https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/)
nvim [https://willcodefor.beer/posts/keyvim](https://willcodefor.beer/posts/keyvim)
nvim [https://www.reddit.com/r/neovim/comments/1ak5lvd/tdonvim_new_plugin_for_simple_notetaking_system/](https://www.reddit.com/r/neovim/comments/1ak5lvd/tdonvim_new_plugin_for_simple_notetaking_system/)
nvim [https://www.reddit.com/r/neovim/s/2j96StuexD](https://www.reddit.com/r/neovim/s/2j96StuexD)
nvim [https://www.reddit.com/r/neovim/s/3gCKdjdKTT](ghttps://www.reddit.com/r/neovim/s/3gCKdjdKTT)
nvim [https://www.reddit.com/r/neovim/s/6axYpBTG07](https://www.reddit.com/r/neovim/s/6axYpBTG07) building ui forms with nui
nvim [https://www.reddit.com/r/neovim/s/6nuivNQJII](https://www.reddit.com/r/neovim/s/6nuivNQJII)
nvim [https://www.reddit.com/r/neovim/s/7T90167Lyd](https://www.reddit.com/r/neovim/s/7T90167Lyd)
nvim [https://www.reddit.com/r/neovim/s/7T90167Lyd](https://www.reddit.com/r/neovim/s/7T90167Lyd) nvim
nvim [https://www.reddit.com/r/neovim/s/KSnn96S3co](https://www.reddit.com/r/neovim/s/KSnn96S3co) LPeg in nvim
nvim [https://www.reddit.com/r/neovim/s/KXjK3gou0N](https://www.reddit.com/r/neovim/s/KXjK3gou0N) cfg
nvim [https://www.reddit.com/r/neovim/s/OBUYxjRoXb](https://www.reddit.com/r/neovim/s/OBUYxjRoXb)
nvim [https://www.reddit.com/r/neovim/s/Rkn9or93JY](https://www.reddit.com/r/neovim/s/Rkn9or93JY)
nvim [https://www.reddit.com/r/neovim/s/TX9JxTTEqW](https://www.reddit.com/r/neovim/s/TX9JxTTEqW) nvim
nvim [https://www.reddit.com/r/neovim/s/W40AIzWz0K](https://www.reddit.com/r/neovim/s/W40AIzWz0K) markdown heading colors
nvim [https://www.reddit.com/r/neovim/s/kBigREp75H](https://www.reddit.com/r/neovim/s/kBigREp75H)
nvim [https://www.reddit.com/r/neovim/s/kBigREp75H](https://www.reddit.com/r/neovim/s/kBigREp75H)
nvim [https://www.reddit.com/r/neovim/s/qZHhLu4kQo](https://www.reddit.com/r/neovim/s/qZHhLu4kQo) plugin optimization tips
nvim [https://www.reddit.com/r/neovim/s/vGdtXxBbjj](https://www.reddit.com/r/neovim/s/vGdtXxBbjj) retrospect.nvim
nvim [https://www.reddit.com/r/vim/comments/vwhdpa/way_to_list_internalbuiltin_vim_keybindings/?rdt=50098](https://www.reddit.com/r/vim/comments/vwhdpa/way_to_list_internalbuiltin_vim_keybindings/?rdt%3D50098)
nvim [https://www.reddit.com/r/vimporn/s/JEiYy98Fcb](https://www.reddit.com/r/vimporn/s/JEiYy98Fcb) nvim
nvim [inshellisense](https://github.com/microsoft/inshellisense)
nvim [jdhao/nvim-config: A modern Neovim configuration with full battery for Python, Lua, C++, Markdown, LaTeX, and more...](ghttps://github.com/jdhao/nvim-config)
nvim [jdhao/nvim-config: A modern Neovim configuration with full battery for Python, Lua, C++, Markdown, LaTeX, and more...](ghttps://github.com/jdhao/nvim-config?tab%3Dreadme-ov-file)
nvim [mgedmin/python-imports.vim: Vim plugin that adds Python import statements semi-automatically](ghttps://github.com/mgedmin/python-imports.vim)
nvim [nanozuki/tabby.nvim: A declarative, highly configurable, and neovim style tabline plugin. Use your nvim tabs as a workspace multiplexer!](https://github.com/nanozuki/tabby.nvim/)
nvim [neovim nix](https://www.reddit.com/r/NixOS/s/DwuJoNo5Si)
nvim [nix-community/nixvim: Configure Neovim with Nix! [maintainer=@pta2002, @traxys, @GaetanLepage]](https://github.com/nix-community/nixvim)
nvim [nvim-pack/nvim-spectre: Find the enemy and replace them with dark power.](ghttps://github.com/nvim-pack/nvim-spectre)
nvim [precompile lua code for neovim at DuckDuckGo](https://duckduckgo.com/?q%3Dprecompile%2Blua%2Bcode%2Bfor%2Bneovim%26ia%3Dweb)
nvim [python-lsp-server/docs/autoimport.md at develop · python-lsp/python-lsp-server](ghttps://github.com/python-lsp/python-lsp-server/blob/develop/docs/autoimport.md)
nvim [python-lsp/python-lsp-server: Fork of the python-language-server project, maintained by the Spyder IDE team and the community](ghttps://github.com/python-lsp/python-lsp-server)
nvim [sagedemage/neovim-config: My config file for Neovim](ghttps://github.com/sagedemage/neovim-config)
nvim [smjonas/inc-rename.nvim: Incremental LSP renaming based on Neovim's command-preview feature.](https://github.com/smjonas/inc-rename.nvim)
nvim [sourcegraph/sg.nvim: The official Sourcegraph/Cody plugin for Neovim](https://github.com/sourcegraph/sg.nvim)
nvim [wakeLanaka/refactor.nvim: Refactoring for neovim](https://github.com/wakeLanaka/refactor.nvim)
nvim [willothy/flatten.nvim: Open files and command output from wezterm, kitty, and neovim terminals in your current neovim instance](https://github.com/willothy/flatten.nvim)
nvim [wookayin/vim-autoimport: A vim plugin for adding import statements (for python and more) without LSP](ghttps://github.com/wookayin/vim-autoimport)
nvim idea: colorvar.nvim: plugin to extend colorizer to also color variable names referring to color values
nvim most lightweight language server [](https://www.reddit.com/r/neovim/s/kBigREp75H)
nvim most lightweight language server [reddit link](https://www.reddit.com/r/neovim/s/kBigREp75H)
nvim nix py python neovim nixos [](https://www.reddit.com/r/NixOS/s/bUsuKtHM9W)
nvim norg Norg-Tutorial/norg_tutorial.md at main · pysan3/Norg-Tutorial
nyxt [How-to Theme Nyxt (the easy way) - YouTube](ghttps://m.youtube.com/watch?v%3DtaNNvTWL3zo)
nyxt [https://github.com/aartaka/nyxt-config](https://github.com/aartaka/nyxt-config)
nyxt [https://github.com/search?q=nyxt&type=repositories&s=updated&o=desc](https://github.com/search?q%3Dnyxt%26type%3Drepositories%26s%3Dupdated%26o%3Ddesc) 
nyxt [https://github.com/search?q=nyxt+config&type=repositories&s=updated&o=desc](https://github.com/search?q%3Dnyxt%2Bconfig%26type%3Drepositories%26s%3Dupdated%26o%3Ddesc) 
nyxt [https://www.aartaka.me.eu.org/nyxt-to-surf](https://www.aartaka.me.eu.org/nyxt-to-surf)
nyxt [https://www.reddit.com/r/Nyxt/comments/18ir89v/how_to_bind_custom_hotkeys_in_nyxt/](https://www.reddit.com/r/Nyxt/comments/18ir89v/how_to_bind_custom_hotkeys_in_nyxt/) 
nyxt [https://www.reddit.com/r/Nyxt/s/qMGTPsBpek](https://www.reddit.com/r/Nyxt/s/qMGTPsBpek) Nyxt dark
pers [Elteoremadebeethoven (Alexander Vázquez)](https://github.com/Elteoremadebeethoven) (manim)
perso  [https://xuefuzhao.github.io/](ghttps://xuefuzhao.github.io/)
perso [Archives - Eli Bendersky's website](https://eli.thegreenplace.net/archives/all)
perso [ArrynDoesTech - YouTube](https://www.youtube.com/@arryndoestech)
perso [Chris Portela - Cloud, Software, and Photography](https://www.chrisportela.com/)
perso [Chronicles of Weird ThingsChronicae Novis Rebus](https://chronicles.mad-scientist.club/) (Nix etc)
perso [Emma Böcker (@boecker@chaos.social) - rheinneckar.social](https://rheinneckar.social/@boecker@chaos.social)
perso [Ephoto :: Stephen Houston — Software Engineer](https://www.smhouston.us/ephoto/)
perso [Hugo Barrera's site](https://whynothugo.nl/)
perso [Monster](https://monster.codeberg.page/)
perso [Projects - Eli Bendersky's website](https://eli.thegreenplace.net/pages/projects)
perso [Projects - Federico Terzi - A Software Engineering Journey](https://federicoterzi.com/projects)
perso [Victor Zheng](https://victor-zheng.com/)
perso [ansidev's blog | Le Minh Tri | Substack](https://ansidev.substack.com/p/wezterm-cheatsheet)
perso [bespinian Blog](https://blog.bespinian.io/)
perso [bespinian Blog](https://blog.bespinian.io/)
perso [https://github.com/SergioRibera](https://github.com/SergioRibera)
perso [https://radicle.xyz/](ghttps://radicle.xyz/)
perso [https://www.linkedin.com/in/manuel-epp/](https://www.linkedin.com/in/manuel-epp/)
perso [https://www.youtube.com/@devaslife](ghttps://www.youtube.com/@devaslife)
perso [https://www.youtube.com/@devopstoolbox](https://www.youtube.com/@devopstoolbox)
perso [https://www.youtube.com/@levonog](https://www.youtube.com/@levonog)
person [ansidev's blog](ghttps://ansidev.xyz/)
phone  [https://codeberg.org/XADE/LinuxDroid](https://codeberg.org/XADE/LinuxDroid)
pi [Jente Hidskes' website - A purpose-built Linux OS for my Raspberry Pi 3B+ home automation system](ghttps://www.hjdskes.nl/projects/rpi-linux/)
pi [RPI](http://libgen.rs/search.php?%26req%3Draspberry%2Bpi%26phrase%3D1%26view%3Dsimple%26column%3Ddef%26sort%3Dyear%26sortmode%3DDESC)
pi [https://forums.raspberrypi.com/viewtopic.php?t=312104](https://forums.raspberrypi.com/viewtopic.php?t%3D312104) Definitive guide to configure extremely lightweight GUI with Raspbian Lite + Openbox. - Raspberry Pi Forums
plt: C++ Lexilla, Lua Scintillua, Python pygments, Go Chroma, Rust Syntect, JavaScript Highlight.js / Prism.js
plt: Make binaries available on Github page.
plt: Write PLT static generation code in Go, Rust, Python, Lua, JavaScript, C++. 
plt: how do RosettaCode, XinY, Hyperpolyglot, X by Example, etc. do it?
pod [https://corteximplant.com/@0x17/111290089898902545](https://corteximplant.com/@0x17/111290089898902545) Continuous Delivery SparkFabrikProgrammiersprachen-Jungle
pod [https://open.spotify.com/episode/1LaVc3ZMVUvqjoshcK7End?si=iyrnT-BmSeq6QDhkV9IZTw&nd=1&dlsi=6ff138ecb5b34a78](https://open.spotify.com/episode/1LaVc3ZMVUvqjoshcK7End?si%3DiyrnT-BmSeq6QDhkV9IZTw%26nd%3D1%26dlsi%3D6ff138ecb5b34a78)
pod [https://open.spotify.com/episode/21iNpJ2UchuxYDtTAnFQhN?si=RiEVUOkRSQu83wCeHYMDsA](https://open.spotify.com/episode/21iNpJ2UchuxYDtTAnFQhN?si%3DRiEVUOkRSQu83wCeHYMDsA)
pod [https://open.spotify.com/episode/3D9JylFdWfv9BML43Ji2UO?si=WP-RCcGjSxCdajisQa-IMA](https://open.spotify.com/episode/3D9JylFdWfv9BML43Ji2UO?si%3DWP-RCcGjSxCdajisQa-IMA)  ocaml
pod [https://open.spotify.com/episode/41TVMxu7B4c9rLaDLrvTWn?si=Q-yj554JS-q4rlwmn9j6wQ](https://open.spotify.com/episode/41TVMxu7B4c9rLaDLrvTWn?si%3DQ-yj554JS-q4rlwmn9j6wQ) pod flow
pod [https://open.spotify.com/episode/58B36EcM3qNdOgZrdyUVgt?si=KzeRRQ6dSPGVTXK0sudeKw&nd=1&dlsi=ff4024500a1240c6](https://open.spotify.com/episode/58B36EcM3qNdOgZrdyUVgt?si%3DKzeRRQ6dSPGVTXK0sudeKw%26nd%3D1%26dlsi%3Dff4024500a1240c6) AI pod italiano
pod [https://open.spotify.com/show/12x5cqwBBQjoJo8RcOnyI5?si=b0hH15dDQgOVXKNL7jjMtQ](https://open.spotify.com/show/12x5cqwBBQjoJo8RcOnyI5?si%3Db0hH15dDQgOVXKNL7jjMtQ)
proc [https://thenewstack.io/dev-news-vite-rust-ifies-roc-language-js-framework-sdks/](https://thenewstack.io/dev-news-vite-rust-ifies-roc-language-js-framework-sdks/) 
prog  [Category:Programming language concepts - Wikipedia](https://en.wikipedia.org/wiki/Category:Programming_language_concepts) 
prog  [Getting started - Command Line Applications in Rust](https://rust-cli.github.io/book/index.html) 
prog  [Golang for Python Devs - CodeRed](https://www.coderedcorp.com/blog/golang-for-python-devs/) 
prog  [Introduction to Python Threads](http://troubleshooters.com/codecorn/python/threads_intro.htm) 
prog  [Introdução à programação em Julia](https://juliaintro.github.io/JuliaIntroBR.jl/) 
prog  [John Scholes - APL Wiki](https://aplwiki.com/wiki/John_Scholes)
prog  [Laurence Tratt: Dynamically Typed Languages](https://tratt.net/laurie/research/pubs/html/tratt__dynamically_typed_languages/) 
prog  [Laurence Tratt: Selected publications](https://tratt.net/laurie/research/pubs/) 
prog  [Linters and formatters — Essential Python Tools 3.7 documentation](https://books.agiliq.com/projects/essential-python-tools/en/latest/linters.html) 
prog  [On Lisp](https://sep.turbifycdn.com/ty/cdn/paulgraham/onlisp.pdf?t%3D1688221954%26) 
prog  [On Understanding Types, Data Abstraction, and Polymorphism](http://lucacardelli.name/Papers/OnUnderstanding.A4.pdf) 
prog  [Programming language - Wikipedia](https://en.wikipedia.org/wiki/Programming_language) 
prog  [Template:Data types - Wikipedia](https://en.wikipedia.org/wiki/Template:Data_types) 
prog  [The Rust Programming Language - The Rust Programming Language](https://doc.rust-lang.org/book/title-page.html) 
prog  [Type Systems.fm - TypeSystems.pdf](http://lucacardelli.name/Papers/TypeSystems.pdf) :w(https://tratt.net/laurie/research/pubs/html/tratt__dynamically_typed_languages/)
prog  [Types and Programming Languages - Wikipedia](https://en.wikipedia.org/wiki/Types_and_Programming_Languages) 
prog  [Typing — pysheeet](https://www.pythonsheets.com/notes/python-typing.html) 
prog  [Usage instructions for pypi-command-line - pypi-command-line](https://wasi-master.github.io/pypi-command-line/usage/) 
prog  [Welcome! — Python for designers](https://pythonfordesigners.com/)
prog  [Why Rust is the most admired language among developers - The GitHub Blog](https://github.blog/2023-08-30-why-rust-is-the-most-admired-language-among-developers/) 
prog  [Writing an OS in Rust](https://os.phil-opp.com/) 
prog  [https://pubs.opengroup.org/onlinepubs/9699919799/](https://pubs.opengroup.org/onlinepubs/9699919799/)
prog  [https://thenewstack.io/dev-news-vite-rust-ifies-roc-language-js-framework-sdks/](https://thenewstack.io/dev-news-vite-rust-ifies-roc-language-js-framework-sdks/) 
prog  [https://www.reddit.com/r/functionalprogramming/s/CbVacarWdY](https://www.reddit.com/r/functionalprogramming/s/CbVacarWdY) functional and typing
prog  [juliaintro](https://juliaintro.github.io/JuliaIntroBR.jl/)
prog  [lincc-frameworks/python-project-template: LINCC Frameworks scaffolding for Python project best practices](https://github.com/lincc-frameworks/python-project-template)
prog  [redas24/idiomatic.js: Principles of Writing Consistent, Idiomatic JavaScript](https://github.com/redas24/idiomatic.js) 
prog  [tqdm/tqdm: :zap: A Fast, Extensible Progress Bar for Python and CLI](https://github.com/tqdm/tqdm)
prog  [xkcd: Python Environment](https://xkcd.com/1987/) 
prog  bücher19133390 Wcm 2 JAVA Bloc 24.11.2023 HBloch, Joshua: Effective Java10031889 Oel 5 Lang 24.11.2023 HLangenscheidt Taschenwörterbuch...19112688 Tdk Sigg 24.11.2023 HSigg, Timm: Grundlagen der Differenzialgleichunge...20391708 15 Garc 24.11.2023 HGarcía Márquez, G...: Cien anos de soledad13056508 Oel 2 Meye 24.11.2023 HMeyer, Thomas: Grund- und Aufbauwortschatz Griechisch21177628 Wcm 2 JAVASCRIPT Hor 24.11.2023 HHorstmann, Cay: JavaScript für Ungeduldige21218611 Oem 5 Lang 24.11.2023 HLangenscheidt Taschenwörterbuch Latein22102016 Mcl 1 Csik 24.11.2023 HCsikszentmihalyi,...: Flow20367667 Wcm 2 KOTLIN Szwi 24.11.2023 HSzwillus, Karl: Kotlin16123449 Tcn Jaen 24.11.2023 HJänich, Klaus: Lineare Algebra19340869 Mcl 1 Hamm 24.11.2023 HHammer, Matthias: Micro Habits08099468 17 Prim 24.11.2023 HPrima lectio15283163 Tcn Raes 24.11.2023 HRäsch, Thoralf: Lineare Algebra II21138741 Wcm 2 JAVASCRIPT Hav 24.11.2023 HHaverbeke, Marijn: JavaScript
prog ## **[Making Snake Boot Sector Game in Assembly (x86) - YouTube](https://www.youtube.com/watch?v%3DtHO5x_Ha6pE)**
prog ## **wezterm-python-pdf-reader - write a terminal PDF reader for wezterm using python, matplotlib, and matplotlib, together with python pdf library and matplotlib-backend-wezterm**
prog History of X11 [yt](https://www.youtube.com/watch?v%3DR-N-fgKWYGU)
prog [8 ways JavaScript is just... different. - YouTube](ghttps://www.youtube.com/watch?v%3DkYAe7qDGOJw)
prog [Bash Reference Manual](https://www.gnu.org/software/bash/manual/bash.html%23Pattern-Matching)
prog [Basic Syntax | Markdown Guide](https://www.markdownguide.org/basic-syntax/%23blockquotes-1)
prog [Become a bash scripting pro - full course - YouTube](ghttps://www.youtube.com/watch?v%3D4ygaA_y1wvQ)
prog [Computer Networking For LANs To WANs: Hardware, Software And security](http://libgen.rs/book/index.php?md5%3DA5D01C0792398CF7CD53977AFA32A2B2) Groups book
prog [Dash Documentation & User Guide | Plotly](https://dash.plotly.com/)
prog [Dev](https://chat.openai.com/c/c41a9650-39c9-4976-ac60-7ee9b054e3da)
prog [Erlang in 100 Seconds - YouTube](ghttps://www.youtube.com/watch?v%3DM7uo5jmFDUw)
prog [Every programming language explained in 15 minutes | Prime Reacts - YouTube](https://www.youtube.com/watch?v%3DjQiYW3RXkFU)
prog [ForSyDe | A Methodology for Formal System Design](ghttps://forsyde.github.io/)
prog [Gleam](ghttps://gleam.run/)
prog [How Lisp Became God's Own Programming Language](ghttps://twobithistory.org/2018/10/14/lisp.html)
prog [How to Design a Network Messaging Protocol! - YouTube](https://www.youtube.com/watch?v%3DkH7P1ZX44DQ)
prog [How to Write a Linux Daemon from Start to Finish! - YouTube](https://www.youtube.com/watch?v%3D9nDYYc_7sKs)
prog [Kubernetes Primer: Fundamentals - Chetan Bhasin](https://chetanbhasin.com/articles/kubernetes-primer-fundamentals)
prog [Lambda - Haxe - The Cross-platform Toolkit](https://haxe.org/manual/std-Lambda.html)
prog [Learn Backend Development the Fun Way | Boot.dev](https://www.boot.dev/)
prog [Learn Emacs Lisp in 30 Minutes - YouTube](ghttps://www.youtube.com/watch?v%3D1y__2IK-aLM)
prog [Library Genesis: Alberto Pettorossi - Techniques for Searching, Parsing, and Matching](https://libgen.is/book/index.php?md5%3D2784D2D9DF8E02BFA17558101113F5CD)
prog [Library Genesis: Andreas M. Antonopoulos, David A. Harding - Mastering Bitcoin: Programming the Open Blockchain](http://libgen.rs/book/index.php?md5%3D89C551A4BE0DDE91D90110C199597E5C)
prog [Library Genesis: Andrew S. Tanenbaum, David J. Wetherall, D. Maggiorini (editor), S. Gaito (editor) - Reti di calcolatori. Ediz. Mylab. Con aggiornamento online. Con ebook](http://libgen.rs/book/index.php?md5%3D9219C1ECD26808B82C69E8642F43A00E)# Untitled
prog [Library Genesis: Bruno R. Preiss - Lexical Analysis and Parsing using C++](https://libgen.is/book/index.php?md5%3DD20D37C0D1FB9076D518DF519162B7B4)
prog [Library Genesis: Bunt Harry, Nijholt Anton (auth.), Harry Bunt, Anton Nijholt (eds.) - Advances in Probabilistic and Other Parsing Technologies](https://libgen.is/book/index.php?md5%3D21B83325AF2B2A3829615464C136E3CE)
prog [Library Genesis: Bunt, Harry C(Editor);Merlo, Paola(Editor);Nivre, Joakim(Editor) - Trends In Parsing Technology: Dependency Parsing, Domain Adaptation, And Deep Parsing (Text, Speech And Language Technology)](https://libgen.is/book/index.php?md5%3D1B1B9F8CF07980C83FB25A6E20AD5B0C)
prog [Library Genesis: Carlo Milanesi - Creative Projects for Rust Programmers: Build exciting projects on domains such as web apps, WebAssembly, games, and parsing](https://libgen.is/book/index.php?md5%3D623BEC88FB2B2FD627860A706828E8F4)
prog [Library Genesis: Charles N. Fischer, Ron K. Cytron, Richard J. LeBlanc - Crafting A Compiler](ghttps://libgen.rs/book/index.php?md5%3D3F7B11BCB59C91689586976AA9977305)
prog [Library Genesis: Christian Wagenknecht, Michael Hielscher (auth.) - Formale Sprachen, abstrakte Automaten und Compiler: Lehr- und Arbeitsbuch für Grundstudium und Fortbildung](ghttps://libgen.rs/book/index.php?md5%3D8AB97826A959A37179203BCB94BBF28D)
prog [Library Genesis: Dick Grune, Ceriel J.H. Jacobs - Parsing Techniques. A practical Guide](https://libgen.is/book/index.php?md5%3D926AD9324EC0FFA2D2EB46B5628E3C7D)
prog [Library Genesis: Greg L. Turnquist - Learning Spring Boot 3.0: Simplify the development of production-grade applications using Java and Spring, 3rd Edition](http://libgen.rs/book/index.php?md5%3D9953E1F476F1CE364CC84F0EAC717EE0)
prog [Library Genesis: James F. Kurose; Ángel Pérez de Madrid y Pablo; Carolina Mañoso Hierro; Keith W. Ross; Vuelapluma S.A. - Redes de computadoras: un enfoque descendente](http://libgen.rs/book/index.php?md5%3D4C4AFAC6E258C45AD9D31A148526BCB7)
prog [Library Genesis: Jeuring J., Swierstra D. - Grammars and parsing](https://libgen.is/book/index.php?md5%3D4986B6B30293A96D1436D7BA1C80CCDB)
prog [Library Genesis: Juha Hinkula - Full Stack Development with Spring Boot 3 and React: Build modern web applications using the power of Java, React, and TypeScript](http://libgen.rs/book/index.php?md5%3DE861A87D02E5B82C064DC1D72BDD8546)
prog [Library Genesis: K. Siva Prasad Reddy, Sai Upadhyayul - Beginning Spring Boot 3](http://libgen.rs/book/index.php?md5%3D83AC75188F58A8D90B790CB7BD7C7290)
prog [Library Genesis: Keith W. Ross James F. Kurose - Reti di calcolatori e internet. Un approccio top-down. Con aggiornamento online](http://libgen.rs/book/index.php?md5%3D075135A61CB90748F2014D59F181F3D3)
prog [Library Genesis: Magnus Larsson - Microservices with Spring Boot 3 and Spring Cloud: Build resilient and scalable microservices [Team-IRA] (True PDF)](http://libgen.rs/book/index.php?md5%3D4CBB659BC0F967BD6A4C0627D3252B23)
prog [Library Genesis: Mark Heckler - Spring Boot: Cloud-native Anwendungen mit Java und Kotlin erstellen](http://libgen.rs/book/index.php?md5%3DC99B527E7AB5F96BCCBF1C2C9665AA96)
prog [Library Genesis: Mark Heckler - Spring Boot: Up and Running - Building Cloud Native Java and Kotlin Applications](http://libgen.rs/book/index.php?md5%3D920B718A05F31B275CB39F0B323D7361)
prog [Library Genesis: Melanie Swan - Blockchain: Blueprint for a New Economy](http://libgen.rs/book/index.php?md5%3DB95D1E4464D572D397F0F60C47553391)
prog [Library Genesis: Moisés Macero García, Tarun Telang - Learn Microservices with Spring Boot 3: A Practical Approach Using Event-Driven Architecture, Cloud-Native Patterns, and Containerization](http://libgen.rs/book/index.php?md5%3D543C996C0AA16F9F7977975E81C93F02)
prog [Library Genesis: SOURABH SHARMA - Modern API Development with Spring 6 and Spring Boot 3: Design scalable, viable, and reactive APIs with REST, gRPC, and GraphQL](http://libgen.rs/book/index.php?md5%3DC91B962A5E4D8E5027DA678E2094EE71)
prog [Library Genesis: Somnath Musib - Spring Boot in Practice](http://libgen.rs/book/index.php?md5%3DFEE6FB20329F9A1DE12C72712E0A6818)
prog [Library Genesis: Thomas Vitale - Cloud Native Spring in Action with Spring Boot And Kubernetes](http://libgen.rs/book/index.php?md5%3DDBDD55CEAFC37000741371636011782D)
prog [Library Genesis: Thomas Vitale - Cloud Native Spring in Action: With Spring Boot and Kubernetes](http://libgen.rs/book/index.php?md5%3DE956A2261695849B83AE41AD386D6D87)
prog [Library Genesis: it-ebooks - Parsing Techniques A Practical Guide](https://libgen.is/book/index.php?md5%3DF90FC0FC737EB67CD983861028D7B380)
prog [Library Genesis: Марк Хеклер - Spring Boot по-быстрому](http://libgen.rs/book/index.php?md5%3D379F73AB35B38CA578B0E033F6EBB657)
prog [Library Genesis](ghttps://libgen.rs/search.php?%26req%3Dcompiler%26phrase%3D1%26view%3Dsimple%26column%3Ddef%26sort%3Dyear%26sortmode%3DDESC)
prog [Mastering Memory: Allocation Techniques in C, C++, and ARM Assembly - YouTube](ghttps://www.youtube.com/watch?v%3DHlUBE70h2C0)
prog [Modular Mathematics Series](http://libgen.is/search.php?req%3Dmodular%2Bmathematics%2Bseries%26open%3D0%26res%3D25%26view%3Dsimple%26phrase%3D1%26column%3Ddef) Mathematical Linguistics
prog [Parsing TeX into mathematics](https://libgen.is/book/index.php?md5%3D8A3560286D25DA895E17387406FEA865) Теория катигорий для программиста.pdf
prog [Rapid Learning for the 21st Century](http://www.troubleshooters.com/bookstore/rl21.htm)
prog [Resultados de búsqueda - Google Drive](https://drive.google.com/drive/search?q%3DMathematical%2520Linguistics) 
prog [Rules of Readability - Spring 2024 - YouTube](https://www.youtube.com/watch?v%3DlIIOrbYlRmU)
prog [S-Lang Programmer's Library](ghttps://www.jedsoft.org/slang/)# Untitled
prog [SoccerFun: Football simulation framework for teaching functional programming](ghttps://hackage.haskell.org/package/SoccerFun)
prog [Svelte UI Libraries Have Leveled Up - YouTube](https://m.youtube.com/watch?v%3DjwRqiCv6Z9k)** 
prog [Unisay/purescript-lua: Purescript compiler back-end for Lua](https://github.com/Unisay/purescript-lua)
prog [WHY IS THE STACK SO FAST? - YouTube](https://www.youtube.com/watch?v%3DN3o5yHYLviQ)
prog [forsyde-shallow: ForSyDe's Haskell-embedded Domain Specific Language.](ghttps://hackage.haskell.org/package/forsyde-shallow)
prog [https://bestofjs.org](https://bestofjs.org) 
prog [https://blog.logrocket.com/using-dioxus-rust-build-single-page-apps/](https://blog.logrocket.com/using-dioxus-rust-build-single-page-apps/) 
prog [https://blog.miguelgrinberg.com/post/microdot-yet-another-python-web-framework](https://blog.miguelgrinberg.com/post/microdot-yet-another-python-web-framework) 
prog [https://blog.yoshuawuyts.com/extending-rusts-effect-system/](https://blog.yoshuawuyts.com/extending-rusts-effect-system/)
prog [https://conservatory.scheme.org/schemers/Documents/Standards/R5RS/HTML/](https://conservatory.scheme.org/schemers/Documents/Standards/R5RS/HTML/) 
prog [https://dev.epicgames.com/documentation/en-us/uefn/verse-language-reference](ghttps://dev.epicgames.com/documentation/en-us/uefn/verse-language-reference)
prog [https://dev.to/bravinsimiyu/30-best-web-development-frameworks-for-2023-a-comprehensive-guide-512i](https://dev.to/bravinsimiyu/30-best-web-development-frameworks-for-2023-a-comprehensive-guide-512i) 
prog [https://discord.com/channels/834325286664929280/877900210297270272/1205164792327831623](https://discord.com/channels/834325286664929280/877900210297270272/1205164792327831623)
prog [https://duckduckgo.com/?q=best](https://duckduckgo.com/?q%3Dbest) framework for a small web service with user authentification and online payment&ko=-1&ia=web 
prog [https://fasterthanli.me/series/building-a-rust-service-with-nix/part-10#setting-up-direnv-and-nix-direnv](https://fasterthanli.me/series/building-a-rust-service-with-nix/part-10%23setting-up-direnv-and-nix-direnv)
prog [https://github.com/kushall09/the-art-of-command-line](https://github.com/kushall09/the-art-of-command-line) 
prog [https://github.com/savedra1/clipse](ghttps://github.com/savedra1/clipse)
prog [https://gleam.run/](https://gleam.run/)
prog [https://libgen.rs/book/index.php?md5=7F9996F3FFAC4C7429BF8013D8BA2D59](https://libgen.rs/book/index.php?md5%3D7F9996F3FFAC4C7429BF8013D8BA2D59) Interpreter in Go
prog [https://libgen.rs/book/index.php?md5=AB2EF57DCAAED64759B089E71BFDB58D](https://libgen.rs/book/index.php?md5%3DAB2EF57DCAAED64759B089E71BFDB58D) Compiler in Go
prog [https://libgen.rs/search.php?req=architecture+of+open-source&lg_topic=libgen&open=0&view=simple&res=25&phrase=1&column=def](https://libgen.rs/search.php?req%3Darchitecture%2Bof%2Bopen-source%26lg_topic%3Dlibgen%26open%3D0%26view%3Dsimple%26res%3D25%26phrase%3D1%26column%3Ddef)
prog [https://lisp-journey.gitlab.io/blog/oh-no-i-started-a-magit-like-plugin-for-the-lem-editor/](https://lisp-journey.gitlab.io/blog/oh-no-i-started-a-magit-like-plugin-for-the-lem-editor/)
prog [https://matklad.github.io/2023/03/26/zig-and-rust.html](https://matklad.github.io/2023/03/26/zig-and-rust.html)
prog [https://matklad.github.io/2023/03/26/zig-and-rust.html](https://matklad.github.io/2023/03/26/zig-and-rust.html) 
prog [https://opensource.com/article/20/11/cockpit-server-management](https://opensource.com/article/20/11/cockpit-server-management) 
prog [https://opensource.stackexchange.com/questions/10644/why-did-google-make-chromium-open-source](https://opensource.stackexchange.com/questions/10644/why-did-google-make-chromium-open-source)
prog [https://pkl-lang.org/blog/introducing-pkl.html](https://pkl-lang.org/blog/introducing-pkl.html)
prog [https://risingstars.js.org/2023/es](https://risingstars.js.org/2023/es) 
prog [https://vadimkravcenko.com/shorts/why-software-projects-fail/](ghttps://vadimkravcenko.com/shorts/why-software-projects-fail/)
prog [https://wiki.archlinux.org/title/Environment_variables](https://wiki.archlinux.org/title/Environment_variables)
prog [https://wordsandbuttons.online/the_real_cpp_killers.html](https://wordsandbuttons.online/the_real_cpp_killers.html)
prog [https://www.atlassian.com/git](https://www.atlassian.com/git)
prog [https://www.freecodecamp.org/news/learn-app-development-with-spring-boot-3/](https://www.freecodecamp.org/news/learn-app-development-with-spring-boot-3/)
prog [https://www.freecodecamp.org/news/learn-typescript-for-practical-projects](https://www.freecodecamp.org/news/learn-typescript-for-practical-projects)
prog [https://www.heise.de/news/Der-Generator-fuer-Programmiersprachen-Langium-wird-schneller-und-schlanker-9649361.html](https://www.heise.de/news/Der-Generator-fuer-Programmiersprachen-Langium-wird-schneller-und-schlanker-9649361.html)
prog [https://www.heise.de/news/Kotlin-macht-Ernst-mit-der-plattformuebergreifenden-Programmierung-9352485.html](https://www.heise.de/news/Kotlin-macht-Ernst-mit-der-plattformuebergreifenden-Programmierung-9352485.html) 
prog [https://www.heise.de/news/Python-3-13-Endlich-effizienteres-Multithreading-ohne-Global-Interpreter-Lock-9655663.html](https://www.heise.de/news/Python-3-13-Endlich-effizienteres-Multithreading-ohne-Global-Interpreter-Lock-9655663.html)
prog [https://www.modular.com/blog/how-to-be-confident-in-your-performance-benchmarking](https://www.modular.com/blog/how-to-be-confident-in-your-performance-benchmarking)
prog [https://www.modular.com/newsletters/modverse-weekly-27](https://www.modular.com/newsletters/modverse-weekly-27)
prog [https://www.modular.com/newsletters](https://www.modular.com/newsletters)
prog [https://www.reddit.com/r/functionalprogramming/s/fnze9msZuk](https://www.reddit.com/r/functionalprogramming/s/fnze9msZuk) Nevalang
prog [https://www.reddit.com/r/functionalprogramming/s/mk8sFg1O8I](https://www.reddit.com/r/functionalprogramming/s/mk8sFg1O8I) Python x Rust
prog [https://www.shuttle.rs/blog/2024/01/18/parsing-json-rust](https://www.shuttle.rs/blog/2024/01/18/parsing-json-rust) 
prog [hyprwm/hyprlang: The official implementation library for the hypr config language.](https://github.com/hyprwm/hyprlang) 
prog [kotlin](https://www.heise.de/news/Kotlin-macht-Ernst-mit-der-plattformuebergreifenden-Programmierung-9352485.html)
prog [markdown-guide/_basic-syntax/horizontal-rules.md at master · mattcone/markdown-guide](https://github.com/mattcone/markdown-guide/blob/master/_basic-syntax/horizontal-rules.md)
prog [programming languages - Is LISP still useful in today's world? Which version is most used? - Software Engineering Stack Exchange](ghttps://softwareengineering.stackexchange.com/questions/55284/is-lisp-still-useful-in-todays-world-which-version-is-most-used)
prog [psychology of computer programming at DuckDuckGo](https://duckduckgo.com/?q%3Dpsychology%2Bof%2Bcomputer%2Bprogramming%26ia%3Dweb)
prog [ts vs js](https://blog.logrocket.com/typescript-vs-purescript-not-all-compilers-are-created-equal-c16dadaa7d3e/)
prog bash  [The Confusion With Linux Shells - YouTube](https://www.youtube.com/watch?v%3D6FHd-rBM2Mc)
prog bash  [dylanaraps/pure-bash-bible: 📖 A collection of pure bash alternatives to external processes.](https://github.com/dylanaraps/pure-bash-bible) 
prog bash [Xargs Explained - YouTube](https://www.youtube.com/watch?v%3DHK1wAV9x4-A)
prog create pomodoro widget for ags
prog dash  [dash/dash.git - DASH Shell](https://git.kernel.org/pub/scm/utils/dash/dash.git)
prog go [Go is Surprisingly Easy - YouTube](https://www.youtube.com/watch?v%3DE7pxGyEcPNI)
prog humor [https://www.unixprogram.com/churchofbsd/](https://www.unixprogram.com/churchofbsd/)
prog idris [Idris 2: Quantitative Types in Action - Edwin Brady - YouTube](https://www.youtube.com/watch?v%3D0uA-tKR6Ah4)
prog js lib books21138741 Wcm 2 JAVASCRIPT Hav 24.01.2024 HHaverbeke, Marijn: JavaScript14220338 Wcg 2 Schmid 24.01.2024 HSchmidt, Maik: Raspberry Pi17205142 Wcg 2 Rueh 24.01.2024 HRühmer, Dennis Pa...: Heimserver mit Raspberry und Banana Pi21177628 Wcm 2 JAVASCRIPT Hor 24.01.2024 HHorstmann, Cay: JavaScript für Ungeduldige15204636 Wcr 7 Glit 24.01.2024 HGlitschka, Von: Basistraining Vektorgrafik19372488 Wcg 2 Kofl 24.01.2024 HKofler, Michael ...: Raspberry Pi19133390 Wcm 2 JAVA Bloc 24.01.2024 HBloch, Joshua: Effective Java01218680 80 Pael 24.01.2024 HDie Pälzer Biwel20367667 Wcm 2 KOTLIN Szwi 24.01.2024 HSzwillus, Karl: Kotlin21216567 Wcm Meye 24.01.2024 HMeyer, Uwe: Grundkurs Compilerbau
prog lisp [CLHS: Chapter Index](https://www.lispworks.com/documentation/lw50/CLHS/Front/Contents.htm)
prog lisp [Let's make a scripting language using parser combinators in rust - YouTube](ghttps://www.youtube.com/watch?v%3DSfIIxUXRv1Y)
prog lisp [Lisp Tutorial - YouTube](https://www.youtube.com/watch?v%3DymSq4wHrqyU%26t%3D115s)
prog lisp [https://cisco.github.io/ChezScheme/](ghttps://cisco.github.io/ChezScheme/)
prog lisp [https://github.com/cisco/ChezScheme](ghttps://github.com/cisco/ChezScheme)
prog lisp [https://github.com/kspalaiologos/kamilalisp](https://github.com/kspalaiologos/kamilalisp)
prog lisp [https://www.gnu.org/software/guile/learn/](https://www.gnu.org/software/guile/learn/)
prog lisp [https://www.reddit.com/r/lisp/s/9gAplgnn9d](https://www.reddit.com/r/lisp/s/9gAplgnn9d) Nyxt to Surf
prog lua [Lua Functional Programming/Functions - Wikibooks, open books for an open world](https://en.wikibooks.org/wiki/Lua_Functional_Programming/Functions)
prog lua etc  [hengestone/lua-languages: Languages that compile to Lua](https://github.com/hengestone/lua-languages) 
prog nickel [https://github.com/tweag/nickel/blob/master/RATIONALE.md](https://github.com/tweag/nickel/blob/master/RATIONALE.md)
prog nickel [https://nickel-lang.org/](https://nickel-lang.org/)
prog nickel[https://www.tweag.io/blog/tags/nickel/](https://www.tweag.io/blog/tags/nickel/)
prog perl [Library Genesis: Christopher M. Frenz - Pro Perl Parsing](https://libgen.is/book/index.php?md5%3DF50693F2889EA9C33724592E75D98DF3)
prog perl [Library Genesis: Moritz Lenz - Parsing with Perl 6 Regexes and Grammars. A Recursive Descent into Parsing](https://libgen.is/book/index.php?md5%3DC6761CAA2ACF8FD63AB2CC42E5B26011)
prog perl [Pearls of Perl: Top 10 Perl Tools & Utilities - ActiveState](https://www.activestate.com/blog/top-10-perl-tools-and-utilities/)
prog perl [The Top 10 Programming Tasks That Perl Is Used For - By ActiveState](https://www.activestate.com/blog/top-10-programming-tasks-that-perl-is-used-for/)
prog prog prog prog prog prog prog prog prog [https://github.com/DioxusLabs/dioxus](https://github.com/DioxusLabs/dioxus)
prog purescript [A Working Stiff's Guide to PureScript](https://reaktor.github.io/purescript-workshop/%23/) 
prog purescript [High-level overview of PureScript - DEV Community](https://dev.to/zelenya/high-level-overview-of-purescript-37lf) 
prog purescript [Introduction - PureScript by Example](https://book.purescript.org/chapter1.html) 
prog purescript [Recommended Tooling for PureScript in 2022 - Chat - PureScript Language Forum](https://discourse.purescript.org/t/recommended-tooling-for-purescript-in-2022/3206) 
prog purescript [Stack Builders - A Look at PureScript - Part I](https://www.stackbuilders.com/blog/a-look-at-purescript-part-i/)
prog purescript [The Prim Module.purs - PureScript: Jordan's Reference](https://jordanmartinez.github.io/purescript-jordans-reference-site/content/11-Syntax/01-Basic-Syntax/src/01-Preliminary-Concepts/03-The-Prim-Module-ps.html) 
prog purescript [TypeScript vs. PureScript - LogRocket Blog](https://blog.logrocket.com/typescript-vs-purescript-not-all-compilers-are-created-equal-c16dadaa7d3e/)
prog purescript [laurentpayot/purescript-for-elm-developers: PureScript crash course targeted at Elm developers](https://github.com/laurentpayot/purescript-for-elm-developers%23readme)
prog purescript [purescript blog](https://www.stackbuilders.com/blog/a-look-at-purescript-part-i/)
prog purescript [purescript book](https://book.purescript.org/chapter1.html)
prog purescript [purescript workshop](https://reaktor.github.io/purescript-workshop/%23/)
prog purescript [tooling for ps](https://discourse.purescript.org/t/recommended-tooling-for-purescript-in-2022/3206)
prog py  [How do I run all Python unit tests in a directory? - Stack Overflow](https://stackoverflow.com/questions/1732438/how-do-i-run-all-python-unit-tests-in-a-directory)
prog py [https://www.reddit.com/r/Python/s/wOUoSboBHy](https://www.reddit.com/r/Python/s/wOUoSboBHy) uv: Python packaging
prog py js [kovidgoyal/rapydscript-ng: A transpiler for a Python like language to JavaScript](https://github.com/kovidgoyal/rapydscript-ng)
prog py rust [https://baincapitalventures.com/insight/why-more-python-developers-are-using-rust-for-building-libraries/](https://baincapitalventures.com/insight/why-more-python-developers-are-using-rust-for-building-libraries/) 
prog rust [https://libgen.rs/search.php?req=code+rust+like+a+pro&lg_topic=libgen&open=0&view=simple&res=25&phrase=1&column=def](https://libgen.rs/search.php?req%3Dcode%2Brust%2Blike%2Ba%2Bpro%26lg_topic%3Dlibgen%26open%3D0%26view%3Dsimple%26res%3D25%26phrase%3D1%26column%3Ddef)
prog top-class thread: [discord ](https://discord.com/channels/834325286664929280/877900210297270272/1205164792327831623)
prog zig [https://thenewstack.io/introduction-to-zig-a-potential-heir-to-c/](https://thenewstack.io/introduction-to-zig-a-potential-heir-to-c/)
proglang [How (memory) safe is zig?](ghttps://www.scattered-thoughts.net/writing/how-safe-is-zig/)
proj [Nixide: Uses, Dosage, Side Effects, FAQ - MedicinesFAQ](https://www.medicinesfaq.com/brand/nixide)
proj [floresta - Wiktionary, the free dictionary](https://en.wiktionary.org/wiki/floresta)
proj [nebokrai (horizon, +consilium, ganttouchthis, taskifist, roadmapper)](https://www.notion.so/nebokrai-horizon-consilium-ganttouchthis-taskifist-roadmapper-2d3a6d104fb348c0b63b58087aada71b?pvs%3D21)
proj paralllel-text-finisher explicit_latex_head explicit_latex_body explicit_latex_full
rice [Aylur's GTK Shell | AGS Wiki](ghttps://aylur.github.io/ags-docs/)
rice [Buffer splitting/tiling · Issue #55 · atlas-engineer/nyxt](ghttps://github.com/atlas-engineer/nyxt/issues/55)
rice [Capturing a screenshot of the GDM login screen | en gnome | ao2.it](ghttps://ao2.it/en/blog/2016/10/01/capturing-screenshot-gdm-login-screen)
rice [Customizing Matplotlib with style sheets and rcParams — Matplotlib 3.8.3 documentation](ghttps://matplotlib.org/stable/users/explain/customizing.html)
rice [Fonts - NixOS Wiki](ghttps://nixos.wiki/wiki/Fonts)
rice [GDM3 Theme Blur - Gnome-look.org](ghttps://www.gnome-look.org/p/1275369)
rice [Gtk – 3.0: CSS Properties](ghttps://docs.gtk.org/gtk3/css-properties.html)
rice [Gtk – 4.0: GTK CSS Properties](ghttps://docs.gtk.org/gtk4/css-properties.html)
rice [How tags work · riverwm/river Wiki](ghttps://github.com/riverwm/river/wiki/How-tags-work)
rice [How to fix qt themes in nixos? - Help - NixOS Discourse](ghttps://discourse.nixos.org/t/how-to-fix-qt-themes-in-nixos/14495/7)
rice [NixOS Hyprland - request some insight pls on how to ran codium and discord to in xwayland mode? : r/NixOS](ghttps://www.reddit.com/r/NixOS/comments/17kg8rb/nixos_hyprland_request_some_insight_pls_on_how_to/)
rice [Tint and Shade Generator](ghttps://maketintsandshades.com/)
rice [Wrong background with gtk2 theme Gnome OSX-IV-1.3 · Issue #32 · doublecmd/doublecmd](ghttps://github.com/doublecmd/doublecmd/issues/32)
rice [https://github.com/EliverLara/terminator-themes](https://github.com/EliverLara/terminator-themes) 
rice [https://github.com/hyprwm/hyprland-plugins](https://github.com/hyprwm/hyprland-plugins)
rice [https://www.reddit.com/r/hyprland/comments/15f97ue/how_i_do_find_my_keybinds_for_hyprland/?rdt=42389](https://www.reddit.com/r/hyprland/comments/15f97ue/how_i_do_find_my_keybinds_for_hyprland/?rdt%3D42389)
rice [nyxt-config/hsplit.lisp at master · aartaka/nyxt-config](ghttps://github.com/aartaka/nyxt-config/blob/master/hsplit.lisp)
rice [nyxt/source/renderer/gtk.lisp at 0a288c573e40b8b7ac12264782e095ca08d9f507 · atlas-engineer/nyxt](ghttps://github.com/atlas-engineer/nyxt/blob/0a288c573e40b8b7ac12264782e095ca08d9f507/source/renderer/gtk.lisp%23L68)
rice [sandesh236/sleek--themes](ghttps://github.com/sandesh236/sleek--themes)
rice browser [Home | Stylebot](https://stylebot.dev/)
rice color [Forest Green and Brown Color Palette](ghttps://www.color-hex.com/color-palette/101985)
rice color [Names of colors in English. Shades of green and brown | Colors name in english, Color, Color names](ghttps://www.pinterest.com/pin/132856257736067260/)
rice color [http://wiki.gis.com/wiki/index.php/Saturation_(Color_Theory)](http://wiki.gis.com/wiki/index.php/Saturation_(Color_Theory))
rice color [https://bottosson.github.io/posts/oklab/](https://bottosson.github.io/posts/oklab/)
rice color [https://chromatone.center/theory/color/models/perceptual/](https://chromatone.center/theory/color/models/perceptual/)
rice color [https://en.wikipedia.org/wiki/Color_model](https://en.wikipedia.org/wiki/Color_model)
rice color [https://en.wikipedia.org/wiki/Color_scheme](https://en.wikipedia.org/wiki/Color_scheme)
rice color [https://en.wikipedia.org/wiki/Color_space](https://en.wikipedia.org/wiki/Color_space)
rice color [https://en.wikipedia.org/wiki/Color_theory](https://en.wikipedia.org/wiki/Color_theory)
rice color [https://en.wikipedia.org/wiki/List_of_color_spaces_and_their_uses](https://en.wikipedia.org/wiki/List_of_color_spaces_and_their_uses)
rice color [https://mattlockyer.github.io/iat455/documents/rgb-hsv.pdf](https://mattlockyer.github.io/iat455/documents/rgb-hsv.pdf)
rice color [https://news.ycombinator.com/item?id=25830327](https://news.ycombinator.com/item?id%3D25830327)
rice color [https://opg.optica.org/oe/fulltext.cfm?uri=oe-25-13-15131&id=368272](https://opg.optica.org/oe/fulltext.cfm?uri%3Doe-25-13-15131%26id%3D368272)
rice color [https://programmingdesignsystems.com/color/perceptually-uniform-color-spaces/](https://programmingdesignsystems.com/color/perceptually-uniform-color-spaces/)
rice color [https://uxplanet.org/color-theory-brief-guide-for-designers-76e11c57eaa](https://uxplanet.org/color-theory-brief-guide-for-designers-76e11c57eaa)
rice color [https://www.colorfetch.com/](https://www.colorfetch.com/)
rice color [https://www.google.com/search?q=conversion%20between%20rgb%20and%20hsv&ie=utf-8&oe=utf-8&client=firefox-b-m](https://www.google.com/search?q%3Dconversion%2520between%2520rgb%2520and%2520hsv%26ie%3Dutf-8%26oe%3Dutf-8%26client%3Dfirefox-b-m)  implement color converter / modifier in Nix and look at 2 sister projects for reference (are there more?)   conversion between rgb and hsv
rice color [https://www.interaction-design.org/literature/topics/color-theory](https://www.interaction-design.org/literature/topics/color-theory)
rice color [https://www.pnas.org/doi/full/10.1073/pnas.2119753119](https://www.pnas.org/doi/full/10.1073/pnas.2119753119)
rice color [https://www.reddit.com/r/neovim/comments/199c6zd/seamless_jupyter_notebook_editing_in_neovim_demo/](https://www.reddit.com/r/neovim/comments/199c6zd/seamless_jupyter_notebook_editing_in_neovim_demo/)
rice color [https://www.sciencedirect.com/topics/engineering/perceptual-color-space](https://www.sciencedirect.com/topics/engineering/perceptual-color-space)
rice color [https://www.toptal.com/designers/ux/color-in-ux](https://www.toptal.com/designers/ux/color-in-ux)
rice color [https://www2.konicaminolta.eu/eu/Measuring/pcc/en/index.html](https://www2.konicaminolta.eu/eu/Measuring/pcc/en/index.html)
rice colors [16colo.rs - Sixteen Colors is an online ANSI and ASCII Art Gallery collecting all of the art packs released since the early 1990s](https://forum.16colo.rs/)
rice colors [Color Psychology: A Guide for Designers, Marketers & Students](https://www.colorpsychology.org/)
rice colors [HSL and HSV - Wikipedia](https://en.wikipedia.org/wiki/HSL_and_HSV)
rice colors [Switching from solarized to gruvbox](https://blog.jeaye.com/2018/02/01/gruvbox/)
rice colors [https://bottosson.github.io/misc/colorpicker/#f0f0f0](https://bottosson.github.io/misc/colorpicker/%23f0f0f0) 
rice colors [https://github.com/thvardhan/Gradianto](https://github.com/thvardhan/Gradianto)
rice colors [https://quickfix.es/2023/11/off-theme-presents-shades-of-purple/](https://quickfix.es/2023/11/off-theme-presents-shades-of-purple/) 
rice colors [iTerm2-Color-Schemes/dynamic-colors/AlienBlood.sh at master · mbadolato/iTerm2-Color-Schemes](https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/dynamic-colors/AlienBlood.sh)
rice ff  [https://github.com/Neikon/Fox11](https://github.com/Neikon/Fox11) HGKeeper 
rice ff & chrome startpage [reddit](https://www.reddit.com/r/unixporn/s/mvA6EhXF0t)
rice ff : config hack shitpost [](https://www.reddit.com/r/NixOS/s/bytkKR3Tvq)
rice ff [EliverLara/firefox-nordic-theme: :snowflake: A dark theme for firefox theme created using the awesome Nord color palette.](ghttps://github.com/EliverLara/firefox-nordic-theme)
rice ff [Make Firefox great again](https://www.youtube.com/watch?v%3DdwZpjKH8nbo) 
rice ff [Tile Tabs WE :: Add-ons for Firefox](ghttps://web.archive.org/web/20170821233327/https://addons.mozilla.org/en-US/firefox/addon/tile-tabs-we/)
rice ff [arkenfox/user.js: Firefox privacy, security and anti-tracking: a comprehensive user.js template for configuration and hardening](https://github.com/arkenfox/user.js)
rice ff [firefox-userchrome · GitHub Topics](ghttps://github.com/topics/firefox-userchrome)
rice ff [https://firefoxcss-store.github.io/](https://firefoxcss-store.github.io/)
rice ff [https://github.com/Godiesc/firefox-gx](https://github.com/Godiesc/firefox-gx)
rice ff [https://github.com/Godiesc/firefox-gx](https://github.com/Godiesc/firefox-gx)
rice ff [https://github.com/Godiesc/firefox-one](https://github.com/Godiesc/firefox-one)
rice ff [https://github.com/HelgiMagic/FirefoxCSS](https://github.com/HelgiMagic/FirefoxCSS)
rice ff [https://github.com/Jamir-boop/minimalisticfox](https://github.com/Jamir-boop/minimalisticfox)
rice ff [https://github.com/KiKaraage/ArcWTF](https://github.com/KiKaraage/ArcWTF)
rice ff [https://github.com/Naezr/ShyFox](https://github.com/Naezr/ShyFox)
rice ff [https://github.com/PENWINthePIRATE/firefox-one-pixelated](https://github.com/PENWINthePIRATE/firefox-one-pixelated)
rice ff [https://github.com/PROxZIMA/Sweet-Pop](https://github.com/PROxZIMA/Sweet-Pop) Sweet_Pop! Beautify, Customize Firefox. Minimalist animated oneliner theme for Firefox perfectly matching Sweet Dark. 
rice ff [https://github.com/QNetITQ/WaveFox](https://github.com/QNetITQ/WaveFox)
rice ff [https://github.com/RoyalHeart/config/tree/main/chrome](https://github.com/RoyalHeart/config/tree/main/chrome)
rice ff [https://github.com/Shina-SG/Shina-Fox](ghttps://github.com/Shina-SG/Shina-Fox)
rice ff [https://github.com/Shina-SG/Shina-Fox](https://github.com/Shina-SG/Shina-Fox)
rice ff [https://github.com/ShmakovVladimir/DolphinFox](https://github.com/ShmakovVladimir/DolphinFox)
rice ff [https://github.com/akshat46/FlyingFox](https://github.com/akshat46/FlyingFox)
rice ff [https://github.com/alan-ar1/greenyfox](https://github.com/alan-ar1/greenyfox)
rice ff [https://github.com/artsyfriedchicken/EdgyArc-fr](https://github.com/artsyfriedchicken/EdgyArc-fr)
rice ff [https://github.com/davidbecker808/Edge-FFxArc](https://github.com/davidbecker808/Edge-FFxArc)
rice ff [https://github.com/iansinnott/full-text-tabs-forever](https://github.com/iansinnott/full-text-tabs-forever)
rice ff [https://github.com/lewisHeart/Floorp-Configs](https://github.com/lewisHeart/Floorp-Configs)
rice ff [https://github.com/lewisHeart/Floorp-Configs](https://github.com/lewisHeart/Floorp-Configs)
rice ff [https://github.com/safak45xx/Blurfox-MacOS-](https://github.com/safak45xx/Blurfox-MacOS-)
rice ff [https://github.com/soulhotel/Perfection-Firefox-CSS-Theme](ghttps://github.com/soulhotel/Perfection-Firefox-CSS-Theme)
rice ff [https://github.com/soulhotel/v2-Tabs-alpha-/tree/main](ghttps://github.com/soulhotel/v2-Tabs-alpha-/tree/main)
rice ff [https://github.com/vipintom/stealthFox](https://github.com/vipintom/stealthFox)
rice ff [https://github.com/zDyanTB/ADHD-Floorp](https://github.com/zDyanTB/ADHD-Floorp)
rice ff [https://news.itsfoss.com/floorp-firefox/](https://news.itsfoss.com/floorp-firefox/) 
rice ff [https://www.reddit.com/r/browsers/s/L0sHFRb1RU](https://www.reddit.com/r/browsers/s/L0sHFRb1RU) floorp
rice ff [lucaspar/firefox-vertical-tabs: Stylesheets for collapsible vertical tabs for Firefox.](ghttps://github.com/lucaspar/firefox-vertical-tabs)
rice ff [user.js/desktop at main - user.js - Codeberg.org](https://codeberg.org/Narsil/user.js/src/branch/main/desktop)
rice font - [* Code search results](ghttps://github.com/search?q%3Dfont-patcher%2Blanguage%253ANix%26type%3Dcode)
rice font Patched font name: $name Coterminous
rice font [Fontforge drops me into python? - Help - NixOS Discourse](ghttps://discourse.nixos.org/t/fontforge-drops-me-into-python/5592)
rice font [Fonts - Wez's Terminal Emulator](https://wezfurlong.org/wezterm/config/fonts.html)
rice font [Glyphr Studio - font design, online](ghttps://www.glyphrstudio.com/)
rice font [Glyphr Studio v2](ghttps://www.glyphrstudio.com/app/)
rice font [How to get full unicode support on Chrome? : r/Unicode](https://www.reddit.com/r/Unicode/comments/4rhbjh/how_to_get_full_unicode_support_on_chrome/)
rice font [Installing fonts - NixOS4Noobs](ghttps://jorel.dev/NixOS4Noobs/fonts.html)
rice font [Nerd Fonts - Iconic font aggregator, glyphs/icons collection, & fonts patcher](https://www.nerdfonts.com/cheat-sheet)
rice font [NixOS Search - Packages - font-patcher](ghttps://search.nixos.org/packages?channel%3D23.11%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dfont-patcher)
rice font [Programmable fonts with Rust by Valdemar Erk - YouTube](ghttps://www.youtube.com/watch?v%3DMs1Drb9Vw9M)
rice font [Symbols for Legacy Computing - Wikipedia](https://en.wikipedia.org/wiki/Symbols_for_Legacy_Computing)
rice font [Symbols for Legacy Computing](https://www.unicode.org/charts/nameslist/c_1FB00.html)
rice font [Unicode Characters: 02500 to 025FF](https://www.w3.org/TR/xml-entity-names/025.html)
rice font [Unicode Characters: 02500 to 025FF](https://www.w3.org/TR/xml-entity-names/025.html)
rice font [Unicode – The World Standard for Text and Emoji](https://home.unicode.org/)
rice font [Unicode/List of useful symbols - Wikibooks, open books for an open world](https://en.wikibooks.org/wiki/Unicode/List_of_useful_symbols)
rice font [cfonts - npm](ghttps://www.npmjs.com/package/cfonts)
rice font [http://designwithfontforge.com/fr-FR/index.html](http://designwithfontforge.com/fr-FR/index.html)
rice font [https://dee.underscore.world/blog/home-manager-fonts/](https://dee.underscore.world/blog/home-manager-fonts/)
rice font [https://discourse.nixos.org/t/home-manager-nerdfonts/11226](https://discourse.nixos.org/t/home-manager-nerdfonts/11226)
rice font [https://es.wikipedia.org/wiki/Curva_de_Bézier](https://es.wikipedia.org/wiki/Curva_de_B%25C3%25A9zier)
rice font [https://es.wikipedia.org/wiki/Curva_de_Bézier](https://es.wikipedia.org/wiki/Curva_de_B%25C3%25A9zier)
rice font [https://github.com/NixOS/nixpkgs/issues/230895](https://github.com/NixOS/nixpkgs/issues/230895)
rice font [https://github.com/nix-community/home-manager/issues/605](https://github.com/nix-community/home-manager/issues/605)
rice font [https://nixos.wiki/wiki/Fonts](https://nixos.wiki/wiki/Fonts)
rice font [https://www.linux.com/topic/desktop/how-manage-fonts-linux/](https://www.linux.com/topic/desktop/how-manage-fonts-linux/)
rice font [https://www.reddit.com/r/NixOS/comments/16i7bc0/how_to_install_powerline_and_fontawesome/](https://www.reddit.com/r/NixOS/comments/16i7bc0/how_to_install_powerline_and_fontawesome/)
rice font [https://www.reddit.com/r/NixOS/comments/18heuqb/how_to_use_installed_fonts_in_alacritty_etc/](https://www.reddit.com/r/NixOS/comments/18heuqb/how_to_use_installed_fonts_in_alacritty_etc/)
rice font [https://www.unicode.org/charts/PDF/U1FB00.pdf](https://www.unicode.org/charts/PDF/U1FB00.pdf)
rice font [libc/nix-nerd-fonts-patcher: Nix flake to use nerd-fonts font-patcher](ghttps://github.com/libc/nix-nerd-fonts-patcher)
rice font [nerdfonts cheatsheet at DuckDuckGo](https://duckduckgo.com/?q%3Dnerdfonts%2Bcheatsheet%26ia%3Dweb)
rice font [script - Get list of all fonts containing a specific character - Ask Different](https://apple.stackexchange.com/questions/287707/get-list-of-all-fonts-containing-a-specific-character)
rice font [seijinriashenko/sf-mono-liga: A Flake for installing Apple's SF Mono nerd-font, patched and ligaturized](ghttps://github.com/seijinriashenko/sf-mono-liga)
rice font [viperML/iosevka: My iosevka build, patched with nerd fonts](ghttps://github.com/viperML/iosevka)
rice font e.g. Fira Coterminous - even width border on the edge (1/8th? 1 pixel? 2 pixel? dynamic max(1/8th, 2 pixel)?
rice image [https://www.peakpx.com/en/search?q=dark+green+forest](https://www.peakpx.com/en/search?q%3Ddark%2Bgreen%2Bforest)
rice teams 'is-ipad': app.layoutService.isIPad,
rice teams 'notification-banner-visible': app.appStateAdapter.mainNotificationBannerStore.currentBanner,
rice teams [0])!=-1){return"rtl"}return"ltr"}function getStylesheetUrl(e){for(var t=0;t<themedStyleSheets.length;t++){var s=themedStyleSheets[t];if(s.indexOf(".theme-"+e+".")!==-1){return s}}return themedStyleSheets[0]}function getStylesheetUrl2(e){let t=setCssLanguageDirection();let s=t==="rtl"?e+"-"+t:e;for(var h=0;h<themedStyleSheets.length;h++){if(themedStyleSheets[h].indexOf(".theme-"+s+".")!=-1){return themedStyleSheets[h]}}return themedStyleSheets[themedStyleSheets.length-1]}function getStoredTheme(){const e="ts.upgradeV2Themes";const t="ts.appliedActiveTheme";const s=readCookie("storedTheme");let h;if(s&&s!=="undefined"){h=s}else{var a=window.serverFlags.appEnvironment||"";h=a.indexOf("life")>=0||location.hostname.indexOf("live")>=0?"tfl-default":"default"}if(window.localStorage){var n=window.localStorage.getItem(e);if(n==="true"){switch(h){case"default":h="defaultV2";break;case"dark":h="darkV2";break;default:break}}window.localStorage.setItem(t,h)}return h}function setStylesheetFromCookie(e,t){var s=document.head||document.getElementsByTagName("head")
rice teams [0];var h=document.createElement("style");h.innerHTML="* { transition-property: background-color; transition-duration: .22s; transition-timing-function: ease-out; }";if(!t){s.appendChild(h)}var a=document.querySelectorAll("#themed-stylesheet");var n=getStoredTheme();var d=getStylesheetUrl2(n);var l=document.createElement("link");http://l.id/);var o=function(){if(e){e()}var t=document.getElementById("loading-stylesheet");if(t){s.removeChild(t)}if(h.parentElement==s){s.removeChild(h)}s=null;h=null;a=null};l.onload=function(){console.log("[Index] Loaded stylesheet: "+d);var e=a&&a.length;if(e){var t;for(t=0;t<e;t++){var s=a[t];if(s&&s.parentElement){s.parentElement.removeChild(s)}}}o()};l.onerror=function(e){console.log("[Index] Failed to load stylesheet: "+d+" >>> "+JSON.stringify(e));appStartFailed(errorMessage.cssLoadError,d);o()};s.appendChild(l);l=null}window.setStylesheetFromCookie=setStylesheetFromCookie;setStylesheetFromCookie((function(){_.defer((function(){$("body").addClass("initialized")}))}),true);$(window).on("load",(function e(){angular.bootstrap(document.documentElement,["teamspace"]);if(window.electronSafeIpc&&window.desktop&&window.desktop.perf&&window.desktop.perf.getProcessMemoryInfo){window.electronSafeIpc.send("telemetryEvent",{name:"memoryIndexAppBootstrap",Perf_WorkingSetSizeKB:window.desktop.perf.getProcessMemoryInfo().workingSetSize})}}));sendAppStateChanged("IndexJsLoaded");</script><div ng-if=!app.layoutService.isLoaded id=app-loading-elem class="app-loading animated" analytics-panel={{::app.panelRegions.main}}><app-header-bar ng-if="!app.layoutService.isRigel && (!(app.layoutService.surfaceHubEnabled || app.layoutService.smartDeviceEnabled || app.layoutService.hidePowerBarElements) || app.layoutService.isElectron)"></app-header-bar><loading-application layout-service=app.layoutService environment=app.settingsService.appConfig.environment.type></loading-application></div><div ng-if="app.layoutService.isLoaded && !app.skipFirstRun" class=first-run analytics-panel={{::app.panelRegions.firstRun}}><app-header-bar ng-if="!app.layoutService.isRigel && (!(app.layoutService.surfaceHubEnabled || app.layoutService.smartDeviceEnabled || app.layoutService.hidePowerBarElements) || app.layoutService.isElectron)"></app-header-bar><div class="ts-first-run ts-add-members-common" ui-view={{::app.panelRegions.firstRun}} noanimation=true></div></div><div ng-if="app.layoutService.isInitialized && app.skipFirstRun" ng-class="{ 'invisible': !app.layoutService.isLoaded, |  |
rice teams [http://statics.teams.cdn.office.net/hashed/stylesheets.theme-contrast-rtl.min-99a2c48.css](http://statics.teams.cdn.office.net/hashed/stylesheets.theme-contrast-rtl.min-99a2c48.css)
rice teams [https://github.com/grwlf/mobile-nixos-cfg](https://github.com/grwlf/mobile-nixos-cfg)
rice teams [https://statics.teams.cdn.office.net/hashed/stylesheets.theme-contrast-rtl.min-99a2c48.css](https://statics.teams.cdn.office.net/hashed/stylesheets.theme-contrast-rtl.min-99a2c48.css)
rice teams [https://statics.teams.cdn.office.net/hashed/stylesheets.theme-contrast.min-c13716d.css](https://statics.teams.cdn.office.net/hashed/stylesheets.theme-contrast.min-c13716d.css)
rice teams [https://teams.microsoft.com/_](https://teams.microsoft.com/_)
rice teams view-source
rice teams | themedStyleSheets.push("https://statics.teams.cdn.office.net/hashed/stylesheets.theme-contrast-rtl.min-99a2c48.css);themedStyleSheets.push("https://statics.teams.cdn.office.net/hashed/stylesheets.theme-contrast.min-c13716d.css);themedStyleSheets.push("https://statics.teams.cdn.office.net/hashed/stylesheets.theme-dark-rtl.min-f34329e.css);themedStyleSheets.push("https://statics.teams.cdn.office.net/hashed/stylesheets.theme-dark.min-40ddca9.css);themedStyleSheets.push("https://statics.teams.cdn.office.net/hashed/stylesheets.theme-darkV2-rtl.min-3b6961e.css);themedStyleSheets.push("https://statics.teams.cdn.office.net/hashed/stylesheets.theme-darkV2.min-ea15c0d.css);themedStyleSheets.push("https://statics.teams.cdn.office.net/hashed/stylesheets.theme-default-rtl.min-af690f7.css);themedStyleSheets.push("https://statics.teams.cdn.office.net/hashed/stylesheets.theme-default.min-0efad32.css);themedStyleSheets.push("https://statics.teams.cdn.office.net/hashed/stylesheets.theme-defaultV2-rtl.min-9cda25c.css);themedStyleSheets.push("https://statics.teams.cdn.office.net/hashed/stylesheets.theme-defaultV2.min-88ff9d4.css);themedStyleSheets.push("https://statics.teams.cdn.office.net/hashed/stylesheets.theme-tfl-dark-rtl.min-2da3d8b.css);themedStyleSheets.push("https://statics.teams.cdn.office.net/hashed/stylesheets.theme-tfl-dark.min-61565ac.css);themedStyleSheets.push("https://statics.teams.cdn.office.net/hashed/stylesheets.theme-tfl-default-rtl.min-7e0ad38.css);themedStyleSheets.push("https://statics.teams.cdn.office.net/hashed/stylesheets.theme-tfl-default.min-1cdcd8d.css);function setCssLanguageDirection(){let e=["ar","he","fl"];if(window.TS_PREFERRED_LOCALES&&window.TS_PREFERRED_LOCALES[0]&&typeof window.TS_PREFERRED_LOCALES[0]=="string"&&e.indexOf(window.TS_PREFERRED_LOCALES[0].split("-")
script Treediff: show differences between branches or directories in tree format, either one tree with different colors, or side-by-side treesIncluding visualization for magnitude of changes, as in hitRespect .gitignore
script [https://github.com/karshPrime/silly_scripts](https://github.com/karshPrime/silly_scripts) 
script [https://linuxcommandlibrary.com/basic/oneliners](https://linuxcommandlibrary.com/basic/oneliners)
script perl [http://libgen.is/book/index.php?md5=3E343930F940A39296D35869A5525D45](http://libgen.is/book/index.php?md5%3D3E343930F940A39296D35869A5525D45) 
script perl [https://github.com/trizen/perl-scripts](https://github.com/trizen/perl-scripts) **5 great Perl scripts to keep in your sysadmin toolbox** 
script perl [https://www.redhat.com/sysadmin/perl-scripts](https://www.redhat.com/sysadmin/perl-scripts) 
scripts: write utility scripts to list contents of all nvim-relevant directories, such as those on packpath and rtp -> require first running headless nvim redir commands
si [https://www.marktechpost.com/2024/01/12/meet-ai-gateway-an-open-sourced-fast-ai-gateway-routed-to-100-large-language-models-llms-with-one-fast-and-friendly-api/](https://www.marktechpost.com/2024/01/12/meet-ai-gateway-an-open-sourced-fast-ai-gateway-routed-to-100-large-language-models-llms-with-one-fast-and-friendly-api/) 
snippet sudo docker run --runtime=nvidia --gpus all -it --rm --dns 8.8.8.8 --dns 8.8.4.4 \ --name nlq \ -v /home/isaac/repos:/root/repos \ -v /home/isaac/data:/root/data \ -v /home/isaac/.ssh:/root/.ssh \ -v /home/isaac/.config/pypoetry:/root/.config/pypoetry \ -v /home/isaac/.cache/torch:/root/.cache/torch \ -v /home/isaac/.cache/huggingface:/root/.cache/huggingface \ nvidia:poetry
snippet1 Dockerfile
snippet2 FROM nvidia/cuda:11.8.0-cudnn8-runtime-ubuntu22.04
snippet3 RUN apt update && apt upgrade && apt install python3 python3-pip
snippet4 RUN python3 -m pip install poetry
snippet7 warning: The option services.xserver.xkbVariant' defined in /nix/store/jybfs22ypnkjqk9hrszazkns8l4kc3yp-source/nixos/hank-configuration.nix' has been renamed to services.xserver.xkb.variant'. trace: warning: The option services.xserver.layout' defined in /nix/store/jybfs22ypnkjqk9hrszazkns8l4kc3yp-source/nixos/hank-configuration.nix' has been renamed to services.xserver.xkb.layout'.
snippet: alias cudaenv="sudo docker run --runtime=nvidia --gpus all -it --rm --dns 8.8.8.8 --dns 8.8.4.4 \ --name 'nlq' \ -v $HOME/dockermounts/nlq-mnt:$HOME/dockermounts/nlq-mnt \ -v /home/isaac/repos:/root/repos \ -v /home/isaac/data:/root/data \ -v /home/isaac/.ssh:/root/.ssh \ -v /home/isaac/.config/pypoetry:/root/.config/pypoetry \ -v /home/isaac/.cache/torch:/root/.cache/torch \ -v /home/isaac/.cache/huggingface:/root/.cache/huggingface \ nvidia:poetry"
sw  [LL](https://www.linuxlinks.com/)
sw  [https://github.com/flick0/ags-sootspirits](https://github.com/flick0/ags-sootspirits)
sw  [yokoffing/Betterfox: Firefox speed, privacy, and security: a user.js template for configuration. Your favorite browser, but better.](https://github.com/yokoffing/Betterfox)
sw ## **[GitHub - YaLTeR/niri: A scrollable-tiling Wayland compositor.](https://github.com/YaLTeR/niri)**
sw ### [https://terminaltrove.com/](https://terminaltrove.com/)
sw - [* Gabriella439/turtle: Shell programming, Haskell style](ghttps://github.com/Gabriella439/turtle)
sw Radion, internet radio client in Bash [](https://www.reddit.com/r/commandline/s/q7nN51fBVY)
sw [(Towards) stable C bindings for libutil, libexpr by yorickvP · Pull Request #8699 · NixOS/nix](https://github.com/NixOS/nix/pull/8699)
sw [*Using systemd unit files to customize and optimize your system Red Hat Enterprise Linux 8 | Red Hat Customer Portal](ghttps://access.redhat.com/documentation/enus/red_hat_enterprise_linux/8/html-single/using_systemd_unit_files_to_customize_and_optimize_your_system/index)
sw [2mol/pboy: a small .pdf management tool with a command-line UI](ghttps://github.com/2mol/pboy)
sw [8go/matrix-commander: simple but convenient CLI-based Matrix client app for sending and receiving](ghttps://github.com/8go/matrix-commander)
sw [A Better Tmux Experience | Tmux Configuration & Essential Plugins - YouTube](ghttps://www.youtube.com/watch?v%3DEpTzb-pyRTA)
sw [A Comprehensive Guide to SOPS: Managing Your Secrets Like A Visionary, Not a Functionary](ghttps://blog.gitguardian.com/a-comprehensive-guide-to-sops/)
sw [Alternatives to popular CLI tools: tree - LinuxLinks](ghttps://www.linuxlinks.com/alternatives-popular-cli-tools-tree/)
sw [Arch Linux Automated Install Script](https://low-orbit.net/arch-linux-automated-install-script)
sw [AtomsDevs/Atoms: Easily manage Linux Chroot(s) and Containers with Atoms.](ghttps://github.com/AtomsDevs/Atoms)
sw [BQN: finally, an APL for your flying saucer](https://mlochbaum.github.io/BQN/)
sw [Beluga](https://complogic.cs.mcgill.ca/beluga/)
sw [Browserling – Online cross-browser testing](ghttps://www.browserling.com/)
sw [Build optimized websites quickly, focus on your content | Docusaurus](https://docusaurus.io/)
sw [CUE](ghttps://cuelang.org/)
sw [CUE](https://cuelang.org/)
sw [Coccinella: Reviews, Features, Pricing & Download | AlternativeTo](https://alternativeto.net/software/coccinella/about/)
sw [Coderun: code runner CLI that can automatically detect run any languages : r/commandline](ghttps://www.reddit.com/r/commandline/comments/lo1m6u/coderun_code_runner_cli_that_can_automatically/)
sw [Commits · WillPower3309/swayfx](ghttps://github.com/WillPower3309/swayfx/commits/master/)
sw [Community is the modern self-host knowledge management platform | Documize](https://www.documize.com/community)
sw [Comparison of extensible window managers | Sawfish | Fandom](https://sawfish.fandom.com/wiki/Comparison_of_extensible_window_managers)
sw [Cursor - The AI-first Code Editor](https://cursor.sh/) 
sw [Dagger.io](https://dagger.io/)
sw [Data Serialization Comparison: JSON, YAML, BSON, MessagePack — SitePoint](https://www.sitepoint.com/data-serialization-comparison-json-yaml-bson-messagepack/)
sw [Dimillian/IceCubesApp: A SwiftUI Mastodon client](https://github.com/Dimillian/IceCubesApp)
sw [Documentation for pypi-command-line - pypi-command-line](https://wasi-master.github.io/pypi-command-line/)
sw [Eww - Widgets for everyone! - eww documentation](https://elkowar.github.io/eww/eww.html)
sw [Example](ghttps://www.idris-lang.org/pages/example.html)
sw [Frescobaldi: Edit LilyPond sheet music with ease!](ghttps://frescobaldi.org/)
sw [From i3 to Sway :: The Curator](https://julioln.com/posts/from-i3-to-sway/)
sw [Front Page | ReactOS Project](https://reactos.org/)
sw [GitHub - git/git: Git Source Code Mirror - This is a publish-only repository but pull requests can be turned into patches to the mailing list via GitGitGadget (](https://github.com/git/git)
sw [GitHub - pop-os/cosmic-files: WIP COSMIC file manager - isaac.r.riley@gmail.com - Gmail](https://mail.google.com/mail/u/0/%23inbox/KtbxLxgRRNTlkkHfRlfwZcXvWxjCQxHQxV)
sw [Gitless](https://gitless.com/)
sw [Home Assistant](https://www.home-assistant.io/)
sw [Home | DFileManager](ghttps://dfilemanager.sourceforge.net/)
sw [Horizon: The OpenStack Dashboard Project — horizon 23.4.0.dev76 documentation](https://docs.openstack.org/horizon/latest/)
sw [Hugin - Panorama photo stitcher](https://hugin.sourceforge.io/)
sw [IgnorantGuru/spacefm: SpaceFM File Manager](https://github.com/IgnorantGuru/spacefm)
sw [InBrowser.App](https://inbrowser.app/)
sw [Internet OS](https://www.reddit.com/r/linux/s/2hLxTTSWC6) [](https://www.reddit.com/r/linux/s/QB2fxnMkOy)
sw [Introduction to gRPC | gRPC](https://grpc.io/docs/what-is-grpc/introduction/)
sw [Introduction · Tig - Text-mode interface for Git](https://jonas.github.io/tig/)
sw [Introduction — Lua Functional 0.1.3 documentation](https://luafun.github.io/intro.html)
sw [KDevelop - A cross-platform IDE for C, C++, Python, QML/JavaScript and PHP](https://kdevelop.org/) 
sw [KaTeX – The fastest math typesetting library for the web](https://katex.org/)
sw [Kirottu/watershot: A simple wayland native screenshot tool.](ghttps://github.com/Kirottu/watershot)
sw [Kyjor/JulGame.jl: JulGame is a game engine based on the Julia programming language with the help of SDL2.](https://github.com/Kyjor/JulGame.jl)
sw [Let's code a UI in C (Ncurses) - YouTube](https://www.youtube.com/watch?v%3D2Q0jUzhDJp0)
sw [LibFM + PCManFM 1.3.2 released! – LXDE Blog](https://blog.lxde.org/2021/02/19/libfm-pcmanfm-1-3-2-released/)
sw [Linux | Oh My Posh](https://ohmyposh.dev/docs/installation/linux)
sw [LiveScript - a language which compiles to JavaScript](https://livescript.net/)
sw [Lorien: Reviews, Features, Pricing & Download | AlternativeTo](https://alternativeto.net/software/lorien/about/)
sw [Luakit Web Browser](https://luakit.github.io/)
sw [Madic-/Sway-DE: 🏠 Sway desktop environment dotfile installation for Arch Linux](https://github.com/Madic-/Sway-DE)
sw [Manuskript – Open-source tool for writers](https://www.theologeek.ch/manuskript/)
sw [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/)
sw [Michael-F-Bryan/mdbook-linkcheck: A backend for](https://github.com/Michael-F-Bryan/mdbook-linkcheck) [mdbook](https://github.com/Michael-F-Bryan/mdbook-linkcheck) [which will check your links for you.](https://github.com/Michael-F-Bryan/mdbook-linkcheck) 
sw [Michasze/surf-wayland: Suckless surf browser that runs on Wayland compositors](ghttps://github.com/Michasze/surf-wayland)
sw [Micro - Home](https://micro-editor.github.io/)
sw [Monitors | Hyprland Wiki](ghttps://wiki.hyprland.org/Configuring/Monitors/)
sw [Nebucatnetzer/network_inventory](https://github.com/Nebucatnetzer/network_inventory) 
sw [Nelua](https://nelua.io/)
sw [Nickel](ghttps://nickel-lang.org/user-manual/typing/)
sw [NixOS 78: Systemd User Services - YouTube](ghttps://www.youtube.com/watch?v%3DmFgxtWx5W0w)
sw [NixOS Search - Packages - gtk inspector](ghttps://search.nixos.org/packages?channel%3D23.11%26show%3Dxdg-desktop-portal-gtk%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dgtk%2Binspector)
sw [NixOS Search - Packages - nix](ghttps://search.nixos.org/packages?channel%3Dunstable%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dnix)
sw [NixOS Search - Packages - nvtop](ghttps://search.nixos.org/packages?channel%3D23.11%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dnvtop)
sw [NixOS Search - Packages - slim](ghttps://search.nixos.org/packages?channel%3D23.11%26show%3Ddocker-slim%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dslim)
sw [NixOS Search - Packages - swayfx](ghttps://search.nixos.org/packages?channel%3D23.11%26show%3Dswayfx%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dswayfx)
sw [ONLYOFFICE - Secure Online Office | ONLYOFFICE](https://www.onlyoffice.com/)
sw [Patryk / Monadoro · GitLab](ghttps://gitlab.com/kocielnik/monadoro)
sw [Podman vs Docker: In-Depth Comparison](https://phoenixnap.com/kb/podman-vs-docker)
sw [Pop!_OS is Working on a New Text Editor, Taking Cues from Vim and VS Code](https://news.itsfoss.com/cosmic-text-editor/)
sw [Projects/GTK/Inspector - GNOME Wiki!](ghttps://wiki.gnome.org/action/show/Projects/GTK/Inspector?action%3Dshow%26redirect%3DProjects%252FGTK%252B%252FInspector)
sw [QuickJS Javascript Engine](https://bellard.org/quickjs/)
sw [Recommended Complete Systems — Free Software Foundation — Working together for free software](https://www.fsf.org/resources/hw/systems)
sw [Recommended Tooling for PureScript in 2021 - Chat - PureScript Language Forum](ghttps://discourse.purescript.org/t/recommended-tooling-for-purescript-in-2021/2725)
sw [Recommended tooling for PureScript in 2020 - Chat - PureScript Language Forum](ghttps://discourse.purescript.org/t/recommended-tooling-for-purescript-in-2020/1615)
sw [Rust Desktop App Video](https://www.youtube.com/watch?v%3D7aFgeUG9TK4) 
sw [Rust Full-Stack Web App](https://www.youtube.com/watch?v%3Dtq3-M7QJiWg) wifi manager discussion 
sw [Skallwar/suckit: Suck the InTernet](https://github.com/skallwar/suckit) 
sw [So You Think You Know Git?](https://youtu.be/aolI_Rz0ZqY?si%3DDQSGDv-KVeKOvJkM)
sw [Solanum](https://apps.gnome.org/Solanum/), Thunderbird, nokdb, borg, Nextcloud, OBS Studio, kdenlive, keyx, jitsi meet, 
sw [SpaceFM User's Manual](http://ignorantguru.github.io/spacefm/spacefm-manual-en.html%23programfiles-home)
sw [Static Site Generator | Nikola](https://getnikola.com/)
sw [Stevenic/codepilot: Codepilot is a programming buddy that is an expert on your codebase.](ghttps://github.com/Stevenic/codepilot)
sw [SunGodRamen/task-driven-development: Project template that enforces documentation and project lifecycle across tools; nvim, taskwarrior, drawio, using githooks to enforce and automate tracking.](https://github.com/SunGodRamen/task-driven-development) 
sw [Super Productivity – a to do list to get your head free | Super Productivity](https://super-productivity.com/)
sw [SwitchAxe (SwitchAxe) / Repositories](ghttps://github.com/SwitchAxe?tab%3Drepositories)
sw [SwitchAxe/Rewind: A modern functional shell and a programming language](ghttps://github.com/SwitchAxe/Rewind)
sw [SwitchAxe/Rewire: A configurable programming language!](ghttps://github.com/SwitchAxe/Rewire)
sw [SwitchAxe/clean-mode.el: A Concurrent Clean (or just Clean) language mode for GNU Emacs.](ghttps://github.com/SwitchAxe/clean-mode.el)
sw [System and Service Manager](ghttps://systemd.io/)
sw [TUXEDO Control Center - GNU/Linux.ch](https://gnulinux.ch/tuxedo-control-center)
sw [TaskLite: A CLI task manager built with Haskell and SQLite : r/commandline](ghttps://www.reddit.com/r/commandline/comments/f8io2v/tasklite_a_cli_task_manager_built_with_haskell/)
sw [TeX Mode (GNU Emacs Manual)](https://www.gnu.org/software/emacs/manual/html_node/emacs/TeX-Mode.html)
sw [Terminal color scheme fetching program called colorfetch. : r/shell](ghttps://www.reddit.com/r/shell/comments/nn1kqn/terminal_color_scheme_fetching_program_called/)
sw [The Dhall configuration language](ghttps://dhall-lang.org/)
sw [There’s a fast new code editor in town - YouTube](https://www.youtube.com/watch?v%3DJGz7Ou0Nwo8)
sw [Tile Tabs :: Add-ons for Firefox](ghttps://web.archive.org/web/20170821155241/https://addons.mozilla.org/en-US/firefox/addon/tile-tabs/?src%3Duserprofile)
sw [TomWright/dasel: Select, put and delete data from JSON, TOML, YAML, XML and CSV files with a single tool. Supports conversion between formats and can be used as a Go package.](ghttps://github.com/TomWright/dasel)
sw [Tutorial - xonsh 0.14.0 documentation](https://xon.sh/tutorial.html) 
sw [UI: implement 'pumblend' option for semi-transparent popupmenu by bfredl · Pull Request #9571 · neovim/neovim](ghttps://github.com/neovim/neovim/pull/9571)
sw [Vencord/Vesktop: Vesktop gives you the performance of web Discord and the comfort of Discord Desktop](https://github.com/Vencord/Vesktop)
sw [Welcome - File Browser](https://filebrowser.org/)
sw [Welcome to Dan’s Cheat Sheets’s documentation! — Dan's Cheat Sheets 1 documentation](https://cheat.readthedocs.io/en/latest/index.html)
sw [Why Everyone Is OBSESSED With Arc Browser - YouTube](ghttps://www.youtube.com/watch?v%3DUdopamaLJC8)
sw [Why I use the Enlightenment file manager on Linux | Opensource.com](https://opensource.com/article/22/12/linux-file-manager-enlightenment)
sw [WillPower3309/swayfx: SwayFX: Sway, but with eye candy!](ghttps://github.com/WillPower3309/swayfx)
sw [Wren](https://wren.io/) 
sw [Yardanico/asciigraph: Console ascii line graphs in pure Nim](ghttps://github.com/Yardanico/asciigraph)
sw [airtable alt](https://thenewstack.io/baserow-a-no-code-open-source-alternative-to-airtable/)
sw [aura-text](https://github.com/rohankishore/Aura-Text)
sw [bprusinowski/plotteus: 🦋 Plotteus is a JavaScript data visualization library designed to help you tell better stories.](https://github.com/bprusinowski/plotteus)
sw [bvaisvil/zenith: Zenith - sort of like top or htop but with zoom-able charts, CPU, GPU, network, and disk usage](ghttps://github.com/bvaisvil/zenith)
sw [cafe](https://github.com/zbeaver/cafe)
sw [cage-kiosk/cage: A Wayland kiosk](ghttps://github.com/cage-kiosk/cage)
sw [cleaning up $HOME](https://www.youtube.com/watch?v%3DjK7xIVn-yI8%26t%3D4s) → use xdg-ninja, also create a new home directory
sw [cmd-wrapped](https://github.com/YiNNx/cmd-wrapped)
sw [cue-lang](https://github.com/cue-lang) 
sw [dhall-lang/dhall-haskell: Maintainable configuration files](ghttps://github.com/dhall-lang/dhall-haskell)
sw [display3d](https://github.com/redpenguinyt/display3d)
sw [docker vs podman at DuckDuckGo](https://duckduckgo.com/?q%3Ddocker%2Bvs%2Bpodman%26ia%3Dweb)
sw [dooit](https://github.com/kraanzu/dooit)
sw [dwl-guile](https://github.com/engstrand-config/home-service-dwl-guile)
sw [dwm](https://www.reddit.com/r/unixporn/comments/123ld44/dwm_tugend_oder_ruhm/) - look for source of passage 
sw [dzfrias/projectable: :dizzy: A TUI file manager built for projects](ghttps://github.com/dzfrias/projectable)
sw [ebpf](https://thenewstack.io/what-is-ebpf/)
sw [eikenb/terminal-colors: Utility to test color capabilities of terminal.](ghttps://github.com/eikenb/terminal-colors)
sw [elParaguayo/qtile-widget-livefootballscores: Qtile widget to display live football scores](ghttps://github.com/elParaguayo/qtile-widget-livefootballscores)
sw [ericfreese/rat: Compose shell commands to build interactive terminal applications](https://github.com/ericfreese/rat)
sw [eth-sri/lmql at c3194466d786838f0dee50dda48a4ec90ab39f53](https://github.com/eth-sri/lmql/tree/c3194466d786838f0dee50dda48a4ec90ab39f53)
sw [fabric ](https://github.com/Fabric-Development/fabric)**[fabric](https://github.com/Fabric-Development/fabric)** 
sw [facebook/hermes: A JavaScript engine optimized for running React Native.](https://github.com/facebook/hermes)
sw [fcitx/fcitx5: maybe a new fcitx.](https://github.com/fcitx/fcitx5)
sw [files/libcore at main · elementary/files](https://github.com/elementary/files/tree/main/libcore)
sw [flutter blog post ](http://matthiasnehlsen.com/blog/2022/05/15/switched-to-flutter-lost-10-kilos/)**[How I switched to Flutter and lost 10 kilos](http://matthiasnehlsen.com/blog/2022/05/15/switched-to-flutter-lost-10-kilos/)** 
sw [fox-toolkit.org](http://www.fox-toolkit.org/)
sw [fuzzypixelz/Hustle: Haskell implementation of the KDL Document Language](ghttps://github.com/fuzzypixelz/Hustle)
sw [gRPC - Wikipedia](https://en.wikipedia.org/wiki/GRPC)
sw [gRPC vs. REST: Key Similarities and Differences - DreamFactory Software- Blog](https://blog.dreamfactory.com/grpc-vs-rest-how-does-grpc-compare-with-traditional-rest-apis/)
sw [gRPC](https://grpc.io/)
sw [geary - Google Search](https://www.google.com/search?client%3Dfirefox-b-d%26q%3Dgeary) 
sw [getsops/sops: Simple and flexible tool for managing secrets](ghttps://github.com/getsops/sops)
sw [ghostty](https://mitchellh.com/ghostty)
sw [git-vogue: A framework for pre-commit checks.](ghttps://hackage.haskell.org/package/git-vogue)
sw [gitit: Wiki using happstack, git or darcs, and pandoc.](https://hackage.haskell.org/package/gitit)
sw [goread](https://github.com/TypicalAM/goread)
sw [gorhill/uBlock: uBlock Origin - An efficient blocker for Chromium and Firefox. Fast and lean.](ghttps://github.com/gorhill/uBlock)
sw [graphite](https://github.com/GraphiteEditor/Graphite)
sw [hashicorp/hcl: HCL is the HashiCorp configuration language.](https://github.com/hashicorp/hcl)
sw [helix: remove outdated comment · nix-community/home-manager@652fda4](ghttps://github.com/nix-community/home-manager/commit/652fda4ca6dafeb090943422c34ae9145787af37)
sw [http-server](https://github.com/http-party/http-server)
sw [http://aozora.github.io/bootplus/](http://aozora.github.io/bootplus/) 
sw [http://www.figlet.org/](http://www.figlet.org/) 
sw [https://2fa.directory/de/](https://2fa.directory/de/)
sw [https://9to5linux.com/libreboot-open-source-bios-uefi-firmware-adds-more-hardware-support](https://9to5linux.com/libreboot-open-source-bios-uefi-firmware-adds-more-hardware-support) libreboot
sw [https://alternativeto.net/software/anytype/?license=opensource](https://alternativeto.net/software/anytype/?license%3Dopensource) 
sw [https://ariel-frischer.github.io/developerFolio/](https://ariel-frischer.github.io/developerFolio/) 
sw [https://ast-grep.github.io/](https://ast-grep.github.io/) 
sw [https://blog.appflowy.io/appflowy-2nd-anniversary-and-2023-roundup/](https://blog.appflowy.io/appflowy-2nd-anniversary-and-2023-roundup/) 
sw [https://blog.cloudflare.com/introducing-foundations-our-open-source-rust-service-foundation-library](https://blog.cloudflare.com/introducing-foundations-our-open-source-rust-service-foundation-library) 
sw [https://blog.logrocket.com/exploring-best-syntax-highlighting-libraries/](https://blog.logrocket.com/exploring-best-syntax-highlighting-libraries/) 
sw [https://blog.osteele.com/2004/11/ides](https://blog.osteele.com/2004/11/ides) 
sw [https://blog.superhuman.com/personal-life-dashboard/](https://blog.superhuman.com/personal-life-dashboard/) 
sw [https://bugwarrior.readthedocs.io/en/latest/index.html](https://bugwarrior.readthedocs.io/en/latest/index.html) 
sw [https://bytedream.github.io/litbwraw/](https://bytedream.github.io/litbwraw/) 
sw [https://bytedream.github.io/litbwraw/](https://bytedream.github.io/litbwraw/) 
sw [https://charm.sh/](https://charm.sh/) 
sw [https://codeberg.org/kitten/app](https://codeberg.org/kitten/app)
sw [https://crates.io/crates/zellij-tile-utils/versions](https://crates.io/crates/zellij-tile-utils/versions) 
sw [https://datalorax.github.io/equatiomatic/articles/intro-equatiomatic.html](https://datalorax.github.io/equatiomatic/articles/intro-equatiomatic.html) 
sw [https://dev.to/anmolbaranwal/shortcut-to-find-open-source-projects-100x-faster-3lje](https://dev.to/anmolbaranwal/shortcut-to-find-open-source-projects-100x-faster-3lje) 
sw [https://dev.to/madza/19-github-repositories-every-developer-should-bookmark-13bd](https://dev.to/madza/19-github-repositories-every-developer-should-bookmark-13bd) 
sw [https://dev.to/opensauced/what-is-your-favorite-open-source-alternative-to-proprietary-software-fa2](https://dev.to/opensauced/what-is-your-favorite-open-source-alternative-to-proprietary-software-fa2) 
sw [https://devclass.com/2024/01/25/rust-based-zed-editor-now-open-source-with-built-in-support-for-openai-and-github-copilot/](https://devclass.com/2024/01/25/rust-based-zed-editor-now-open-source-with-built-in-support-for-openai-and-github-copilot/)
sw [https://developers.google.com/drive/api/guides/search-files#java](https://developers.google.com/drive/api/guides/search-files%23java) → list all drive files 
sw [https://digital-defense.io/](https://digital-defense.io/)
sw [https://dillo-browser.github.io/](https://dillo-browser.github.io/)
sw [https://docs.helix-editor.com/lang-support.html](https://docs.helix-editor.com/lang-support.html) crud tech stack 
sw [https://docs.rs/papyrus/latest/papyrus/](https://docs.rs/papyrus/latest/papyrus/)
sw [https://docs.runme.dev/](https://docs.runme.dev/)
sw [https://docs.xfce.org/xfce/thunar/hidden-settings#customising_thunar_with_css](https://docs.xfce.org/xfce/thunar/hidden-settings%23customising_thunar_with_css)
sw [https://docs.xfce.org/xfce/thunar/start](https://docs.xfce.org/xfce/thunar/start)
sw [https://epicbrowser.com/privacy-policy](https://epicbrowser.com/privacy-policy)
sw [https://f-droid.org/packages/com.foxdebug.acode/](https://f-droid.org/packages/com.foxdebug.acode/) 
sw [https://f-droid.org/packages/foundation.e.blisslauncher/](https://f-droid.org/packages/foundation.e.blisslauncher/) 
sw [https://f-droid.org/packages/org.localsend.localsend_app/](https://f-droid.org/packages/org.localsend.localsend_app/) 
sw [https://fcitx-im.org/](https://fcitx-im.org/) - Chinese input method 
sw [https://federicoterzi.com/raji/](https://federicoterzi.com/raji/)
sw [https://fengari.io/](https://fengari.io/) 
sw [https://fengari.io/](https://fengari.io/) 
sw [https://forums.debian.net/viewtopic.php?p=794502](https://forums.debian.net/viewtopic.php?p%3D794502) CLI screenshot tool
sw [https://gethomepage.dev/latest/](https://gethomepage.dev/latest/)
sw [https://git.sr.ht/~dmedinag/d/commit/2793d3b751883e19dc56c6cd6e42f0ad3e1e69fe](https://git.sr.ht/~dmedinag/d/commit/2793d3b751883e19dc56c6cd6e42f0ad3e1e69fe) nix config
sw [https://git.wtf/](https://git.wtf/)
sw [https://gitgitgadget.github.io/](https://gitgitgadget.github.io/)). Please follow Documentation/SubmittingPatches procedure for any of your improvements. 
sw [https://github.com/ADVisual161/Qtile_NotWin_Theme/tree/main](https://github.com/ADVisual161/Qtile_NotWin_Theme/tree/main)
sw [https://github.com/Airblader/unclutter-xfixes](https://github.com/Airblader/unclutter-xfixes), 
sw [https://github.com/AlynxZhou/showmethekey](https://github.com/AlynxZhou/showmethekey)
sw [https://github.com/Anomalocaridid/handlr-regex](https://github.com/Anomalocaridid/handlr-regex)
sw [https://github.com/ArtsyMacaw/wlogout/blob/master/layout](https://github.com/ArtsyMacaw/wlogout/blob/master/layout)
sw [https://github.com/Byron/gitoxide](https://github.com/Byron/gitoxide)
sw [https://github.com/CobaltBSD/neosurf?tab=readme-ov-file](https://github.com/CobaltBSD/neosurf?tab%3Dreadme-ov-file) neosurf
sw [https://github.com/CycloneDX/cyclonedx-python](https://github.com/CycloneDX/cyclonedx-python)
sw [https://github.com/Daniele-rolli/Beaver-Notes](https://github.com/Daniele-rolli/Beaver-Notes)
sw [https://github.com/Fabric-Development/fabric](https://github.com/Fabric-Development/fabric)
sw [https://github.com/Fabric-Development/fabric](https://github.com/Fabric-Development/fabric)
sw [https://github.com/GraphiteEditor/Graphite](https://github.com/GraphiteEditor/Graphite) 
sw [https://github.com/MartinThoma/flitz](https://github.com/MartinThoma/flitz)
sw [https://github.com/MatthiasGrandl/Loungy](https://github.com/MatthiasGrandl/Loungy)
sw [https://github.com/MubinMuhammad/MinimalSwayFX](https://github.com/MubinMuhammad/MinimalSwayFX)
sw [https://github.com/MubinMuhammad/MinimalSwayFX](https://github.com/MubinMuhammad/MinimalSwayFX)
sw [https://github.com/MubinMuhammad/MinimalSwayFX](https://github.com/MubinMuhammad/MinimalSwayFX)
sw [https://github.com/Nathan-Fenner/Ni](https://github.com/Nathan-Fenner/Ni)
sw [https://github.com/Nocxium/nChain](https://github.com/Nocxium/nChain)
sw [https://github.com/Openwords](https://github.com/Openwords) idea: package pipx natively, without python and pip dependencies 
sw [https://github.com/PROxZIMA/prism](https://github.com/PROxZIMA/prism) A beautiful, minimalist, static startpage 
sw [https://github.com/Paulo-Murilo-Dev/42screensaver](https://github.com/Paulo-Murilo-Dev/42screensaver)
sw [https://github.com/RiScJ/waybar-weather](https://github.com/RiScJ/waybar-weather)
sw [https://github.com/SergioRibera/sss](https://github.com/SergioRibera/sss)
sw [https://github.com/SoraTenshi/helix/tree/new-daily-driver](https://github.com/SoraTenshi/helix/tree/new-daily-driver) 
sw [https://github.com/StanGirard/quivr](https://github.com/StanGirard/quivr) 
sw [https://github.com/Stirling-Tools/Stirling-PDF](https://github.com/Stirling-Tools/Stirling-PDF)
sw [https://github.com/Thanatisia/distinstall-python](https://github.com/Thanatisia/distinstall-python) hn 
sw [https://github.com/TheWaWaR/simple-http-server](https://github.com/TheWaWaR/simple-http-server) 
sw [https://github.com/TomBursch/kitchenowl](https://github.com/TomBursch/kitchenowl) 
sw [https://github.com/Twins-Divyanshu-Sharma/Hex](https://github.com/Twins-Divyanshu-Sharma/Hex)
sw [https://github.com/TypicalAM/goread](https://github.com/TypicalAM/goread) TUI feed reader 
sw [https://github.com/VikParuchuri/surya](https://github.com/VikParuchuri/surya) - OCR 
sw [https://github.com/Wervice/Codelink](https://github.com/Wervice/Codelink)
sw [https://github.com/XPRNetwork/proton-cli](https://github.com/XPRNetwork/proton-cli)
sw [https://github.com/Xatta-Trone/medium-parser-extension](https://github.com/Xatta-Trone/medium-parser-extension)
sw [https://github.com/YaLTeR/niri](https://github.com/YaLTeR/niri)
sw [https://github.com/YiNNx/cmd-wrapped](https://github.com/YiNNx/cmd-wrapped) wallpapers 
sw [https://github.com/abenz1267/walker](https://github.com/abenz1267/walker)
sw [https://github.com/abi/screenshot-to-code](https://github.com/abi/screenshot-to-code) 
sw [https://github.com/adi1090x/rofi](https://github.com/adi1090x/rofi)
sw [https://github.com/ahrm/sioyek](https://github.com/ahrm/sioyek)
sw [https://github.com/andchir/openchatroulette](https://github.com/andchir/openchatroulette) 
sw [https://github.com/andreasgrafen/cascade](https://github.com/andreasgrafen/cascade)
sw [https://github.com/andreasgrafen/cascade](https://github.com/andreasgrafen/cascade)
sw [https://github.com/ankitects/anki/blob/main/docs/contributing.md](https://github.com/ankitects/anki/blob/main/docs/contributing.md) 
sw [https://github.com/aome510/hackernews-TUI](https://github.com/aome510/hackernews-TUI)
sw [https://github.com/archsinner/ais](https://github.com/archsinner/ais)
sw [https://github.com/atinylittleshell/TerminalOne](https://github.com/atinylittleshell/TerminalOne) 
sw [https://github.com/be5invis/Iosevka](https://github.com/be5invis/Iosevka) 
sw [https://github.com/bluebyt/Wayfire-dots](https://github.com/bluebyt/Wayfire-dots)
sw [https://github.com/bokub/chalk-animation](https://github.com/bokub/chalk-animation)
sw [https://github.com/bugaevc/wl-clipboard](https://github.com/bugaevc/wl-clipboard)
sw [https://github.com/bulletmark/edir](https://github.com/bulletmark/edir)
sw [https://github.com/charmbracelet/huh](https://github.com/charmbracelet/huh) 
sw [https://github.com/charmbracelet/pop](https://github.com/charmbracelet/pop) 
sw [https://github.com/cosmicwanderer7/mkgit](https://github.com/cosmicwanderer7/mkgit)
sw [https://github.com/crossterm-rs/crossterm](https://github.com/crossterm-rs/crossterm) 
sw [https://github.com/cunarist/rinf](https://github.com/cunarist/rinf) - framework - Rust for native business logic, Flutter for flexible and beautiful GUI 
sw [https://github.com/dankamongmen/notcurses](ghttps://github.com/dankamongmen/notcurses)
sw [https://github.com/daviwil/channel-x](https://github.com/daviwil/channel-x)
sw [https://github.com/deusaquilus/pprint-kotlin](https://github.com/deusaquilus/pprint-kotlin) 
sw [https://github.com/doron-cohen/antidot](https://github.com/doron-cohen/antidot) clean up HOME
sw [https://github.com/dylanaraps/sowm](https://github.com/dylanaraps/sowm) 
sw [https://github.com/ekzhang/sshx](https://github.com/ekzhang/sshx)
sw [https://github.com/emavgl/oinkoin](https://github.com/emavgl/oinkoin) - Oinkoin is a flutter app for helping you managing your expenses. No internet required. 
sw [https://github.com/engstrand-config/dwl-guile](https://github.com/engstrand-config/dwl-guile) 
sw [https://github.com/engstrand-config/home-service-dwl-guile](https://github.com/engstrand-config/home-service-dwl-guile) 
sw [https://github.com/envio-cli/envio](https://github.com/envio-cli/envio)
sw [https://github.com/eonpatapon/mpDris2](https://github.com/eonpatapon/mpDris2) - MPRIS V2.1 support for mpd 
sw [https://github.com/eradman/entr](https://github.com/eradman/entr)
sw [https://github.com/evcxr/evcxr](https://github.com/evcxr/evcxr)
sw [https://github.com/fcitx/fcitx5](https://github.com/fcitx/fcitx5) 
sw [https://github.com/flydelabs/flyde](https://github.com/flydelabs/flyde)
sw [https://github.com/fzyzcjy/flutter_rust_bridge](https://github.com/fzyzcjy/flutter_rust_bridge) 
sw [https://github.com/gabm/Satty](https://github.com/gabm/Satty) 
sw [https://github.com/gabrielzschmitz/Tomato.C](https://github.com/gabrielzschmitz/Tomato.C)
sw [https://github.com/grappas/dotfiles/blob/main/misc%2Fscripts%2Fterm-resizer.sh](ghttps://github.com/grappas/dotfiles/blob/main/misc%252Fscripts%252Fterm-resizer.sh)
sw [https://github.com/hallonfras/qutewal](https://github.com/hallonfras/qutewal) 
sw [https://github.com/harishnkr/bsol](https://github.com/harishnkr/bsol)
sw [https://github.com/hexaredecimal/ML](https://github.com/hexaredecimal/ML)
sw [https://github.com/home-assistant](https://github.com/home-assistant) 
sw [https://github.com/hrkfdn/ncspot](https://github.com/hrkfdn/ncspot)
sw [https://github.com/http-party/http-server](https://github.com/http-party/http-server) 
sw [https://github.com/hyprwm/hyprlock](https://github.com/hyprwm/hyprlock)
sw [https://github.com/iberianpig/fusuma](https://github.com/iberianpig/fusuma) - multitouch gestures 
sw [https://github.com/ibhagwan/fzf-lua](https://github.com/ibhagwan/fzf-lua)
sw [https://github.com/inoxlang/inox](https://github.com/inoxlang/inox)
sw [https://github.com/j0giwa/ansible](https://github.com/j0giwa/ansible)
sw [https://github.com/jagajaga/my_configs/blob/d64c7a11f9581c715241744040b5976809909b04/.nixpkgs/desktop_config.nix#L55](https://github.com/jagajaga/my_configs/blob/d64c7a11f9581c715241744040b5976809909b04/.nixpkgs/desktop_config.nix%23L55)
sw [https://github.com/jcs/xbanish](https://github.com/jcs/xbanish) 
sw [https://github.com/jeffnguyen695/tmux-zoxide-session](ghttps://github.com/jeffnguyen695/tmux-zoxide-session)
sw [https://github.com/joshcbrown/caydence/tree/main](https://github.com/joshcbrown/caydence/tree/main)
sw [https://github.com/jszczerbinsky/lwp](https://github.com/jszczerbinsky/lwp)
sw [https://github.com/julianpoy/recipesage](https://github.com/julianpoy/recipesage) 
sw [https://github.com/jumper047/librera-sync](https://github.com/jumper047/librera-sync) 
sw [https://github.com/kando-menu/kando](https://github.com/kando-menu/kando)
sw [https://github.com/kando-menu/kando](https://github.com/kando-menu/kando) 
sw [https://github.com/kraanzu/dooit](https://github.com/kraanzu/dooit) **Elevate Your Task Management With Ease** 
sw [https://github.com/kraanzu/smassh](https://github.com/kraanzu/smassh)
sw [https://github.com/kraanzu/smassh](https://github.com/kraanzu/smassh)
sw [https://github.com/kushall09/victorconky](https://github.com/kushall09/victorconky) 
sw [https://github.com/larsbrinkhoff/screenkey](https://github.com/larsbrinkhoff/screenkey) - scrrencast tool 
sw [https://github.com/las-nish/Behansa](https://github.com/las-nish/Behansa)
sw [https://github.com/ldelossa/way-shell](https://github.com/ldelossa/way-shell)
sw [https://github.com/ldelossa/way-shell](https://github.com/ldelossa/way-shell)
sw [https://github.com/leo-arch/clifm](https://github.com/leo-arch/clifm) 
sw [https://github.com/libxmq/xmq](https://github.com/libxmq/xmq)
sw [https://github.com/lneugebauer/nextcloud-cookbook](https://github.com/lneugebauer/nextcloud-cookbook) 
sw [https://github.com/lovesegfault/beautysh](https://github.com/lovesegfault/beautysh)
sw [https://github.com/luakit/luakit/commits/develop/](https://github.com/luakit/luakit/commits/develop/)
sw [https://github.com/marcelohdez/dim](https://github.com/marcelohdez/dim)
sw [https://github.com/matjam/smoothpaper](https://github.com/matjam/smoothpaper)
sw [https://github.com/matjam/smoothpaper](https://github.com/matjam/smoothpaper)# Untitled
sw [https://github.com/michaelklishin/git-wtf](https://github.com/michaelklishin/git-wtf)
sw [https://github.com/mickael-kerjean/filestash](https://github.com/mickael-kerjean/filestash) 
sw [https://github.com/micr0-dev/lexido](https://github.com/micr0-dev/lexido)
sw [https://github.com/microsoft/inshellisense](https://github.com/microsoft/inshellisense) 
sw [https://github.com/microsoft/vscode-html-languageservice](ghttps://github.com/microsoft/vscode-html-languageservice)
sw [https://github.com/nasan016/webshell](https://github.com/nasan016/webshell) 
sw [https://github.com/nicefaa6waa/genshin-sddm-theme](https://github.com/nicefaa6waa/genshin-sddm-theme)
sw [https://github.com/nil70n/floating-help](https://github.com/nil70n/floating-help)
sw [https://github.com/no-venv/modded-darkreader](https://github.com/no-venv/modded-darkreader)
sw [https://github.com/notKimu/dotfiles/tree/master/Starlight](https://github.com/notKimu/dotfiles/tree/master/Starlight)
sw [https://github.com/o2sh/onefetch](https://github.com/o2sh/onefetch)
sw [https://github.com/onagre-launcher/onagre](https://github.com/onagre-launcher/onagre)
sw [https://github.com/openfoodfacts/openfoodfacts-server](https://github.com/openfoodfacts/openfoodfacts-server) 
sw [https://github.com/ormai/snake](https://github.com/ormai/snake)
sw [https://github.com/ospinto/dBug](https://github.com/ospinto/dBug) - PHP tool 
sw [https://github.com/outfoxxed/hy3](https://github.com/outfoxxed/hy3)
sw [https://github.com/pandoc-ext/info](https://github.com/pandoc-ext/info)
sw [https://github.com/parazeeknova/nyxtext](https://github.com/parazeeknova/nyxtext)
sw [https://github.com/paveldedik/ludic/tree/main](https://github.com/paveldedik/ludic/tree/main)
sw [https://github.com/paw-lu/nbpreview](https://github.com/paw-lu/nbpreview)
sw [https://github.com/pdf/hyprpanel](https://github.com/pdf/hyprpanel)
sw [https://github.com/poetaman/arttime](https://github.com/poetaman/arttime) 
sw [https://github.com/pop-os/cosmic-files](https://github.com/pop-os/cosmic-files)
sw [https://github.com/project-gauntlet/gauntlet](https://github.com/project-gauntlet/gauntlet)
sw [https://github.com/pypa/pipx](https://github.com/pypa/pipx) try Debian? Gentoo? 
sw [https://github.com/pythops/bluetui](https://github.com/pythops/bluetui)
sw [https://github.com/pyx-project/pyx](https://github.com/pyx-project/pyx) 
sw [https://github.com/ralphbean/bugwarrior](https://github.com/ralphbean/bugwarrior) Compare sourcehut, codeberg, gitlab to github -> which have something analogous to an organization? (Important for mirroring my organizations -> otherwise separate account? Stay on Github? All in same account? Nah, there MUST be a way)**Steve Oualline - Wicked Cool Perl Scripts : Useful Perl Scripts That Solve Difficult Problems** 
sw [https://github.com/ralphbean/prioritize](https://github.com/ralphbean/prioritize) 
sw [https://github.com/redpenguinyt/display3d](https://github.com/redpenguinyt/display3d) 
sw [https://github.com/redpenguinyt/display3d](https://github.com/redpenguinyt/display3d) lock screen 
sw [https://github.com/redpenguinyt/gemini-rust](https://github.com/redpenguinyt/gemini-rust) 
sw [https://github.com/rohankishore/Aura-Text](https://github.com/rohankishore/Aura-Text) → example of Nuitka build 
sw [https://github.com/saulpw/visidata](https://github.com/saulpw/visidata)
sw [https://github.com/sddm/sddm/issues/1316](https://github.com/sddm/sddm/issues/1316)
sw [https://github.com/sddm/sddm/issues/1713](https://github.com/sddm/sddm/issues/1713)
sw [https://github.com/sherlock-project/sherlock](https://github.com/sherlock-project/sherlock)
sw [https://github.com/ssleert/nitch](https://github.com/ssleert/nitch)
sw [https://github.com/sweetbbak/hexxy](ghttps://github.com/sweetbbak/hexxy)
sw [https://github.com/sxyazi/yazi](https://github.com/sxyazi/yazi)
sw [https://github.com/sxyazi/yazi](https://github.com/sxyazi/yazi) 
sw [https://github.com/syphon-org/syphon](https://github.com/syphon-org/syphon) 
sw [https://github.com/tboox/tbox](https://github.com/tboox/tbox) 
sw [https://github.com/textbrowser/dooble](https://github.com/textbrowser/dooble)
sw [https://github.com/thermitegod/spacefm](https://github.com/thermitegod/spacefm)
sw [https://github.com/topics/zellij-plugin](https://github.com/topics/zellij-plugin) 
sw [https://github.com/trizen/pipe-viewer](https://github.com/trizen/pipe-viewer) - yt client 
sw [https://github.com/uazo/cromite](https://github.com/uazo/cromite) 
sw [https://github.com/uutils/coreutils](https://github.com/uutils/coreutils) → read as an example of good Rust code 
sw [https://github.com/vhyrro/luarocks-build-rust-binary](https://github.com/vhyrro/luarocks-build-rust-binary) Nyxt talk 
sw [https://github.com/watchexec/watchexec](https://github.com/watchexec/watchexec) perfect color scheme 
sw [https://github.com/wukko/cobalt](https://github.com/wukko/cobalt) 
sw [https://github.com/xkbcommon/libxkbcommon/blob/master/include/xkbcommon/xkbcommon-keysyms.h](https://github.com/xkbcommon/libxkbcommon/blob/master/include/xkbcommon/xkbcommon-keysyms.h)
sw [https://github.com/ynqa/jnv](https://github.com/ynqa/jnv)
sw [https://github.com/zbeaver/cafe](https://github.com/zbeaver/cafe) Keep Your TODO List & Notes Simple With Dooit - YouTube 
sw [https://gitlab.com/christosangel/basht](https://gitlab.com/christosangel/basht)
sw [https://gitlab.com/mildlyparallel/pscircle/blob/master/examples/pscircle.service](https://gitlab.com/mildlyparallel/pscircle/blob/master/examples/pscircle.service)
sw [https://gnuzilla.gnu.org/mozzarella/](https://gnuzilla.gnu.org/mozzarella/)
sw [https://gokrazy.org/](https://gokrazy.org/)
sw [https://google.github.io/typograms/](https://google.github.io/typograms/)
sw [https://gradle.org/](https://gradle.org/)
sw [https://guix.gnu.org/en/blog/2018/guix-on-android/](https://guix.gnu.org/en/blog/2018/guix-on-android/)
sw [https://gura.netlify.app/](https://gura.netlify.app/) personal website thread 
sw [https://halium.org/](https://halium.org/) 
sw [https://html-first.com/](https://html-first.com/) 
sw [https://icecatbrowser.org/](https://icecatbrowser.org/)
sw [https://joedrago.github.io/xyy/](https://joedrago.github.io/xyy/) 
sw [https://jonathanh.co.uk/blog/mutt-setup/](https://jonathanh.co.uk/blog/mutt-setup/)
sw [https://kbin.social/](https://kbin.social/) 
sw [https://labs.leaningtech.com/blog/cheerpj-3.0](https://labs.leaningtech.com/blog/cheerpj-3.0)
sw [https://lib.rs/crates/synoptic](https://lib.rs/crates/synoptic) 
sw [https://lunarmodules.github.io/busted/](https://lunarmodules.github.io/busted/) elegant lua testing
sw [https://luvit.io/docs.html](https://luvit.io/docs.html) 
sw [https://m.youtube.com/watch%3Fv%3D_7LTwnAaQ3k) rss
sw [https://mastodon.social/@matthiasott/111447516296786143](https://mastodon.social/@matthiasott/111447516296786143) rewrite tw in go 
sw [https://metadatacleaner.romainvigier.fr/](https://metadatacleaner.romainvigier.fr/)
sw [https://mitchellh.com/ghostty](https://mitchellh.com/ghostty) 
sw [https://monaspace.githubnext.com/](https://monaspace.githubnext.com/) 
sw [https://mrmr.io/til/prettier](https://mrmr.io/til/prettier)
sw [https://mrossinek.gitlab.io/programming/cobib-goes-textualized/](https://mrossinek.gitlab.io/programming/cobib-goes-textualized/) 
sw [https://mrossinek.gitlab.io/programming/introducing-cobib/](https://mrossinek.gitlab.io/programming/introducing-cobib/) 
sw [https://notabug.org/g0tsu/litemdview](https://notabug.org/g0tsu/litemdview) (suckless md viewer) 
sw [https://openalternative.co/](https://openalternative.co/)
sw [https://osssoftware.org/](https://osssoftware.org/) 
sw [https://overapi.com/](https://overapi.com/) 
sw [https://pandoc.org/extras.html](https://pandoc.org/extras.html)
sw [https://prismjs.com/](https://prismjs.com/)
sw [https://prismjs.com/](https://prismjs.com/) 
sw [https://pygments.org/docs/cmdline/](https://pygments.org/docs/cmdline/) 
sw [https://pygments.org/languages/](https://pygments.org/languages/) 
sw [https://pyte.readthedocs.io/en/latest/tutorial.html](https://pyte.readthedocs.io/en/latest/tutorial.html) 
sw [https://samwho.dev/numbers/](https://samwho.dev/numbers/)
sw [https://search.nixos.org/packages?channel=unstable&from=0&size=50&sort=relevance&type=packages&query=nemo](https://search.nixos.org/packages?channel%3Dunstable%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dnemo)
sw [https://securityboulevard.com/2023/06/avoid-the-hack-3-best-privacy-browser-picks-for-android/](https://securityboulevard.com/2023/06/avoid-the-hack-3-best-privacy-browser-picks-for-android/)
sw [https://serverracket.com/](https://serverracket.com/)
sw [https://slint.dev/](https://slint.dev/)
sw [https://stackshare.io/tech-stack-file](https://stackshare.io/tech-stack-file) 
sw [https://super-productivity.com/](https://super-productivity.com/)
sw [https://superuser.com/questions/1726375/how-can-i-always-yank-text-to-clipboard](https://superuser.com/questions/1726375/how-can-i-always-yank-text-to-clipboard) 
sw [https://t3n.de/news/kostenfreie-open-source-alternativen-anwendungen-finden-1596126/](https://t3n.de/news/kostenfreie-open-source-alternativen-anwendungen-finden-1596126/) 
sw [https://talyian.github.io/ansicolors/](https://talyian.github.io/ansicolors/) 
sw [https://taskfile.dev/](https://taskfile.dev/) 
sw [https://thenewstack.io/baserow-a-no-code-open-source-alternative-to-airtable/](https://thenewstack.io/baserow-a-no-code-open-source-alternative-to-airtable/) 
sw [https://thenewstack.io/what-is-ebpf/](https://thenewstack.io/what-is-ebpf/) 
sw [https://thorium.rocks/](https://thorium.rocks/)
sw [https://til.simonwillison.net/python/stdlib-cli-tools](https://til.simonwillison.net/python/stdlib-cli-tools)
sw [https://tow-boot.org/](https://tow-boot.org/)
sw [https://tweag.github.io/kernmantle/scale-by-the-bay-slides.html#27](https://tweag.github.io/kernmantle/scale-by-the-bay-slides.html%2327)
sw [https://ubports.com/en/](https://ubports.com/en/)
sw [https://ubuntu.com/blog/ubuntu-core-an-immutable-linux-desktop](https://ubuntu.com/blog/ubuntu-core-an-immutable-linux-desktop) 
sw [https://ui.toast.com/](https://ui.toast.com/) web UI components 
sw [https://v5.chriskrycho.com/essays/jj-init/](https://v5.chriskrycho.com/essays/jj-init/)
sw [https://vhyrro.github.io/](ghttps://vhyrro.github.io/)
sw [https://wall.alphacoders.com/](https://wall.alphacoders.com/) 
sw [https://wbo.ophir.dev/](https://wbo.ophir.dev/) 
sw [https://www.claws-mail.org/](https://www.claws-mail.org/) Wayland in 2023 
sw [https://www.githubwrapped.io/](https://www.githubwrapped.io/) 
sw [https://www.heise.de/news/JavaScript-Server-in-Rust-WinterJS-is-Coming-9653110.html](https://www.heise.de/news/JavaScript-Server-in-Rust-WinterJS-is-Coming-9653110.html)
sw [https://www.home-assistant.io/](https://www.home-assistant.io/) 
sw [https://www.home-assistant.io/integrations/matrix/](https://www.home-assistant.io/integrations/matrix/) Autogen video 
sw [https://www.jetporch.com/](https://www.jetporch.com/) 
sw [https://www.netsurf-browser.org/](https://www.netsurf-browser.org/)
sw [https://www.omgubuntu.co.uk/2024/01/shutter-on-wayland](https://www.omgubuntu.co.uk/2024/01/shutter-on-wayland)
sw [https://www.omgubuntu.co.uk/2024/02/wunderlist-returns-as-superlist-more-or-less](https://www.omgubuntu.co.uk/2024/02/wunderlist-returns-as-superlist-more-or-less)
sw [https://www.pantsbuild.org/](https://www.pantsbuild.org/) 
sw [https://www.primenote.cc/](https://www.primenote.cc/)
sw [https://www.reddit.com/r/commandline/s/q7nN51fBVY](https://www.reddit.com/r/commandline/s/q7nN51fBVY)
sw [https://www.reddit.com/r/emacs/s/HJemdxK4sd](https://www.reddit.com/r/emacs/s/HJemdxK4sd) reorg
sw [https://www.reddit.com/r/git/s/bu6LppB573](https://www.reddit.com/r/git/s/bu6LppB573) git log alias
sw [https://www.reddit.com/r/neovim/s/ABJNQ1S1ux](https://www.reddit.com/r/neovim/s/ABJNQ1S1ux) lazygit vs neogit
sw [https://www.reddit.com/r/neovim/s/KDJAKvV48K](ghttps://www.reddit.com/r/neovim/s/KDJAKvV48K) Lisp plugin system for Helix
sw [https://www.reddit.com/r/swaywm/s/08GyymgbFJ](https://www.reddit.com/r/swaywm/s/08GyymgbFJ) electron apps on wayland
sw [https://www.reddit.com/r/swaywm/s/f60rY9AMIV](https://www.reddit.com/r/swaywm/s/f60rY9AMIV) DE experience on Sway
sw [https://www.reddit.com/r/unixporn/s/ZUqJ2go4cX](https://www.reddit.com/r/unixporn/s/ZUqJ2go4cX) terminal flashcards
sw [https://www.shuttle.rs/blog/2023/12/20/loco-rust-rails](https://www.shuttle.rs/blog/2023/12/20/loco-rust-rails) 
sw [https://www.speechify.com/mobile/](https://www.speechify.com/mobile/)
sw [https://www.squaresapp.org/rawjs/](https://www.squaresapp.org/rawjs/) 
sw [https://www.tampermonkey.net/](https://www.tampermonkey.net/) 
sw [https://www.techradar.com/best/best-open-source-software](https://www.techradar.com/best/best-open-source-software)
sw [https://www.tecmint.com/linux-file-managers/](https://www.tecmint.com/linux-file-managers/)
sw [https://www.waveterm.dev/](https://www.waveterm.dev/) 
sw [https://www.youtube.com/watch?v=hI4On2HPElc](https://www.youtube.com/watch?v%3DhI4On2HPElc) 
sw [https://yazi-rs.github.io/](https://yazi-rs.github.io/)
sw [https://zed.dev/blog/zed-is-now-open-source](https://zed.dev/blog/zed-is-now-open-source) 
sw [https://zellij.dev/news/new-plugin-system/](https://zellij.dev/news/new-plugin-system/) 
sw [https://zellij.dev/screencasts/](https://zellij.dev/screencasts/) 
sw [hugin](https://hugin.sourceforge.io/)
sw [humanfriendly: Human friendly input/output in Python — humanfriendly 10.0 documentation](https://humanfriendly.readthedocs.io/en/latest/) 
sw [hyprwm/hyprland-welcome: Hyprland's welcome app, written in qt.](https://github.com/hyprwm/hyprland-welcome)
sw [i3: i3 User’s Guide](https://i3wm.org/docs/userguide.html%23_default_keybindings)
sw [ii.com: Getting Started With qutebrowser](http://www.ii.com/qutebrowser-getting-started/)
sw [jbuchermn/newm: Wayland compositor](ghttps://github.com/jbuchermn/newm)
sw [jesseduffield/lazycli: Turn static CLI commands into TUIs with ease](https://github.com/jesseduffield/lazycli)
sw [jesseduffield/lazycli: Turn static CLI commands into TUIs with ease](https://github.com/jesseduffield/lazycli)
sw [jetporch](https://www.jetporch.com/)
sw [jmhobbs/terminal-parrot](ghttps://github.com/jmhobbs/terminal-parrot)
sw [jonschoning/espial: Espial is an open-source, web-based bookmarking server.](ghttps://github.com/jonschoning/espial)
sw [kas-elvirov/gloc: :calendar: Browser extension: counts lines of code on GitHub](https://github.com/kas-elvirov/gloc)
sw [kitten/kittens.small-web.org: Kitten distribution management place. Handles uploads and downloads of Kitten distributions. - kittens.small-web.org - Codeberg.org](https://codeberg.org/kitten/kittens.small-web.org)
sw [kyoheiu/felix at v2.2.2](ghttps://github.com/kyoheiu/felix/tree/v2.2.2)
sw [laurikari/tre: The approximate regex matching library and agrep command line tool.](https://github.com/laurikari/tre/) 
sw [libfm-1.3.2](ghttps://www.linuxfromscratch.org/blfs/view/12.0//lxde/libfm.html)
sw [line-profiler · PyPI](https://pypi.org/project/line-profiler/)
sw [lnbits/lnbits: LNbits, free and open-source Lightning wallet and accounts system.](https://github.com/lnbits/lnbits)
sw [lrustand/guix-pinephonepro: Fork of Andrew Tropin's Guix system config for Pinephone Pro](https://github.com/lrustand/guix-pinephonepro) 
sw [luafun/luafun: Lua Fun is a high-performance functional programming library for Lua designed with LuaJIT's trace compiler in mind.](https://github.com/luafun/luafun)
sw [lxqt/pcmanfm-qt: File manager and desktop icon manager (Qt port of PCManFM and libfm)](https://github.com/lxqt/pcmanfm-qt)
sw [marimo-team/marimo: A reactive notebook for Python — run reproducible experiments, execute as a script, deploy as an app, and version with git.](https://github.com/marimo-team/marimo)
sw [marvinkreis/rofi-file-browser-extended: Use rofi to quickly open files](https://github.com/marvinkreis/rofi-file-browser-extended)
sw [matplotlib-backend-wezterm · PyPI](ghttps://pypi.org/project/matplotlib-backend-wezterm/)
sw [matrix-org/matrix-hookshot: A bridge between Matrix and multiple project management services, such as GitHub, GitLab and JIRA.](https://github.com/matrix-org/matrix-hookshot)
sw [monaspace](https://monaspace.githubnext.com/)
sw [motioneye-project/motioneyeos: A Video Surveillance OS For Single-board Computers](https://github.com/motioneye-project/motioneyeos)
sw [ndortega/Oxygen.jl: A breath of fresh air for programming web apps in Julia](https://github.com/ndortega/Oxygen.jl)
sw [ne, the nice editor](https://ne.di.unimi.it/)
sw [nik012003/ripdrag: Drag and Drop utilty written in Rust and GTK4](https://github.com/nik012003/ripdrag) 
sw [nixpkgs/pkgs/applications/file-managers/nimmm/default.nix at nixos-23.11 · NixOS/nixpkgs](ghttps://github.com/NixOS/nixpkgs/blob/nixos-23.11/pkgs/applications/file-managers/nimmm/default.nix)
sw [nwg-shell | Installer & meta-package for the nwg-shell project: a GTK3-based shell for sway and Hyprland Wayland compositors](ghttps://nwg-piotr.github.io/nwg-shell/)
sw [oinkoin](https://github.com/emavgl/oinkoin)
sw [openstyles/stylus: Stylus - Userstyles Manager](ghttps://github.com/openstyles/stylus/tree/master)
sw [openwords](https://github.com/Openwords)
sw [oss](https://dev.to/opensauced/what-is-your-favorite-open-source-alternative-to-proprietary-software-fa2)
sw [otakar-smrz/elixir-fm: ElixirFM Functional Arabic Morphology](ghttps://github.com/otakar-smrz/elixir-fm)
sw [pantsbuild](https://www.pantsbuild.org/)
sw [parsing - Writing a parser from scratch in Haskell - Stack Overflow](ghttps://stackoverflow.com/questions/20660782/writing-a-parser-from-scratch-in-haskell)
sw [pop-os/cosmic-edit: COSMIC Text Editor](https://github.com/pop-os/cosmic-edit) 
sw [pop-os/cosmic-epoch: Next generation Cosmic desktop environment](ghttps://github.com/pop-os/cosmic-epoch)
sw [pop-os/cosmic-files: WIP COSMIC file manager](ghttps://github.com/pop-os/cosmic-files)
sw [pop-os/cosmic-randr at 88c570cf8b88beae1cf4f3e2d412cc64ec49cd7c](ghttps://github.com/pop-os/cosmic-randr/tree/88c570cf8b88beae1cf4f3e2d412cc64ec49cd7c)
sw [prioritize ](https://github.com/ralphbean/prioritize)
sw [probonopd/dfilemanager: File manager written in Qt/C++ for a Mac-like experience](ghttps://github.com/probonopd/dfilemanager?tab%3Dreadme-ov-file)
sw [pyscreenshot 3.1 on PyPI - Libraries.io](ghttps://libraries.io/pypi/pyscreenshot)
sw [quickstrom/quickstrom: High-confidence browser testing](https://github.com/quickstrom/quickstrom/tree/main)
sw [qutebrowser/qutebrowser at maint/flaky_js_tests](https://github.com/qutebrowser/qutebrowser/tree/maint/flaky_js_tests)
sw [qw3rtman/git-fire: :fire: Save Your Code in an Emergency](https://github.com/qw3rtman/git-fire)
sw [rinf](https://github.com/cunarist/rinf)
sw [rvaiya/warpd: A modal keyboard-driven virtual pointer](ghttps://github.com/rvaiya/warpd)
sw [serversideup/spin: 🚀 Replicate your production environment locally using Docker. Just run "spin up". It's really that easy.](https://github.com/serversideup/spin)
sw [slim: Functional reactive user interface programming](ghttps://hackage.haskell.org/package/slim)
sw [snappy | A fast compressor/decompressor](https://google.github.io/snappy/) 
sw [solanum](https://apps.gnome.org/Solanum/)
sw [src/Dhall/Parser.hs](ghttps://hackage.haskell.org/package/dhall-1.6.0/docs/src/Dhall-Parser.html)
sw [st - NixOS Wiki](ghttps://nixos.wiki/wiki/St%23Patching)
sw [swayfx/flake.nix at master · WillPower3309/swayfx](ghttps://github.com/WillPower3309/swayfx/blob/master/flake.nix)
sw [swaywm/sway: i3-compatible Wayland compositor](ghttps://github.com/swaywm/sway)
sw [systemd_in_suse_linux_enterprise_12_white_paper.pdf](ghttps://documentation.suse.com/external-tree/en-us/sles/12-SP4/systemd_in_suse_linux_enterprise_12_white_paper.pdf)
sw [taichi-dev/taichi: Productive & portable high-performance programming in Python.](ghttps://github.com/taichi-dev/taichi)
sw [tampermonkey](https://www.freecodecamp.org/news/customize-website-experience-with-tampermonkey/)**[How to Use Tampermonkey to Improve a Website's UI – Example Using freeCodeCamp](https://www.freecodecamp.org/news/customize-website-experience-with-tampermonkey/)** 
sw [taskfile ](https://taskfile.dev/)
sw [tchx84/Portfolio: A minimalist file manager for those who want to use Linux mobile devices.](ghttps://github.com/tchx84/Portfolio)
sw [toast](https://ui.toast.com/)
sw [tweag/nickel: Better configuration for less](ghttps://github.com/tweag/nickel)
sw [visurf: Minimal web browser based on netsurf](ghttps://sr.ht/~sircmpwn/visurf/)
sw [vstakhov/libucl: Universal configuration library parser](https://github.com/vstakhov/libucl)
sw [warptools/warpforge: a build tool -- based on "hashes go in, hashes come out" and hermetic, containerized environments for every step.](https://github.com/warptools/warpforge)
sw [warptools](https://github.com/warptools)
sw [wayflan: From-scratch Wayland client for Common Lisp](ghttps://sr.ht/~shunter/wayflan/)
sw [wyeb | a vim-like webkit2gtk web browser](ghttps://wyeb.org/)
sw [xvzftube (xvzftube) / Repositories](ghttps://github.com/xvzftube?tab%3Drepositories)
sw [xvzftube/darknerdthemes: Dark ggplots themes for nerds](ghttps://github.com/xvzftube/darknerdthemes)
sw [zoxide has forever improved the way I navigate in the terminal. - YouTube](ghttps://www.youtube.com/watch?v%3DaghxkpyRVDY)
sw [~emersion/wlr-randr - An xrandr clone for wlroots compositors - sourcehut git](https://git.sr.ht/~emersion/wlr-randr)
sw [~shinyzenith/swhkd - Sxhkd clone for Wayland (works on TTY and X11 too) - sourcehut git](ghttps://git.sr.ht/~shinyzenith/swhkd)
sw [~sircmpwn/hare - The Hare programming language - sourcehut git](ghttps://git.sr.ht/~sircmpwn/hare)
sw [🔥 5 Tweaks for a Productive Terminal - by Roy Straub](ghttps://www.codecraftr.nl/p/tweaks-for-productive-terminal)
sw [🦀 RUST y HTMX | Creamos una web con Rust | Parte 1](https://www.youtube.com/watch?v%3Dfcc5KRmHZgI)
sw appflowy [Self-hosting AppFlowy for free Using Supabase - AppFlowy Docs](ghttps://docs.appflowy.io/docs/guides/appflowy/self-hosting-appflowy-using-supabase)
sw bootloader / kernel hardening [](https://www.reddit.com/r/NixOS/s/UhoOeQnx6T)
sw browser [https://github.com/dr460nf1r3/firedragon-browser](https://github.com/dr460nf1r3/firedragon-browser) 
sw browser [https://greasyfork.org/](https://greasyfork.org/) 
sw browser [https://greasyfork.org/en/scripts/470753-mastodon-birdui-style-override](https://greasyfork.org/en/scripts/470753-mastodon-birdui-style-override) 
sw browser [https://greasyfork.org/en](https://greasyfork.org/en) 
sw browser extension [bug: chromium.extensions don't work for brave or ungoogled-chromium · Issue #2216 · nix-community/home-manager](ghttps://github.com/nix-community/home-manager/issues/2216%23issuecomment-917507881)
sw clockodo [nyantec/clockodo.py: Python API for clocko:do](https://github.com/nyantec/clockodo.py) 
sw fetch [https://blog.thms.uk/fedifetcher](https://blog.thms.uk/fedifetcher)
sw fetch [https://github.com/13-CF/afetch](https://github.com/13-CF/afetch)
sw fetch [https://github.com/KikyTokamuro/fetch.scm](https://github.com/KikyTokamuro/fetch.scm)
sw fetch [https://github.com/Rosettea/bunnyfetch](https://github.com/Rosettea/bunnyfetch)
sw fetch [https://github.com/balena-io/balena-cli](https://github.com/balena-io/balena-cli)
sw fetch [https://github.com/kira64xyz/yafetch](https://github.com/kira64xyz/yafetch)
sw fetch [https://github.com/sondr3/git-ignore](https://github.com/sondr3/git-ignore)
sw fetch [https://github.com/ssleert/nitch](https://github.com/ssleert/nitch)
sw greeter [Greetd - NixOS Wiki](ghttps://nixos.wiki/wiki/Greetd)
sw greeter [Marcus Britanicus / QtGreet · GitLab](ghttps://gitlab.com/marcusbritanicus/QtGreet)
sw greeter [Vawlpe/hgreet: Haskell package to interact with the greetd daemon trough it's IPC protocol.](ghttps://github.com/Vawlpe/hgreet)
sw greeter [apognu/tuigreet: Graphical console greeter for greetd](ghttps://github.com/apognu/tuigreet)
sw greeter [hgreet/hgreet-example at main · Vawlpe/hgreet](ghttps://github.com/Vawlpe/hgreet/tree/main/hgreet-example)
sw greeter [rharish101/ReGreet: Clean and customizable greeter for greetd](ghttps://github.com/rharish101/ReGreet)
sw greeter [~kennylevinsen/dlm - The Dumb Login Manager, an fbdev greeter for greetd - sourcehut git](ghttps://git.sr.ht/~kennylevinsen/dlm)
sw greeter [~kennylevinsen/gtkgreet - Gtk greeter for greetd - sourcehut git](ghttps://git.sr.ht/~kennylevinsen/gtkgreet)
sw grid: window positions and sizes based on a regular NxM grid. May be automatic (like wmfs, monsterwm) or manual (like Subtle).
sw jira [https://github.com/ankitpokhrel/jira-cli](https://github.com/ankitpokhrel/jira-cli) 
sw libraries: pigeon, finch, libpurple
sw library genesis api [](https://search.nixos.org/packages?channel%3D23.11%26show%3Dlibgen-cli%26from%3D0%26size%3D50%26sort%3Drelevance%26type%3Dpackages%26query%3Dlibgen)
sw luakit [https://github.com/duane-r/luakit-styles](https://github.com/duane-r/luakit-styles)
sw mozzarella firefox extensions
sw music player in C [](https://www.reddit.com/r/unixporn/s/CUbkAsCxR2)
sw nu [Nushell: Introduction to a new kind of shell](https://brianlovin.com/hn/33419944) 
sw nu [Solene'% : Nushell: Introduction to a new kind of shell](https://dataswamp.org/~solene/2022-10-31-nushell.html) 
sw qute [Configuring qutebrowser | qutebrowser](https://qutebrowser.org/doc/help/configuring.html)
sw qute [HS 2018 2019-SA-EP-Bruhin-Qutebrowser Made Extendible.pdf](https://eprints.ost.ch/id/eprint/743/1/HS%25202018%25202019-SA-EP-Bruhin-Qutebrowser%2520Made%2520Extendible.pdf)
sw qute [How to use the qutebrowser.commands.cmdutils.register function in qutebrowser | Snyk](https://snyk.io/advisor/python/qutebrowser/functions/qutebrowser.commands.cmdutils.register)
sw qute [Qutebrowser + Ranger = Pure Awesome - YouTube](https://www.youtube.com/watch?v%3Dce2NOmTBWfo)
sw qute [Qutebrowser 2.0 | Hacker News](https://news.ycombinator.com/item?id%3D25940453)
sw qute [Why I Use Qutebrowser as My Daily Browser (but You Probably Shouldn't) - The Net Blog](https://the-net-blog.netlify.app/post/why-i-use-qutebrowser-as-my-daily-browser-but-you-probably-shouldnt/)
sw qute [hicolour/awesome-qutebrowser: Qutebrowser userscripts trips & tricks](https://github.com/hicolour/awesome-qutebrowser)
sw qute [ii.com: qutebrowser’s Template config.py](https://www.ii.com/qutebrowser-configpy/)
sw qute [qutebrowser - ArchWiki](https://wiki.archlinux.org/title/qutebrowser)
sw rofi plugin for nerdfonts [](https://www.reddit.com/r/unixporn/s/DoOlUPlMjw)
sw rust dev env [https://www.reddit.com/r/rust/s/QqfsULxF1c](https://www.reddit.com/r/rust/s/QqfsULxF1c)
sw sh [abathur/resholve: a shell resolver? :) (find and resolve shell script dependencies)](https://github.com/abathur/resholve)
sw simplewc [](https://www.reddit.com/r/unixporn/s/7BK4nY4pV3)
sw snap [How I delete snap and all traces of it - Solus Forum](ghttps://discuss.getsol.us/d/9323-how-i-delete-snap-and-all-traces-of-it/3)
sw snap [Installing a snap package - Help - NixOS Discourse](ghttps://discourse.nixos.org/t/installing-a-snap-package/11468/4)
sw snap [Snap.d error: cannot communicate with server connection refused - snapd - snapcraft.io](ghttps://forum.snapcraft.io/t/snap-d-error-cannot-communicate-with-server-connection-refused/6093/55)
sw snap [io12/nix-snapd • FlakeHub](ghttps://flakehub.com/flake/io12/nix-snapd)
sw snap [linux - I can't delete files 'rm: cannot remove X Read-only file system' - Server Fault](ghttps://serverfault.com/questions/304416/i-cant-delete-files-rm-cannot-remove-x-read-only-file-system)
sw sway [Some loose ends for sway on nixos which we should fix - Development - NixOS Discourse](https://discourse.nixos.org/t/some-loose-ends-for-sway-on-nixos-which-we-should-fix/17728/5)
sw systemd [How to run systemd in a container | Red Hat Developer](ghttps://developers.redhat.com/blog/2019/04/24/how-to-run-systemd-in-a-container%23enter_podman)
sw tree [Excellent Utilities: broot - next gen tree explorer and customizable launcher - LinuxLinks](ghttps://www.linuxlinks.com/excellent-utilities-broot-next-gen-tree-explorer/)
sw tree [TRE — The free and portable approximate regex matching library.](ghttps://laurikari.net/tre/)
sw tree [alder - minimal implementation of tree - LinuxLinks](ghttps://www.linuxlinks.com/alder-minimal-implementation-tree/)
sw tree [dduan/tre: Tree command, improved.](ghttps://github.com/dduan/tre)
sw tree [ictree - interactive tree - LinuxLinks](ghttps://www.linuxlinks.com/ictree-interactive-tree/)
sw wez [Colors & Appearance - Wez's Terminal Emulator](https://wezfurlong.org/wezterm/config/appearance.html%23defining-your-own-colors)
sw wez [Configuring wezterm (Wez's Terminal Emulator) | Sharp Writing](https://www.sharpwriting.net/project/configuring-wezterm/)
sw wez [Get the Most Out of Your Terminal: A Comprehensive Guide to WezTerm Configuration | HackerNoon](https://hackernoon.com/get-the-most-out-of-your-terminal-a-comprehensive-guide-to-wezterm-configuration)
sw wez [How to configure workspaces and tabs in wezterm : r/wezterm](ghttps://www.reddit.com/r/wezterm/comments/12tub66/how_to_configure_workspaces_and_tabs_in_wezterm/)
sw wez [https://www.reddit.com/r/unixporn/s/fvvOslyUxM](https://www.reddit.com/r/unixporn/s/fvvOslyUxM) kitty to wezterm
sw: drop-down terminal
transformer varieties: lightweight, cross-block connectivity, adaptive computation time, recurrent, hierarchical, other architectures
vscode  [Setting Up nix-shell and Visual Studio Code to Interact | Matthew Rhone dot Dev](ghttps://matthewrhone.dev/nixos-vscode-environment)
vscode [Color Theme | Visual Studio Code Extension API](ghttps://code.visualstudio.com/api/extension-guides/color-theme%23create-a-new-color-theme)
vscode [Creating our own color theme in vscode - DEV Community](ghttps://dev.to/vinaybommana7/creating-our-own-color-theme-in-vscode-2b9m)
vscode [Don't use VSCode - YouTube](ghttps://www.youtube.com/watch?v%3DGUovhZYNO-M%26t%3D1625s)
vscode [Visual Studio Code Themes](ghttps://code.visualstudio.com/docs/getstarted/themes)
vscode [Your First Extension | Visual Studio Code Extension API](ghttps://code.visualstudio.com/api/get-started/your-first-extension)
vscode [https://github.com/microsoft/vscode/issues/181533#issuecomment-1597187136](https://github.com/microsoft/vscode/issues/181533%23issuecomment-1597187136)
vscode [nix-community/nix-vscode-extensions: Nix expressions for VSCode and OpenVSX extensions [maintainers: @deemp, @AmeerTaweel]](ghttps://github.com/nix-community/nix-vscode-extensions)
vscode [nix-community/nix4vscode](ghttps://github.com/nix-community/nix4vscode)
vscode [nix-community/vscode-nix-ide: Nix language support for VSCode editor [maintainer: @jnoortheen]](https://github.com/nix-community/vscode-nix-ide)
webapp [Atlas: wikipedia-20231101-en](https://atlas.nomic.ai/map/475c26d7-b142-4795-9887-02b6eeb18dc0/0d312be6-a3bb-4586-b6b7-53dcd0cbefa5)
webapp [Collaboration costs less with Coda, we price differently - Coda](https://coda.io/product/collaboration-costs-less-with-coda)
webapp [For news junkies: The easiest ways to get through any article paywall (that I know of) : r/Piracy](ghttps://www.reddit.com/r/Piracy/comments/stws33/for_news_junkies_the_easiest_ways_to_get_through/)
webapp [FrontPage](http://www.fitnesse.org/)
webapp [Home — Bluesky](https://staging.bsky.app/)
webapp [Raise and spend money with full transparency. - Open Collective](https://opencollective.com/)
webapp [Startseite - rheinneckar.social](https://rheinneckar.social/home)
webapp [Troubleshooters.Com](http://troubleshooters.com/troubleshooters.htm%23x10021)
webapp [https://bibli-open.heidelberg.de/Mein-Konto](https://bibli-open.heidelberg.de/Mein-Konto)
webapp [https://bibliotheken.komm.one/mannheim/de-de/Mein-Konto](https://bibliotheken.komm.one/mannheim/de-de/Mein-Konto)
webapp [https://blueskyweb.xyz/](https://blueskyweb.xyz/)
webapp [https://codestats.net/](https://codestats.net/)
webapp [https://github.com/mathix420/free-the-web-apps](https://github.com/mathix420/free-the-web-apps)
webapp [https://github.com/sdmg15/Best-websites-a-programmer-should-visit](https://github.com/sdmg15/Best-websites-a-programmer-should-visit) 
webapp [https://imgupscaler.com/](https://imgupscaler.com/)
webapp [https://www.google.com/search?client=firefox-b-d&q=free+ai+upscale+image+resolution](https://www.google.com/search?client%3Dfirefox-b-d%26q%3Dfree%2Bai%2Bupscale%2Bimage%2Bresolution)
webapp [https://www.upscale.media/](https://www.upscale.media/) →
work Dell KB522p
work Logi MX Master 2S
work [Backend Development - Agile board - Jira](ghttps://knecon.atlassian.net/jira/software/c/projects/RED/boards/37?selectedIssue%3DRED-8642)
work [Look Scanned](https://lookscanned.io/)
work [azureml-assets/assets/training/general/environments/acpt-pytorch-2.0-cuda11.7/context/Dockerfile at 2e29aa94865116c08578b52b40da9c4a6abb7a95 · Azure/azureml-assets](https://github.com/Azure/azureml-assets/blob/2e29aa94865116c08578b52b40da9c4a6abb7a95/assets/training/general/environments/acpt-pytorch-2.0-cuda11.7/context/Dockerfile)
work [docker-compose.yml · main · Knecon / Research / ner-annotation · GitLab](https://gitlab.knecon.com/knecon/research/ner-annotation/-/blob/main/docker-compose.yml?ref_type%3Dheads)
work [nlq - Azure AI | Machine Learning Studio](https://ml.azure.com/environments/nlq/version/1?wsid%3D/subscriptions/4b9531fc-c5e4-4b11-8492-0cc173c1f97d/resourcegroups/isaac.riley-rg/providers/Microsoft.MachineLearningServices/workspaces/ir-aml%26tid%3Db44be368-e4f2-4ade-a089-cd2825458048)
work [scripts/README.md · main · Knecon / Research / ner-annotation · GitLab](https://gitlab.knecon.com/knecon/research/ner-annotation/-/blob/main/scripts/README.md?ref_type%3Dheads)
work [src/Instantli.Services/Implementation/Nlq · main · Instantli / Instantli Services · GitLab](ghttps://gitlab.knecon.com/instantli/instantli-services/-/tree/main/src/Instantli.Services/Implementation/Nlq?ref_type%3Dheads)
work prepare demo for .env and .envrc, prepare demo → in conjunction with Dynaconf
work update poetry with official installer
write function buildVimPluginOpt to install in an opt directory where it can be imported with a command or an autocommand
yt [?](https://m.youtube.com/watch%3Fv%3DyiFhQGJeRJk) 
yt [?](https://www.youtube.com/watch?v%3DhI4On2HPElc)
yt [?](https://www.youtube.com/watch?v%3DuKpPJV0hhCY)
yt [?](https://youtube.com/playlist?list%3DPLly9WMAVMrayYo2c-1E_rIRwBXG_FbLBW)
yt [A Brief Look at Jordan Peterson - SOME MORE NEWS - YouTube](ghttps://www.youtube.com/watch?v%3DhSNWkRw53Jo)
yt [Bayer 04 Leverkusen – FC Bayern München | Bundesliga, 21. Spieltag Saison 2023/24 | sportstudio - YouTube](ghttps://www.youtube.com/watch?v%3Du2y-EWQM39o)
yt [Capitalism is dead and so are we | Yanis Varoufakis interview - YouTube](https://www.youtube.com/watch?v%3Dw6H6tvVuGgo)
yt [Could Bayern tempt Alonso this summer? - YouTube](https://www.youtube.com/watch?v%3Dllid0_dMW3U)
yt [Critical Race Theory: Manufactured Outrage - YouTube](ghttps://www.youtube.com/watch?v%3DkZ4E0T6Gus8)
yt [Deutschland und die Digitalisierung: Eine endlose Horror-Story | heute-show Spezial - YouTube](ghttps://www.youtube.com/watch?v%3DieCXWyijiqc)
yt [Escorts - SNL - YouTube](ghttps://www.youtube.com/watch?v%3DOkwAttkRao4)
yt [Expo in 100 Seconds - YouTube](https://www.youtube.com/watch?v%3DvFW_TxKLyrE)
yt [FC Liverpool vs. Sparta Prag – Highlights & Tore | UEFA Europa League - YouTube](ghttps://www.youtube.com/watch?v%3Dc8_VH1UGglE)
yt [Hansi Flick Tactics - The right man for Barcelona? - YouTube](https://www.youtube.com/watch?v%3D5U7Ra2U7QKc)
yt [I spent three hours in a car trunk - The Office US - YouTube](ghttps://www.youtube.com/watch?v%3DsnPefAlnsRU)
yt [New Rule: Music Materialism | Real Time with Bill Maher (HBO) - YouTube](ghttps://www.youtube.com/watch?v%3D10H-9wr7GkY)
yt [SCARIEST Moments of The Office Voted by YOU! - The Office US - YouTube](ghttps://www.youtube.com/watch?v%3DPpFmRkLPOXQ)
yt [Spektakel in der Nachspielzeit | Crystal Palace - FC Chelsea | Highlights - Premier League 2023/24 - YouTube](ghttps://www.youtube.com/watch?v%3DcBY1CTcwkOA)
yt [State Medical Boards: Last Week Tonight with John Oliver (HBO) - YouTube](ghttps://www.youtube.com/watch?v%3DjVIYbgVks7E%26t%3D120s)
yt [The Office but HR is a complete joke and should have stepped in - The Office US - YouTube](ghttps://www.youtube.com/watch?v%3DKODMgQ6EKiU)
yt [What does Tucker Carlson even believe? - YouTube](ghttps://www.youtube.com/watch?v%3D6mZB7QdjBHM%26t%3D5s)
yt [Why Don't English Clubs Dominate In Europe? - YouTube](ghttps://www.youtube.com/watch?v%3DG54iHexGf7E)
yt [https://m.youtube.com/watch?v=xlvusAuDDZ0](https://m.youtube.com/watch?v%3DxlvusAuDDZ0) 
yt [https://www.youtube.com/watch?v=10FCv-gCKug](https://www.youtube.com/watch?v%3D10FCv-gCKug) 
yt [https://www.youtube.com/watch?v=2D6OIYleErU](https://www.youtube.com/watch?v%3D2D6OIYleErU)
yt [https://www.youtube.com/watch?v=R-N-fgKWYGU](https://www.youtube.com/watch?v%3DR-N-fgKWYGU)
yt [https://www.youtube.com/watch?v=U4pGz4KI1J0&pp=ygULVGFza3dhcnJpb3I%3D](https://www.youtube.com/watch?v%3DU4pGz4KI1J0%26pp%3DygULVGFza3dhcnJpb3I%253D) 
yt [https://www.youtube.com/watch?v=w9K6qpZoIB4](https://www.youtube.com/watch?v%3Dw9K6qpZoIB4) 
yt [https://youtu.be/3oN70MzSDfY?si=FNOSS0ztVALLAT5y](https://youtu.be/3oN70MzSDfY?si%3DFNOSS0ztVALLAT5y) 
yt [https://youtu.be/wCHnb8pvneE?si=lSimV_91wS0fGFud](https://youtu.be/wCHnb8pvneE?si%3DlSimV_91wS0fGFud) 
yt [yt?](https://www.youtube.com/watch?v%3DU4pGz4KI1J0%26pp%3DygULVGFza3dhcnJpb3I%253D)
yt [yt](https://youtube.com/playlist?list%3DPLe7Ei6viL6jGp1Rfu0dil1JH1SHk9bgDV)
