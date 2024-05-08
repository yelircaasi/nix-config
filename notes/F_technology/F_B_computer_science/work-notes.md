# Work Notes

## left-right mappings for table parsing

* [mypy notes](https://stackoverflow.com/questions/57785471/why-does-mypy-think-library-imports-are-missing) $$$$$$$$$
* move cv-analysis to gpu, rewrite in cpp with pybind11 and parallelize everything
[evilmartians/lefthook](https://github.com/evilmartians/lefthook)
add deskew keyword to cv-analysis service
* output "skewAngle": float

## Projects

* 1. sort ‘NLQ’
* 2. sort ‘VanillaOS’
* 3. Read ‘a lire’
* 4. sort ‘Config’
* 5. sort ‘Logging’
* 6. sort ‘pytest’
* 7. Read articles from ‘à lire’

## Sort

* [Remote Mob Programming | How we do Remote Mob Programming.](https://www.remotemobprogramming.org/)
* [fasttext.cc/docs/en/aligned-vectors.html](https://fasttext.cc/docs/en/aligned-vectors.html)
* image_classification_service...parsable.py
* visual-layout-parsing...stream.py
* Graph-based approaches for Documine: Graph mining, cluster analysis
* KundenProjekte/syngenta
* Look into convolutional filter-based dotted line detection
* Look into filter-based headline detection
* [chulwoopack/docstrum](https://github.com/chulwoopack/docstrum)
* [ieeexplore.ieee.org/abstract/document/244677](https://ieeexplore.ieee.org/abstract/document/244677)
* deskewing: use Gini coefficient? variance?
* -> make all places pull from angles in .yaml
* joint output? -> sign probability, regression, binary classification

### DHL

* LCS with poetry
* Inferenzverfahren verfeinern
* Pfadgeneralisierung für Schleifen in den Daten
* Tests schreiben
* Create paths object for managing all relevant paths
* evaluation method for each rule -> check whether rule generalizes; bootstrap for mappings
* composite (multi-input) rules
* use protocol classes in Python

```
* UNA
* UNB - Interchange Header
* UNH - Message Header
* BGM - Begnning of Message

(TSR) - transport service requirements
* MOA - monetary amount
* FTX+AAA - Free Text
* CNT+7 - Control Total
* CNT+11
* CNT+15
* TOD - terms of delivery or transport
* LOC - place / location identification
  5 departure
  7 delivery
  8 destination
* RFF - reference
* GOR - governmental requirements
* DTM - date/ time / period
* NAD - name and address
* CTA - contact information
* COM - communication contact
* GID - goods item details
* MEA - measurements
* DIM - dimensions
* DOC - document / message details
* PCI - package identification
* GIN - goods identity number
* EQD - line item (?)
* TCC+INV - (?)
* MOA - monetary amount
* QTY - quantity
* MEA - measurements
* FTX - free text
* UNT - message trailer
* UNZ - interchange trailer
* FTX+AAA - goods description
* FTX+AAB
* FTX+DIN
* FTX_AAD
* WT - weight
* VOL - volume
* MTQ -m^2

+KGM - kg

+AAE - item gross weight

```

```tex
* y_i = f^*(\vec{x}) = argmax_{f_i} s(f_i)

```txt
* RL Model for DHL: (path, entity, all paths) -> (path, entity)                                            -> mapping: rules, constraints on rules

```tex
* a_t = \pi_\theta (\cdot | s_t)

```

* 0. path enumeration
* 1. recognition of corresponding entities (values)
   (rule-based) -> by type: string, num, date
* 2. raw path2path count matrix
* 3. Initialize mapping for each output path -> a priori probabilistic mapping
* 4. generate rule space -> as tree
   `f_i(path) = value` -> list of candidate rules
* 5. increment rule score for each rule generating correct output    operations:    * identit
  * numerical transformation (solve by e.g. regression
  * string operations: substring,character mapping, casing, substring transposition

### ML Pipelines

* Airflow + MLFlow + Kubernetes
* airflow -> generality -> DAGs & scheduling
* data versioning
* model versioning
* registry
* automated workflow with triggers -> definable DAG
* TF & Pytorch compatibility?
* integrated with Docker?
* graphical UI?

# Organization, Meta

* → [Timeline](https://knecon.atlassian.net/jira/software/c/projects/RES/boards/40/timeline)

# Research Shared Packages

* [ ]  kn_utils: add datahash module
* [Programming Languages | RabbitMQ - Blog](https://blog.rabbitmq.com/categories/programming-languages/)
* Config        * [Settings management - pydantic](https://docs.pydantic.dev/usage/settings/)
* [Configuring Python Projects with INI, TOML, YAML, and ENV files](https://hackersandslackers.com/simplify-your-python-projects-configuration/)
* [dynaconf/dynaconf: Configuration Management for Python ⚙](https://github.com/dynaconf/dynaconf)
* [Python and TOML: New Best Friends – Real Python](https://realpython.com/python-toml/)
* [10 Best Python Configuration Management Libraries in 2023 | Openbase](https://openbase.com/categories/python/best-python-configuration-management-libraries?vs=ansible-core%2Cdynaconf%2Chydra-core)
* [HBNetwork/python-decouple: Strict separation of config from code.](https://github.com/HBNetwork/python-decouple)
* [rbgirshick/yacs: YACS -- Yet Another Configuration System](https://github.com/rbgirshick/yacs)
* [python-dotenv: Docs, Community, Tutorials, Reviews | Openbase](https://openbase.com/python/python-dotenv)
* [classyconf — classyconf 0.5.2 documentation](https://classyconf.readthedocs.io/en/latest/index.html)
* [hernantz/classyconf: Declarative and extensible library for configuration & code separation](https://github.com/hernantz/classyconf)
* [dynaconf: Docs, Community, Tutorials, Reviews | Openbase](https://openbase.com/python/dynaconf)
* [Dynaconf - 3.1.11](https://www.dynaconf.com/)
* [hydra-core: Docs, Community, Tutorials, Reviews | Openbase](https://openbase.com/python/hydra-core)
* [Getting started | Hydra](https://hydra.cc/docs/1.3/intro/)
* [Zuehlke/ConfZ: ConfZ is a configuration management library for Python based on pydantic.](https://github.com/Zuehlke/ConfZ)
* [hydra-example-project/config.py at master · FlorianWilhelm/hydra-example-project](https://github.com/FlorianWilhelm/hydra-example-project/blob/master/src/my_pkg/config.py)
* [Configuration Management For Data Science Made Easy With Hydra - YouTube](https://www.youtube.com/watch?v=tEsPyYnzt8s)
* [Working with config files in Python - YouTube](https://www.youtube.com/watch?v=Gdw0-QGq-z0)
* [Stefan Scherfke / typed-settings · GitLab](https://gitlab.com/sscherfke/typed-settings)
* [FlorianWilhelm/hydra-example-project: Example project showing Hydra's capabilities for configuration and CLI](https://github.com/FlorianWilhelm/hydra-example-project)
* [dynaconf.com/](https://www.dynaconf.com/)
* [theskumar/python-dotenv: Reads key-value pairs from a .env file and can set them as environment variables. It helps in developing applications following the 12-factor principles.](https://github.com/theskumar/python-dotenv)
* [Configuration - Dynaconf - 3.1.11](https://www.dynaconf.com/configuration/)
* [configparser — Configuration file parser — Python 3.11.1 documentation](https://docs.python.org/3/library/configparser.html#configparser.ConfigParser)
* [configparser — Configuration file parser — Python 3.11.2 documentation](https://docs.python.org/3/library/configparser.html#module-configparser)
* [Env vars - Dynaconf - 3.1.11](https://www.dynaconf.com/envvars/)

## Logging

* [baeldung.com/java-log-json-output](https://www.baeldung.com/java-log-json-output)
* [Marius Schummer: [knecon.atlassian.net/wiki/spaces/PM/pages/118784001/2023-...](https://teams.microsoft.com/l/message/19:meeting_YTBkZGY0YmYtZDQ5NS00NDliLThkZmEtNmI3NzQwZTcwZjJj@thread.v2/1697112494142?context=%7B%22contextType%22%3A%22chat%22%7D)
* [dev.to/gauthierplm/how-to-output-log4j2-logs-as-json-5an3](https://dev.to/gauthierplm/how-to-output-log4j2-logs-as-json-5an3)
* [spring.io/blog/2022/10/12/observability-with-spring-boot-3](https://spring.io/blog/2022/10/12/observability-with-spring-boot-3)
* [aspecto.io/blog/distributed-tracing-for-rabbitmq-with-opentelemetry-in-node/](https://www.aspecto.io/blog/distributed-tracing-for-rabbitmq-with-opentelemetry-in-node/)
* [elastic.co/guide/en/apm/guide/current/apm-distributed-tracing.html](https://www.elastic.co/guide/en/apm/guide/current/apm-distributed-tracing.html)
* [log.knecon.com/s/lannister/app/home#/](https://log.knecon.com/s/lannister/app/home#/)
    {"timeMillis":1697720400062,"thread":"persistence-service_Worker-4","level":"INFO","loggerName":"com.iqser.red.service.persistence.management.v1.processor.service.job.DownloadCleanupJob","message":"Checking for downloads to delete at 2023-10-19T13:00:00.062Z","endOfBatch":false,"loggerFqcn":"org.apache.logging.slf4j.Log4jLogger","contextMap":{},"threadId":58,"threadPriority":5,"version":"2.0-SNAPSHOT"}
    {"timeMillis":1697719406759,"thread":"main","level":"INFO","loggerName":"org.springframework.security.web.DefaultSecurityFilterChain","message":"Will secure any request with [org.springframework.security.web.session.DisableEncodeUrlFilter@527d312e, org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter@39981ec, org.springframework.security.web.context.SecurityContextHolderFilter@5323c9a0, org.springframework.security.web.header.HeaderWriterFilter@bded3b53, org.springframework.security.web.authentication.logout.LogoutFilter@19cb4010, org.springframework.security.oauth2.server.resource.web.authentication.BearerTokenAuthenticationFilter@1a70fc24, org.springframework.security.web.savedrequest.RequestCacheAwareFilter@614289f2, org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter@177de634, org.springframework.security.web.session.SessionManagementFilter@9b46e97c, org.springframework.security.web.access.ExceptionTranslationFilter@568eff36, org.springframework.security.web.access.intercept.AuthorizationFilter@76c139e9]","endOfBatch":false,"loggerFqcn":"org.apache.commons.logging.LogAdapter$Log4jLog","contextMap":{},"threadId":1,"threadPriority":5,"version":"2.0-SNAPSHOT"}
    LOGGING_TYPE (default: non-JSON)
* [betterstack.com/community/guides/logging/loguru/](https://betterstack.com/community/guides/logging/loguru/)
* [loguru.readthedocs.io/en/stable/api/logger.html](https://loguru.readthedocs.io/en/stable/api/logger.html)
* [florian-dahlitz.de/articles/logging-made-easy-with-loguru](https://florian-dahlitz.de/articles/logging-made-easy-with-loguru)
* [Delgan/loguru/issues/520](https://github.com/Delgan/loguru/issues/520)
    ![logoutput.png](https://prod-files-secure.s3.us-west-2.amazonaws.com/e74f0423-4454-4dd0-ae43-e45cbc541e73/4d40805c-0f55-4bfa-a7b1-dbfbe8c75da8/logoutput.png)
* [W1202 - logging-fstring-interpolation is not useful · Issue #2395 · PyCQA/pylint](https://github.com/PyCQA/pylint/issues/2395#issuecomment-715300290)
* [Delgan/loguru: Python logging made (stupidly) simple](https://github.com/Delgan/loguru)
* [Sentry Alternatives - Python Logging | LibHunt](https://python.libhunt.com/sentry-alternatives)
* [structlog Alternatives - Python Logging | LibHunt](https://python.libhunt.com/structlog-alternatives)
* [logbook Alternatives - Python Logging | LibHunt](https://python.libhunt.com/logbook-alternatives)
* [Eliot Alternatives - Python Logging | LibHunt](https://python.libhunt.com/eliot-alternatives)
* [logzero Alternatives - Python Logging | LibHunt](https://python.libhunt.com/logzero-alternatives)
* [Logging Best Practices - structlog 22.3.0 documentation](https://www.structlog.org/en/stable/logging-best-practices.html#canonical-log-lines)
* [structlog 22.3.0 documentation](https://www.structlog.org/en/stable/)
* [A guided tour of Python logging PyCon AU PyCon AU • • 14.555 visualizaciones hace 4 años](https://www.youtube.com/watch?v=DxZ5WEo4hvU)
* [Why … - structlog 22.3.0 documentation](https://www.structlog.org/en/stable/why.html)

# Instantli2

# NLQ

* [ ]  add attention to mode
* [ ]  add CRF to model

## Notes and Links

* ONNX        * [pytorch.org/docs/stable/onnx.html](https://pytorch.org/docs/stable/onnx.html)
* Spelling Corrections        * [theautomatic.net/2019/12/10/3-packages-to-build-a-spell-checker-in-python/](https://theautomatic.net/2019/12/10/3-packages-to-build-a-spell-checker-in-python/)
* [hellohaptik/spello](https://github.com/hellohaptik/spello)
* [languagetool-org/languagetool](https://github.com/languagetool-org/languagetool)
* [huggingface.co/oliverguhr/spelling-correction-english-base](https://huggingface.co/oliverguhr/spelling-correction-english-base)
* [tokenizer.json · facebook/bart-large-cnn at main](https://huggingface.co/facebook/bart-large-cnn/blob/main/tokenizer.json)
* [ ]  Clustering 22
* [ ]  Clustering Analysis 23
* [ ]  Data Clustering Algorithms & Applications 13
* [ ]  Practical Guide to Data Clustering in R 17
* [ ]  * [ ]  [Graph-Based NLP and IR](https://drive.google.com/file/d/1_yAyK1ZaBRorNLGL2upsOoiGjHq1HVbp/view?usp=sharing)- [ ]  .- [ ]  [Sentdex/Simple-kNN-Gzip](https://github.com/Sentdex/Simple-kNN-Gzip)
* [ ]  [“Low-Resource” Text Classification: A Parameter-Free Classification Method with Compressors](https://aclanthology.org/2023.findings-acl.426.pdf)- [ ]  [gzip is all you need](https://www.youtube.com/watch?v=jkdWzvMOPuo)

# Table Parsing

* feature/table_partitioning (cv_analysis / layout_parsing)

# Deskewer

# Grammar-Based Data Generation

* gramdatagen (GramDataGen.jl?) → desiderata: type safety, memory safety, efficiency, purity

# LLMs

* LLMs        * [direct.mit.edu/neco/article/35/3/309/114731/Large-Language-Models-and-the-Reverse-Turing-Test](https://direct.mit.edu/neco/article/35/3/309/114731/Large-Language-Models-and-the-Reverse-Turing-Test)
* [r/MachineLearning/comments/12omnxo/r_timeline_of_recent_large_language_models](https://www.reddit.com/r/MachineLearning/comments/12omnxo/r_timeline_of_recent_large_language_models)
* [PAL Video](https://www.youtube.com/watch?v=dy7-LvDu-3s)
* [allthingsdistributed.com/2023/04/demystifying-large-language-models-with-amazon-distinguished-scientists.html](https://www.allthingsdistributed.com/2023/04/demystifying-large-language-models-with-amazon-distinguished-scientists.html)
* [heise.de/news/Dolly-2-0-grosses-KI-Sprachmodell-frei-verfuegbar-auch-fuer-kommerziellen-Einsatz-8949302.html](https://www.heise.de/news/Dolly-2-0-grosses-KI-Sprachmodell-frei-verfuegbar-auch-fuer-kommerziellen-Einsatz-8949302.html)
* [venturebeat.com/ai/databricks-releases-dolly-2-0-the-first-open-instruction-following-llm-for-commercial-use/](https://venturebeat.com/ai/databricks-releases-dolly-2-0-the-first-open-instruction-following-llm-for-commercial-use/)
* [Researchers at Stanford Introduce Gisting: A Novel Technique for Efficient Prompt Compression in Language Models](https://www.marktechpost.com/2023/04/22/researchers-at-stanford-introduce-gisting-a-novel-technique-for-efficient-prompt-compression-in-language-models/)
* [huyenchip.com/2023/04/11/llm-engineering.html](https://huyenchip.com/2023/04/11/llm-engineering.html)
* [blog.langchain.dev/](https://blog.langchain.dev/)
* [blog.finxter.com/chatgpt-prompts-for-coders/](https://blog.finxter.com/chatgpt-prompts-for-coders/)
* [blog.finxter.com/6-new-ai-projects-based-on-llms-and-openai/](https://blog.finxter.com/6-new-ai-projects-based-on-llms-and-openai/)
* [blog.finxter.com/openai-glossary/](https://blog.finxter.com/openai-glossary/)
* [blogmojo.de/openai-api-kosten-rechner/](https://www.blogmojo.de/openai-api-kosten-rechner/)
* [Podlodka AI Kod](https://open.spotify.com/episode/4DCGcJqyC5yLBcXiCfNHWD?si=cbNfGojGR6qgdVJpbDJQMg&nd=1)
* [Chomsky on ChatGPT](https://www.google.com/search?client=firefox-b-m&sxsrf=APwXEdccHTRhTnyXrWPBeURbAnNhA86XlQ%3A1680896954010&q=noam+chomsky+on+chatgpt&oq=noam+chomsky+on+chatgpt&aqs=heirloom-srp..0l5)
* [Eliezer Yudkowsky Lex Friedman](https://open.spotify.com/episode/2g6WjOL1J1Ovm1kndXk1nt?si=9R4zKfi7SmeN6gxLWsjJ_g)

## Image Classification Service

```sh
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/lib/x86_64-linux-gnu”
#apt install nvidia-cuda-toolkit
```

## Face Detection

## Standards, Infrastructure, and Templates

## Wiki

## Miscellaneous / Overarching

* Reading
* TOD
* [ ]  update Gitlab pipeline
* pytest        * [cbohara/pytest: Notes from Python Testing with pytest by Brian Okken](https://github.com/cbohara/pytest)
* [pytest-dev/pytest: The pytest framework makes it easy to write small tests, yet scales to support complex functional testing](https://github.com/pytest-dev/pytest)
* [jashburn8020/python-testing-with-pytest: Excerpts from the book Python Testing with Pytest by Brian Okken](https://github.com/jashburn8020/python-testing-with-pytest)
    Pytest and caplog doesn't work if InterceptHandler exists · Issue #474 · Delgan/loguru_pytest.python — pytest documentation        * [Pytest's caplog fixture doesn't seem to work · Issue #59 · Delgan/loguru](https://github.com/Delgan/loguru/issues/59)
* [How to Measure Unit Test Execution Times in pytest - Howchoo](https://howchoo.com/python/how-to-measure-unit-test-execution-times-in-pytest)
* [5 Advanced Pytest Tricks - Software Gems](https://benoitgoujon.com/post/six-advanced-pytest-tricks/)
* [An example on how to capture and test logs with pytest.](https://gist.github.com/hectorcanto/981b49a83a9e15b68efe5302a643e5c0)
* [simplistix/testfixtures: testfixtures is a collection of helpers and mock objects that are useful when writing automated tests in Python.](https://github.com/simplistix/testfixtures)
* pyni
* [ ]  prepare presentation on Python development in Nix for the team (create Docker container, go through Tweag tutorial on Nix + Python)
* [cedaei.com/posts/python-poetry-pipx/](https://cedaei.com/posts/python-poetry-pipx/)
* Segmentation        * [segment-anything.com/](https://segment-anything.com/)
* Notes
    JM: need for more cross-pollination
    How to learn as much as possible from user feedback? regex, ML, RL?
    justify everything, show full AI
    PowerSGD, Byzantine Robust Training
    deliver a platform, a toolkit with active-learning built-in
    graph-based approach: graph-embeddings?

# Weiterbildung

* use more RL! learn more RL!
* [Queues — RabbitMQ](https://www.rabbitmq.com/queues.html)
* Azure
* Next 6
* [ ]  Run transformers NER off-the shel
* [x]  copy from [page](https://huggingface.co/docs/transformers/tasks/token_classification)
* [ ]  modify for printin
* [x]  run & debug
* [x]  Transport off-the-shelf transformers NER for CoreML
* [x]  Transport off-the-shelf transformers NER for ONN
* [ ]  Run transformers NER on my dat
* [ ]  Improve data generation and make improved dat
* [ ]  Train with improved dat
* [ ]  Evaluat
* [ ]  Expor
* [ ]  find differences in tokenize
* [ ]  Get tokenizer ported - together with dev
* [ ]  Send to devs
* Tickets)
* [knecon.atlassian.net/browse/RES-402?atlOrigin=eyJpIjoiNzAzMTZlYjVmNmYyNGZkN2ExYzUzNGZlYjFiZWEwMDQiLCJwIjoiaiJ9](https://knecon.atlassian.net/browse/RES-402?atlOrigin=eyJpIjoiNzAzMTZlYjVmNmYyNGZkN2ExYzUzNGZlYjFiZWEwMDQiLCJwIjoiaiJ9)
* [knecon.atlassian.net/browse/RES-358?atlOrigin=eyJpIjoiOTc4NmQ1MzlhZDQ4NGQ2ZWE5MWQyMDdhMDVlMGYxZDgiLCJwIjoiaiJ9](https://knecon.atlassian.net/browse/RES-358?atlOrigin=eyJpIjoiOTc4NmQ1MzlhZDQ4NGQ2ZWE5MWQyMDdhMDVlMGYxZDgiLCJwIjoiaiJ9)
* [knecon.atlassian.net/browse/RES-298?atlOrigin=eyJpIjoiODhhNDJjMDZhOTcwNGEyZDg1M2U4NDk0YzBkZDM3ODIiLCJwIjoiaiJ9](https://knecon.atlassian.net/browse/RES-298?atlOrigin=eyJpIjoiODhhNDJjMDZhOTcwNGEyZDg1M2U4NDk0YzBkZDM3ODIiLCJwIjoiaiJ9)
* [knecon.atlassian.net/browse/RED-7568?atlOrigin=eyJpIjoiZGJjMjI3M2Q5ZDVjNGNmYmI1MzVlZDJmODViZGY3NjgiLCJwIjoiaiJ9](https://knecon.atlassian.net/browse/RED-7568?atlOrigin=eyJpIjoiZGJjMjI3M2Q5ZDVjNGNmYmI1MzVlZDJmODViZGY3NjgiLCJwIjoiaiJ9) Knutils logging has no "location_info", logs don't show
* [knecon.atlassian.net/browse/RES-165?atlOrigin=eyJpIjoiYjA5YTAwM2M0NjVmNDNmMGE0OTRiNDcwZGJlNTA1OWEiLCJwIjoiaiJ9](https://knecon.atlassian.net/browse/RES-165?atlOrigin=eyJpIjoiYjA5YTAwM2M0NjVmNDNmMGE0OTRiNDcwZGJlNTA1OWEiLCJwIjoiaiJ9)
* [knecon.atlassian.net/browse/RES-164?atlOrigin=eyJpIjoiYThlYzJiNjI1MzY1NDFmODkzMTJlZmU4OTk1MTVlZjgiLCJwIjoiaiJ9](https://knecon.atlassian.net/browse/RES-164?atlOrigin=eyJpIjoiYThlYzJiNjI1MzY1NDFmODkzMTJlZmU4OTk1MTVlZjgiLCJwIjoiaiJ9)
* [knecon.atlassian.net/browse/RES-336?atlOrigin=eyJpIjoiMmJiODFkYTk4YzY3NGQzNmEwODg3OWFmZjgzYWEwODciLCJwIjoiaiJ9](https://knecon.atlassian.net/browse/RES-336?atlOrigin=eyJpIjoiMmJiODFkYTk4YzY3NGQzNmEwODg3OWFmZjgzYWEwODciLCJwIjoiaiJ9)
* [knecon.atlassian.net/browse/RES-335?atlOrigin=eyJpIjoiYzViMTM2NDVmODBmNDg1Nzg1OTZmNWY1OWJhYjcyMTgiLCJwIjoiaiJ9](https://knecon.atlassian.net/browse/RES-335?atlOrigin=eyJpIjoiYzViMTM2NDVmODBmNDg1Nzg1OTZmNWY1OWJhYjcyMTgiLCJwIjoiaiJ9)
* Config
    search for (esp ml) projects usong dynaconf and hydra        * [lincolnloop/goodconf: Transparently load variables from environment or JSON/YAML/TOML file.](https://github.com/lincolnloop/goodconf)
* [Dynaconf - 3.1.11](https://www.dynaconf.com/)
* [The Twelve-Factor App](https://12factor.net/config)
* [video](https://www.youtube.com/shorts/UU7cb1qiS64)
* [dxiaochuan.medium.com/summary-of-python-config-626f2d5f6041](https://dxiaochuan.medium.com/summary-of-python-config-626f2d5f6041)
* Cuda        * [(1) Tensorflow and CUDA 12 - CUDA / CUDA Setup and Installation - NVIDIA Developer Forums](https://forums.developer.nvidia.com/t/tensorflow-and-cuda-12/237333/7)
* [Install TensorFlow with pip](https://www.tensorflow.org/install/pip)
* [CUDA Toolkit 11.8 Downloads | NVIDIA Developer](https://developer.nvidia.com/cuda-11-8-0-download-archive?target_os=Linux&target_arch=x86_64&Distribution=Ubuntu&target_version=22.04&target_type=deb_local)
* Documentation        * [awesome API documentation](https://awesomewm.org/apidoc/?redirected_from_wiki=1)
* [Getting Started — Sphinx documentation](https://www.sphinx-doc.org/en/master/usage/quickstart.html#autodoc)
* [Writing docstrings — Sphinx-RTD-Tutorial documentation](https://sphinx-rtd-tutorial.readthedocs.io/en/latest/docstrings.html)
* [NeshHari/XMonad: XMonad Starter Kit](https://github.com/NeshHari/XMonad#haskell-cheat-sheet)
* [Releases · tox-dev/sphinx-autodoc-typehints](https://github.com/tox-dev/sphinx-autodoc-typehints/releases)
* [Getting Started with Sphinx / Autodoc: Part 1 | by Michael Dunn | Medium](https://eikonomega.medium.com/getting-started-with-sphinx-autodoc-part-1-2cebbbca5365)
* [Writing docstrings — Sphinx-RTD-Tutorial documentation](https://sphinx-rtd-tutorial.readthedocs.io/en/latest/docstrings.html)
* [tox-dev/sphinx-autodoc-typehints: Type hints support for the Sphinx autodoc extension](https://github.com/tox-dev/sphinx-autodoc-typehints)
* [add autogenerated html docs to atlassian confluence wiki - Google Search](https://www.google.com/search?q=add+autogenerated+html+docs+to+atlassian+confluence+wiki&client=firefox-b-d&sxsrf=AJOqlzU2GmhQ6Ua645pQNFoH9YkuB5ZcTw%3A1675758043513&ei=2wniY5f6Hs387_UP6JOJ4AY&ved=0ahUKEwjX06aX_YL9AhVN_rsIHehJAmwQ4dUDCA4&uact=5&oq=add+autogenerated+html+docs+to+atlassian+confluence+wiki&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAzIFCAAQogQyBwgAEB4QogQyBQgAEKIEOgoIABBHENYEELADOgQIIxAnSgQIQRgASgQIRhgAUPARWJIoYNwpaARwAXgAgAFxiAHXBpIBAzguMpgBAKABAcgBCMABAQ&sclient=gws-wiz-serp)
* [Solved: Auto-Generated HTML Confluence Pages](https://community.atlassian.com/t5/Confluence-questions/Auto-Generated-HTML-Confluence-Pages/qaq-p/1186736)
* [How to display auto-generated html in confluence p...](https://community.atlassian.com/t5/Confluence-questions/How-to-display-auto-generated-html-in-confluence-pages-for-code/qaq-p/1079818)
* [Develop Technical Documentation in Confluence | Confluence Data Center and Server 8.0 | Atlassian Documentation](https://confluence.atlassian.com/doc/develop-technical-documentation-in-confluence-226166494.html)
* [Auto-import markdown documents as pages from git r...](https://community.atlassian.com/t5/Confluence-Cloud-discussions/Auto-import-markdown-documents-as-pages-from-git-repositories/td-p/1909816)
* k8s        * [A Deep Dive into Architecting a Kubernetes Infrastructure - The New Stack](https://thenewstack.io/a-deep-dive-into-architecting-a-kubernetes-infrastructure/)
* [Kubernetes for Developers: A Deep Dive](https://bluexp.netapp.com/blog/kubernetes-for-developers-a-deep-dive)
* [sergiohinojosa/kubernetes-deepdive](https://github.com/sergiohinojosa/kubernetes-deepdive)
* [A few things I've learned about Kubernetes](https://jvns.ca/blog/2017/06/04/learning-about-kubernetes/)
    Managing Containers at Scale with CoreOS and Kubernetes" by Kelsey Hightower - YouTube        * [kubernetes.io/docs/tasks/tools/](https://kubernetes.io/docs/tasks/tools/)
* logging        * [test input()](https://stackoverflow.com/questions/35851323/how-to-test-a-function-with-input-call)
* [elastic/kibana: Your window into the Elastic Stack](https://github.com/elastic/kibana)
* [Library Genesis: Bahaaldine Azarmi; Anurag Srivastava - Learning Kibana 7 :build powerful elastic dashboards with Kibana's data visualizationcapabilities](https://libgen.is/book/index.php?md5=778E783AF7EA3EF58F5EC8BA7C24BBCC)
* [Library Genesis: Пранав Шукла, Шарат Кумар - Elasticsearch, Kibana, Logstash и поисковые системы нового поколения](https://libgen.is/book/index.php?md5=0A4D48C9A6C9398070A3D3AA66327A26)
* [Library Genesis: Sharath Kumar M. N.; Pranav Shukla - Learning Elastic Stack7.0 : distributed search, analytics, and visualization usingElasticsearch, Logstash, Beats, and Kibana](https://libgen.is/book/index.php?md5=0E68E1EA113F39EB06E62004DD091554)
* [Library Genesis: Anurag Srivastava - Kibana 7 Quick Start Guide](https://libgen.is/book/index.php?md5=91CC1D10714715BA5A5843F3B83F1E09)
* [loguru output not captured by stderr - Google Search](https://www.google.com/search?client=firefox-b-d&q=loguru+output+not+captured+by+stderr)
* [Switching from standard logging to loguru — loguru documentation](https://loguru.readthedocs.io/en/stable/resources/migration.html)
* [Code snippets and recipes for loguru — loguru documentation](https://loguru.readthedocs.io/en/stable/resources/recipes.html)
* [How to test loguru logger with unittest? · Issue #616 · Delgan/loguru](https://github.com/Delgan/loguru/issues/616)
* [Switching from standard logging to loguru — loguru documentation](https://loguru.readthedocs.io/en/stable/resources/migration.html?highlight=stderr#making-things-work-with-pytest-and-caplog)
* [Getting started: Monitor applications and systems with Elastic Observability | Starting with the Elasticsearch Platform and its Solutions [8.6] | Elastic](https://www.elastic.co/guide/en/welcome-to-elastic/current/getting-started-observability.html)
* [Official Elasticsearch Pricing: Elastic Cloud, Managed Elasticsearch | Elastic](https://www.elastic.co/pricing/)
* [Kibana: Explore, Visualize, Discover Data | Elastic](https://www.elastic.co/kibana/)
* [coralogix.com/blog/python-logging-best-practices-tips/](https://coralogix.com/blog/python-logging-best-practices-tips/)
* onnx        * [Introduction to ONNX — ONNX 1.14.0 documentation](https://onnx.ai/onnx/intro/)
* [Export to ONNX](https://huggingface.co/docs/transformers/serialization)
* [spacy export to onnx - Google Search](https://www.google.com/search?client=firefox-b-d&q=spacy+export+to+onnx)
* [spacy export to onnx - Google Search](https://www.google.com/search?client=firefox-b-d&q=spacy+export+to+onnx)
* [Export to ONNX](https://huggingface.co/docs/transformers/serialization)
* [Introduction to ONNX — ONNX 1.14.0 documentation](https://onnx.ai/onnx/intro/)
* [ONNX – Wikipedia](https://de.wikipedia.org/wiki/ONNX)
* [onnx/onnx: Open standard for machine learning interoperability](https://github.com/onnx/onnx)
* [Overview of ONNX and operators. This article provides an overview of… | by David Cochard | axinc-ai | Medium](https://medium.com/axinc-ai/overview-of-onnx-and-operators-9913540468ae)
* [ONNX models | Microsoft Learn](https://learn.microsoft.com/en-us/windows/ai/windows-ml/get-onnx-model)
* [Python Logging - Tutorial - YouTube](https://www.youtube.com/watch?v=urrfJgHwIJA)
* [Why you should be using structured logs - Stefan Krawczyk - YouTube](https://www.youtube.com/watch?v=4Y3VdS2pLF4)
* [GitHub - alrevuelta/cONNXr: Pure C ONNX runtime with zero dependancies for embedded devices](https://github.com/alrevuelta/cONNXr)
* [ONNX Runtime | Home](https://onnxruntime.ai/)
* [Build for inferencing | onnxruntime](https://onnxruntime.ai/docs/build/inferencing.html)
* [NuGet Gallery | Microsoft.ML.OnnxRuntime.Gpu 1.13.1](https://www.nuget.org/packages/Microsoft.ML.OnnxRuntime.Gpu#supportedframeworks-body-tab)
* [NVIDIA - CUDA | onnxruntime](https://onnxruntime.ai/docs/execution-providers/CUDA-ExecutionProvider.html#requirements)
* [flair with onnx - Google Search](https://www.google.com/search?client=firefox-b-d&q=flair+with+onnx)
* [Converting ONNX Image Classification Models to Core ML - CodeProject](https://www.codeproject.com/Articles/5277526/Converting-ONNX-Image-Classification-Models-to-Cor)
* [export rasa to onnx - Google Search](https://www.google.com/search?q=export+rasa+to+onnx&client=firefox-b-d&sxsrf=AJOqlzVc2YjVbU2gdCdizX38rqN_PY8Cbw%3A1675939284306&ei=1M3kY-OwEoKI9u8P27SlkA4&ved=0ahUKEwjj6tKtoIj9AhUChP0HHVtaCeIQ4dUDCA4&uact=5&oq=export+rasa+to+onnx&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAzIECCMQJzoKCAAQRxDWBBCwAzoHCAAQDRCABDoICAAQCBAeEA06BQgAEIYDSgQIQRgASgQIRhgAULAVWIInYLIoaAVwAXgAgAFTiAHMA5IBATaYAQCgAQHIAQjAAQE&sclient=gws-wiz-serp)
* [Export to ONNX](https://huggingface.co/docs/transformers/serialization)
* ML Ops        * [MLOps Platform Evaluation - Overview Red Hat OpenShift Data Science (RHODS))-20230330_135119-Meeting Recording.mp4](https://iqser.sharepoint.com/sites/Research2/_layouts/15/stream.aspx?id=%2Fsites%2FResearch2%2FFreigegebene%20Dokumente%2FMLOps%2FMLOps%20Platform%20Evaluation%20%2D%20Overview%20Red%20Hat%20OpenShift%20Data%20Science%20%28RHODS%29%29%2D20230330%5F135119%2DMeeting%20Recording%2Emp4&referrer=Teams%2ETEAMS%2DWEB&referrerScenario=p2p%5Fns%2Dbim&ga=1)
* [Practical Deep Learning at Scale with MLflow: Bridge the gap between offline experimentation and online production](http://library.lol/main/0953E75F2337ABA087CFCE87CAB9BB32)
* [Beginning MLOps with MLFlow: Deploy Models in AWS SageMaker, Google Cloud, and Microsoft Azure](http://library.lol/main/7DCDD5D956C8174FD23C4DF2EBC44FAF)
* [drive.google.com/drive/search?q=MLFlow](https://drive.google.com/drive/search?q=MLFlow)
* NLQ
    try this instead? [huggingface.co/course/chapter7/2](https://huggingface.co/course/chapter7/2)
* [Embed, encode, attend, predict: The new deep learning formula for state-of-the-art NLP models · Explosion](https://explosion.ai/blog/deep-learning-formula-nlp)
* [Model Architectures · spaCy API Documentation](https://spacy.io/api/architectures#TransitionBasedParser)
* [Queries](https://git.iqser.com/projects/INST/repos/instantli-base/browse/src/Instantli.Base/Search/Queries)
* [Instantli project overview - IQSER Bitbucket](https://git.iqser.com/projects/INST)
* [huggingface/tokenizers/tree/main/tokenizers/src](https://github.com/huggingface/tokenizers/tree/main/tokenizers/src)
* [huggingface.co/docs/optimum/exporters/onnx/usage_guides/contribute](https://huggingface.co/docs/optimum/exporters/onnx/usage_guides/contribute)
* [xavierdupre.fr/app/mlprodict/helpsphinx/onnxops/onnx_commicrosoft_Tokenizer.html](http://www.xavierdupre.fr/app/mlprodict/helpsphinx/onnxops/onnx_commicrosoft_Tokenizer.html)
* [xavierdupre.fr/app/mlprodict/helpsphinx/index.html](http://www.xavierdupre.fr/app/mlprodict/helpsphinx/index.html)
* Text Understanding and Summarization        * [duckduckgo.com/?q=triplet%20lstm%20for%20text%20embedding&ko=-1&iax=images&ia=images](https://duckduckgo.com/?q=triplet%20lstm%20for%20text%20embedding&ko=-1&iax=images&ia=images)
* [stats.stackexchange.com/questions/561872/triplet-loss-for-text-embedding-and-text-similarity](https://stats.stackexchange.com/questions/561872/triplet-loss-for-text-embedding-and-text-similarity)
    triplet LSTM [researchgate.net/figure/Triplet-LSTM-architecture-of-our-DNN-projects-users-activities-to-a-high-dimensional_fig1_341228737](https://www.researchgate.net/figure/Triplet-LSTM-architecture-of-our-DNN-projects-users-activities-to-a-high-dimensional_fig1_341228737)
* [stats.stackexchange.com/questions/561872/triplet-loss-for-text-embedding-and-text-similarity](https://stats.stackexchange.com/questions/561872/triplet-loss-for-text-embedding-and-text-similarity)
* [State of the Art Summarisation Techniques](https://humboldt-wi.github.io/blog/research/information_systems_1920/nlp_text_summarization_techniques/)
* [ieeexplore.ieee.org/document/9328413](https://ieeexplore.ieee.org/document/9328413)
* to sort
* {    pynini       } [Implementing The Levenshtein Distance in Python | Paperspace Blog](https://blog.paperspace.com/implementing-levenshtein-distance-word-autocomplete-autocorrect/)
* [Немного о: RabbitMQ, Kafka, Redis, Memcached, NuxtJS, MongoDB, PostgreSQL](https://youtu.be/c_mkpVg5rlg)
* [CI/CD In 5 Minutes | Is It Worth The Hassle? - YouTube](https://www.youtube.com/watch?v=42UP1fxi2SY)
* [Лёгкое логирование в Python с Loguru. Замена встроенной библиотеке logging - YouTube](https://www.youtube.com/watch?v=3ndEeGDVqD4)
* [LOGURU VS LOGGING. WHAT IS BETTER FOR PYTHON? - YouTube](https://www.youtube.com/watch?v=O8u6MAnRf7w)
* [Kompose - Convert your Docker Compose file to Kubernetes or OpenShift](https://kompose.io/)
* [Named Entity Recognition | Papers With Code](https://paperswithcode.com/task/named-entity-recognition-ner?page=12&q=)
* [contribute to -> andreoliwa/nitpick: Enforce the same settings on multiple projects](https://github.com/andreoliwa/nitpick)
* [maxhumber/mummify: Version Control for Machine Learning](https://github.com/maxhumber/mummify)
* [video](https://www.youtube.com/results?search_query=automatic+text+summarization)
* [Source of Makefile - rule-engine - IQSER Bitbucket](https://git.iqser.com/projects/DHLDAT/repos/rule-engine/browse/Makefile)
* [Code Commits & Reviews - Research - IQSER Wiki](https://wiki.iqser.com/pages/viewpage.action?pageId=153681955)
* [Source of Makefile - rule-engine - IQSER Bitbucket](https://git.iqser.com/projects/DHLDAT/repos/rule-engine/browse/docs/Makefile)
* [Source of df_utils.py - text-analysis - IQSER Bitbucket](https://git.iqser.com/projects/RR/repos/text-analysis/browse/text_analysis/utils/df_utils.py)
* [Browse Research & Development / python-project-template - IQSER Bitbucket](https://git.iqser.com/projects/RD/repos/python-project-template/browse)
* [Log in to Instantli-ID](https://id.instantli.com/auth/realms/iqser-id/login-actions/registration?client_id=cloud&tab_id=Nk169UXKHkI)
* [Search semantically similar paragraphs - Research - IQSER Wiki](https://wiki.iqser.com/display/RES/Search+semantically+similar+paragraphs)
* [knecon-py-logging - IQSER Bitbucket](https://git.iqser.com/projects/RD/repos/knecon-py-logging/browse)
* [Einstellungen für Research & Development / knecon-py-infra - IQSER Bitbucket](https://git.iqser.com/projects/RD/repos/knecon-py-infra/settings)
* [Übersicht - IQSER Wiki](https://wiki.iqser.com/#recently-viewed)
* [Quelle von PersonRestrictionSearchExpression.cs - instantli-base - IQSER Bitbucket](https://git.iqser.com/projects/INST/repos/instantli-base/browse/src/Instantli.Base/Search/Queries/PersonRestrictionSearchExpression.cs)
* [Makefile Tutorial By Example](https://makefiletutorial.com/)
* [Named Entity Recognition | Papers With Code](https://paperswithcode.com/task/named-entity-recognition-ner?page=12&q=)
* [Token classification - Hugging Face Course](https://huggingface.co/course/chapter7/2)
* [Retro 31.1.2023 ‒ Conceptboard](https://app.conceptboard.com/board/86fx-do2o-obtz-p4tu-ifer)
* [Use Confluence for technical documentation | Confluence Cloud | Atlassian Support](https://support.atlassian.com/confluence-cloud/docs/use-confluence-for-technical-documentation/)
* [Confluence Wiki Markup | Confluence Data Center and Server 8.0 | Atlassian Documentation](https://confluence.atlassian.com/doc/confluence-wiki-markup-251003035.html)
* [HTML Macro | Confluence Data Center and Server 8.0 | Atlassian Documentation](https://confluence.atlassian.com/doc/html-macro-38273085.html)
* [Import HTML files into confluence](https://community.atlassian.com/t5/Confluence-questions/Import-HTML-files-into-confluence/qaq-p/804375)
    python scalene
    old working nvidia: 510.108.03, Cuda 11.6        * [hub.docker.com/layers/tensorflow/tensorflow/latest-gpu/images/sha256-ce32fe3c53f94938de1513b3fe5fa25aa655a2f4c4bced42cf598fb8ce911219?context=explore](https://hub.docker.com/layers/tensorflow/tensorflow/latest-gpu/images/sha256-ce32fe3c53f94938de1513b3fe5fa25aa655a2f4c4bced42cf598fb8ce911219?context=explore)
* {    zenML       } [plasma-umass/scalene](https://github.com/plasma-umass/scalene)
    how does Google do spelling correction?
    Verlauf (letzte k) als Query / Kontext
    What effect does the exact paragraph size / tokenization procedure have?
    regelmaessig Grooming machen
    Mission Brief fur alle aktuelle Themen verfassen
    immer mit einer Loesung kommen
    debug tf warnings
    make wiki for shared NLP model knowledge
    install sdkman and make error warnings go away from bamboo-specs        * [11:39 AM] Francisco SchulzIsaac kannst du bei knecon-py-utils Version Tags setzten, wenn du deine Features implementierst?Das geht easy mit poetry version patch, dann dreht es ein Increment hoch.Wenn deine Changes fertig sind, kannst du mit git tag -a $(poetry version -s) && git push -u origin $(poetry version -s) den tag setzen[11:39 AM] Francisco SchulzSollte einen Tag geben für jede Feature Branch, die in Master gemerged wird.[11:40 AM] Francisco SchulzSonst müssen wir immer von Master installieren und das birgt das Risiko von breaking changes        * [huggingface.co/docs/transformers/tokenizer_summary](https://huggingface.co/docs/transformers/tokenizer_summary)
    fastai sub-word embeddings get nearest neighbors -> spelling corrections
    Heise-Ausgabe zu ChatGPT lesen
    update wiki for nvidia & cuda stuff
    ask Ehssan about memory requirements
    what to fixtures do?
    worl: text summarization: focus on extractive, keep validation (Prolog? graph-based?) of abstractive methods on the back burner        * [onnx/models](https://github.com/onnx/models)
    fix warnings on TF/PyTorch GPU
    install PyTorch and GPU with Poetry
    install Nvidia / Cuda / CuDNN files in Docker container        * [Trained Models & Pipelines · spaCy Models Documentation](https://spacy.io/models)
    1) Tf-idf for all non-stopwords2) semrel / dependency parsing on original text3) lemmatization, partial n-grams step for rare words and frequent n-grams (oxy, etc)4) topic models built on top of semantic relation information
* Face Detection        * [[RED-6050] Integration of face detection - IQSER Jira](https://jira.iqser.com/browse/RED-6050)
* Work        * [src/ner/spacy/evaluation.py · bdr-annotation · Knecon / Research / ner-annotation · GitLab](https://gitlab.knecon.com/knecon/research/ner-annotation/-/blob/bdr-annotation/src/ner/spacy/evaluation.py)
* [EudyContreras/Chronox.NetCore](https://github.com/EudyContreras/Chronox.NetCore)
* [yelircaasi-demo](https://readthedocs.org/projects/yelircaasi-demo/)
* Keep documenting,Read the Docs        * [Python | onnxruntime](https://onnxruntime.ai/docs/get-started/with-python.html#quickstart-examples-for-pytorch-tensorflow-and-scikit-learn)
* [nlq](https://ml.azure.com/?wsid=/subscriptions/4b9531fc-c5e4-4b11-8492-0cc173c1f97d/resourcegroups/isaac.riley-rg/providers/Microsoft.MachineLearningServices/workspaces/nlq-azureml&tid=b44be368-e4f2-4ade-a089-cd2825458048)
* [Inference BERT NLP with C# | onnxruntime](https://onnxruntime.ai/docs/tutorials/csharp/bert-nlp-csharp-console-app.html)
* [Converting from PyTorch](https://coremltools.readme.io/docs/pytorch-conversion)
* [Mac Catalyst Overview - Apple Developer](https://developer.apple.com/mac-catalyst/)
* [BertTokenizers/README.md at 150e40a178902bd258d4c9986dc1485c25c404b3 · NMZivkovic/BertTokenizers](https://github.com/NMZivkovic/BertTokenizers/blob/150e40a178902bd258d4c9986dc1485c25c404b3/README.md?plain=1#L117)
* [Inference BERT NLP with C# | onnxruntime](https://onnxruntime.ai/docs/tutorials/csharp/bert-nlp-csharp-console-app.html)
* [Inference BERT NLP with C# | onnxruntime](https://onnxruntime.ai/docs/tutorials/csharp/bert-nlp-csharp-console-app.html#understanding-the-model-in-python)
* [How to Code BERT Using PyTorch - Tutorial With Examples](https://neptune.ai/blog/how-to-code-bert-using-pytorch-tutorial)
* [Isaac Riley · GitLab](https://gitlab.knecon.com/iriley)
* [The type or namespace name 'BertInput' could not be found - Google Search](https://www.google.com/search?client=firefox-b-d&q=The+type+or+namespace+name+%27BertInput%27+could+not+be+found)
* [Relegation ist unfair: Was für eine Alternative gäbe es?! - YouTube](https://www.youtube.com/watch?v=fp6TGu3GNZk)
* [NMZivkovic/BertTokenizers: Open source project for BERT Tokenizers in C#.](https://github.com/NMZivkovic/BertTokenizers/tree/master)
* [google-research/bert: TensorFlow code and pre-trained models for BERT](https://github.com/google-research/bert#using-bert-to-extract-fixed-feature-vectors-like-elmo)
* [word or sentence embedding from BERT model · Issue #1950 · huggingface/transformers](https://github.com/huggingface/transformers/issues/1950)
* [Token classification](https://huggingface.co/docs/transformers/tasks/token_classification)
* [shehzaadzd/pytorch-pretrained-BERT: A PyTorch implementation of Google AI's BERT model provided with Google's pre-trained models, examples and utilities.](https://github.com/shehzaadzd/pytorch-pretrained-BERT#Loading-Google-AIs-pre-trained-weigths-and-PyTorch-dump)
* [Bert ner classifier - Beginners - Hugging Face Forums](https://discuss.huggingface.co/t/bert-ner-classifier/5847/2)
* [guillaumegenthial/tf_ner: Simple and Efficient Tensorflow implementations of NER models with tf.estimator and tf.data](https://github.com/guillaumegenthial/tf_ner)
* [dslim/bert-base-NER · Hugging Face](https://huggingface.co/dslim/bert-base-NER)
* [dslim/bert-large-NER · Hugging Face](https://huggingface.co/dslim/bert-large-NER)
* [Sequence Tagging with Tensorflow](https://guillaumegenthial.github.io/sequence-tagging-with-tensorflow.html)
* [pytorch-pretrained-bert · PyPI](https://pypi.org/project/pytorch-pretrained-bert/)
* [Tokenizer](https://huggingface.co/docs/transformers/v4.30.0/en/main_classes/tokenizer#transformers.PreTrainedTokenizer)
* [DistilBERT](https://huggingface.co/docs/transformers/model_doc/distilbert#transformers.DistilBertTokenizer)
* [transformers/src/transformers/models/distilbert/tokenization_distilbert.py at v4.30.0 · huggingface/transformers](https://github.com/huggingface/transformers/blob/v4.30.0/src/transformers/models/distilbert/tokenization_distilbert.py#L89)
* [RNN, LSTM, and Bidirectional LSTM: Complete Guide | DagsHub](https://dagshub.com/blog/rnn-lstm-bidirectional-lstm/)
* [crf.pdf](http://www.cs.columbia.edu/~mcollins/crf.pdf)
* [CRFs.pdf](https://cseweb.ucsd.edu/~elkan/250B/CRFs.pdf)
* [mal-013.dvi - crftut-fnt.pdf](https://homepages.inf.ed.ac.uk/csutton/publications/crftut-fnt.pdf)
* [pytorch-transformers · PyPI](https://github.com/huggingface/transformers)
* [1910.01108.pdf](https://arxiv.org/pdf/1910.01108.pdf) Distilbert paper        * [Library Genesis](http://libgen.is/search.php?req=Probabilistic+Graphical+Models%3A+Principles+and+Techniques&lg_topic=libgen&open=0&view=simple&res=25&phrase=1&column=def) PGM Books        * [Saving and Loading Models — PyTorch Tutorials 2.0.1+cu117 documentation](https://pytorch.org/tutorials/beginner/saving_loading_models.html)
* [Inference BERT NLP with C# | onnxruntime](https://onnxruntime.ai/docs/tutorials/csharp/bert-nlp-csharp-console-app.html)
* [Python Testing with pytest.pdf - Google Drive](https://drive.google.com/file/d/1B23Ye7BHw76HUtFsLx0XA0XgY_zxdOs-/view)
* [Conditional Random Fields : Data Science Concepts - YouTube](https://www.youtube.com/watch?v=rI3DQS0P2fk)
* [BERT Word Embeddings Tutorial · Chris McCormick](http://mccormickml.com/2019/05/14/BERT-word-embeddings-tutorial/#1-loading-pre-trained-bert)
* [The Secret to Improved NLP: An In-Depth Look at the nn.Embedding Layer in PyTorch | by Will Badr | Towards Data Science](https://towardsdatascience.com/the-secret-to-improved-nlp-an-in-depth-look-at-the-nn-embedding-layer-in-pytorch-6e901e193e16)
* [Embedding — PyTorch 2.0 documentation](https://pytorch.org/docs/stable/generated/torch.nn.Embedding.html)
* [Pretrained Models — Sentence-Transformers documentation](https://www.sbert.net/docs/pretrained_models.html)
* [Impact Mapping](https://www.impactmapping.org/)
* [[WS] Potential of AI solutions at knecon: market research & product ideas - Research - Wiki](https://knecon.atlassian.net/wiki/spaces/RES/pages/36470800/WS+Potential+of+AI+solutions+at+knecon+market+research+product+ideas)
* [distilbert-base-cased · Hugging Face](https://huggingface.co/distilbert-base-cased)
* [distilbert-base-german-cased · Hugging Face](https://huggingface.co/distilbert-base-german-cased)
* [BertTokenizers/src/Base at master · NMZivkovic/BertTokenizers · GitHub](https://github.com/NMZivkovic/BertTokenizers/tree/master/src/Base)
* [Dit Document Layout Analysis - a Hugging Face Space by nielsr](https://huggingface.co/spaces/nielsr/dit-document-layout-analysis)
* [raghavan/PdfGptIndexer: An efficient tool for indexing and searching PDF text data using OpenAI's GPT-2 model and FAISS (Facebook AI Similarity Search) index, designed for rapid information retrieval and superior search accuracy.](https://github.com/raghavan/PdfGptIndexer)
* [ebnf.pdf](https://www.ics.uci.edu/~pattis/ICS-33/lectures/ebnf.pdf)
* [[1910.01108] DistilBERT, a distilled version of BERT: smaller, faster, cheaper and lighter](https://arxiv.org/abs/1910.01108)
* sort
    add hash partition functionality to kn_utils?
    Danar Java PDFs und CV PDFs schicken
    discuss table caption parsing with Matthias and Julius
    learn abstract methods (for hashing partitioning)
    perceptual hash
    md5 sum
    rewrite data generation module in haskell (grammarator)
    deduplication via embeddings for case where there is a tiny difference in files and the hash is thus different
    read Kubernetes docs
    learn Pytorch conv1d vs conv2d
    Make MVP Go container for RabbitMQ
* Knecon Roadmap Discussion
    ## Documine
    → components vs entities
    Meier-Meyer problem:
    → use soundex for recall, jaro-winkler to filter for precision
    Iterative prompting - using LLM to help refine the prompt
    Rule degrees, by probability of correctness / reliability
    View rules as a graph → clustering → recombination and discovery → have we done this?
    fforesight: base technology, should soon integrate all other services
    indexes of laws and court decisions → large, queriable database
* Check OS and software packaging guidelines for Knecon → ticket with write-up for Manuel to look at
* [opentelemetry.io/docs/instrumentation/python/](https://opentelemetry.io/docs/instrumentation/python/)
* [opentelemetry.io/docs/instrumentation/python/](https://opentelemetry.io/docs/instrumentation/python/)
* [opentelemetry.io/docs/instrumentation/python/getting-started/](https://opentelemetry.io/docs/instrumentation/python/getting-started/)
* [medium.com/@ikirichenko/distributed-tracing-in-practice-ad477343ab07](https://medium.com/@ikirichenko/distributed-tracing-in-practice-ad477343ab07)
* [peter.bourgon.org/blog/2017/02/21/metrics-tracing-and-logging.html](https://peter.bourgon.org/blog/2017/02/21/metrics-tracing-and-logging.html)
* [medium.com/@venkatasamy.rajkumar/distributed-tracing-in-polyglot-microservices-448ae38619e4](https://medium.com/@venkatasamy.rajkumar/distributed-tracing-in-polyglot-microservices-448ae38619e4)
* [rajkumarvenkatasamy/tracing-polyglot-services](https://github.com/rajkumarvenkatasamy/tracing-polyglot-services)
* [gitlab.knecon.com/redactmanager/helm/-/blob/master/answers/development.yml?ref_type=heads](https://gitlab.knecon.com/redactmanager/helm/-/blob/master/answers/development.yml?ref_type=heads)
* [knecon.atlassian.net/wiki/spaces/RES/pages/82018324](https://knecon.atlassian.net/wiki/spaces/RES/pages/82018324)
* [knecon.atlassian.net/wiki/spaces/ITH/pages/14762627/DNS+Names](https://knecon.atlassian.net/wiki/spaces/ITH/pages/14762627/DNS+Names)
* opentelemetry-instrumentation-logging opentelemetry-instrumentation-dbapi opentelemetry-instrumentation-logging opentelemetry-instrumentation-sqlite3 opentelemetry-instrumentation-urllib opentelemetry-instrumentation-wsgi opentelemetry-instrumentation-grpc opentelemetry-instrumentation-requests opentelemetry-instrumentation-system-metrics opentelemetry-instrumentation-urllib3
* refactor pyinfra → mypy types
* add type-mappings.json to training data
* pdf-generation → make very large PDFs
* Termin mit Chris und Julius machen (bzgl. NixOS)
* [[KNECO-35] Standardize ML Services — knecon Atlas](https://team.atlassian.com/project/KNECO-35/updates)
* [Redactmanager](https://isaac1.iqser.cloud/ui/redaction/main/dashboard)
* [knecon ISMS - Wiki](https://knecon.atlassian.net/wiki/spaces/COMP/overview?homepageId=11436065)
* [Library Genesis](https://libgen.is/search.php?req=ISO+27001&lg_topic=libgen&open=0&view=simple&res=25&phrase=1&column=def) ISO27001
* [[How To] GitLab - Research - Wiki](https://knecon.atlassian.net/wiki/spaces/RES/pages/14928399/How+To+GitLab)
* [multik-core](https://kotlin.github.io/multik/index.html)
* [gitlab.knecon.com/redactmanager/research/pdf-generation](https://gitlab.knecon.com/redactmanager/research/pdf-generation)
* [[How To/Azure/AML] Using the knecon-azure-sdk - Research - Wiki](https://knecon.atlassian.net/wiki/spaces/RES/pages/67698709/How+To+Azure+AML+Using+the+knecon-azure-sdk)
* [Instantli - Wiki](https://knecon.atlassian.net/wiki/spaces/IN/overview)
* [Instantli - Files - Nextcloud](https://cloud.knecon.com/index.php/apps/files/?dir=/Instantli&fileid=1109641)
* [Table Extraction roadmap](https://whimsical.com/table-extraction-JawJvecAiPRQpcmxvucdXQ)
* [TeX Live 2023 Upgrade to occur May 22nd, 2023 – arXiv blog](https://blog.arxiv.org/2023/05/12/tex-live-2023-upgrade-to-occur-may-22nd-2023/)
* [Disadvantages of RAG. Recently, the rise of large language… | by Kelvin Lu | Aug, 2023 | Medium](https://medium.com/@kelvin.lu.au/disadvantages-of-rag-5024692f2c53)
* [explodinggradients/ragas: Evaluation framework for your Retrieval Augmented Generation (RAG) pipelines](https://github.com/explodinggradients/ragas/)
* [Files - Nextcloud](https://cloud.knecon.com/index.php/s/6HSpwWfyxETwL45)
* [Retrieval-Augmentation Generation / LMs - Research - Wiki](https://knecon.atlassian.net/wiki/spaces/RES/pages/117407745/Retrieval-Augmentation+Generation+LMs)
* [2023-10-11/12 Backend Improvement and Refactoring Ideas - Product Management - Wiki](https://knecon.atlassian.net/wiki/spaces/PM/pages/118784001/2023-10-11+12+Backend+Improvement+and+Refactoring+Ideas)
* [Nextcloud](https://cloud.knecon.com/index.php/s/GEQS8etky76AWMS)
* [RedactManager / image-classification-service · GitLab](https://gitlab.knecon.com/redactmanager/image-classification-service)
* [Settings - Microsoft Azure](https://portal.azure.com/#settings/directory)
* [[How To] Rancher Deployment - Research - Wiki](https://knecon.atlassian.net/wiki/spaces/RES/pages/82018324/How+To+Rancher+Deployment)
* [Code snippets and recipes for loguru — loguru documentation](https://loguru.readthedocs.io/en/stable/resources/recipes.html#serializing-log-messages-using-a-custom-function)
* [Work with kubectl - IT Helpdesk - Wiki](https://knecon.atlassian.net/wiki/spaces/ITH/pages/14755481/Work+with+kubectl)
* [Dashboard | Mein Edenred](https://www.mein-edenred.de/dashboard)
* [Token classification](https://huggingface.co/docs/transformers/tasks/token_classification)
* [JPMorgan Announces DocLLM for Multimodal Document Understanding](https://analyticsindiamag.com/jpmorgan-announces-docllm-for-multimodal-document-understanding/)
* [Instantli / nlq-pipeline · GitLab](https://gitlab.knecon.com/instantli/nlq-pipeline)
* [[RES] all - Timeline - Jira](https://knecon.atlassian.net/jira/software/c/projects/RES/boards/40/timeline)
* [Instantli Windows - type-mappings.json - All Documents](https://iqser.sharepoint.com/sites/InstantliWindows/Freigegebene%20Dokumente/Forms/AllItems.aspx?id=%2Fsites%2FInstantliWindows%2FFreigegebene%20Dokumente%2FNLQ%2Ftype%2Dmappings%2Ejson&parent=%2Fsites%2FInstantliWindows%2FFreigegebene%20Dokumente%2FNLQ&p=true&ct=1706182827954&or=OWA%2DNT&cid=83214d5f%2D7870%2D46f8%2D883d%2D7822810e7265&fromShare=true&ga=1)
* [nlq-azureml - Microsoft Azure](https://portal.azure.com/#@knecon.com/resource/subscriptions/4b9531fc-c5e4-4b11-8492-0cc173c1f97d/resourceGroups/isaac.riley-rg/providers/Microsoft.MachineLearningServices/workspaces/nlq-azureml/overview)
* [Knecon / Research / ner-annotation · GitLab](https://gitlab.knecon.com/knecon/research/ner-annotation)
* [Getting Started | OpenTelemetry](https://opentelemetry.io/docs/instrumentation/python/getting-started/)
* [pytest-opentelemetry · PyPI](https://pypi.org/project/pytest-opentelemetry/)
* work Dell KB522p
* work Logi MX Master 2S
* work Backend Development - Agile board - Jira
* work [Look Scanned](https://lookscanned.io/)
* work [azureml-assets/assets/training/general/environments/acpt-pytorch-2.0-cuda11.7/context/Dockerfile at 2e29aa94865116c08578b52b40da9c4a6abb7a95 · Azure/azureml-assets](https://github.com/Azure/azureml-assets/blob/2e29aa94865116c08578b52b40da9c4a6abb7a95/assets/training/general/environments/acpt-pytorch-2.0-cuda11.7/context/Dockerfile)
* work [docker-compose.yml · main · Knecon / Research / ner-annotation · GitLab](https://gitlab.knecon.com/knecon/research/ner-annotation/-/blob/main/docker-compose.yml?ref_type%3Dheads)
* work [nlq - Azure AI | Machine Learning Studio](https://ml.azure.com/environments/nlq/version/1?wsid%3D/subscriptions/4b9531fc-c5e4-4b11-8492-0cc173c1f97d/resourcegroups/isaac.riley-rg/providers/Microsoft.MachineLearningServices/workspaces/ir-aml%26tid%3Db44be368-e4f2-4ade-a089-cd2825458048)
* work [scripts/README.md · main · Knecon / Research / ner-annotation · GitLab](https://gitlab.knecon.com/knecon/research/ner-annotation/-/blob/main/scripts/README.md?ref_type%3Dheads)
* work src/Instantli.Services/Implementation/Nlq · main · Instantli / Instantli Services · GitLab
* work prepare demo for .env and .envrc, prepare demo → in conjunction with Dynaconf
* work update poetry with official installer
* [fasttext.cc/docs/en/aligned-vectors.html](https://fasttext.cc/docs/en/aligned-vectors.html)