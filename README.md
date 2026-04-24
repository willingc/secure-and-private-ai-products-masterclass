## Building Secure and Private AI Products: A multidisciplinary masterclass

This repository is for [kjamistan's](https://kjamistan.com) multidisciplinary masterclass on developing secure by default and private by design AI/ML products. More information in the [YOW Melbourne Masterclass description](https://yowcon.com/melbourne-2025/masterclasses/556/building-secure-ai-systems).

This intensive, one-day masterclass goes beyond theoretical concepts, empowering experienced engineers and architects to proactively build privacy and security into AI products by design.

Move beyond reactive measures by learning:

- **Real-World Threat Modeling**: Identify vulnerabilities in your AI systems.
- **Hands-On Red Teaming**: Execute and evaluate attacks on models.
- **Meta Prompt Engineering & Guardrails**: Learn how to create useful and more privacy-aware meta prompts. Use guardrails to identify insecure prompts or questionable AI output.
- **Data Flow Analysis, Risk Assessment, Privacy Controls**: Map and mitigate privacy and confidentiality risks in your data workflows. Choose appropriate protections for identification, sanitization and pseudonymization.
- **Practical Model Evaluation Strategies**: Build evaluation datasets and integrate security & privacy testing into your deployment workflow.

If you have a suggestion for another library or additional topic, feel free to drop me a line. :)

## Repository Information

This project contains the Jupyter Notebooks and the associated requirements files (requirements.txt and pyproject.toml) for Katharine Jarmul's Private and Secure AI/ML Product Masterclass. It contains exercises (/notebooks) and necessary data (/data) and templates (/templates).

Shield: [![CC BY-SA 4.0][cc-by-sa-shield]][cc-by-sa]

This work is licensed under a
[Creative Commons Attribution-ShareAlike 4.0 International License][cc-by-sa].

[![CC BY-SA 4.0][cc-by-sa-image]][cc-by-sa]

[cc-by-sa]: http://creativecommons.org/licenses/by-sa/4.0/
[cc-by-sa-image]: https://licensebuttons.net/l/by-sa/4.0/88x31.png
[cc-by-sa-shield]: https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg

### Local Installation

To install locally, please follow these steps:

These lessons has been tested for Python 3.12 and use the latest release of each library, except where versions are pinned.

You likely can run most of the code with older releases, but if you run into an issue, try upgrading the library in question first.

Recommended installation steps using Conda.

```
$ conda create -n mlsecurity --copy python=3.12
$ conda activate mlsecurity
$ conda install pip
$ pip install -r requirements.txt
```

#### Using uv

If you are using uv, you can also use the pyproject.toml file to install the necessary requirements.

```
$ uv venv
$ source .venv/bin/activate
$ uv sync
$ uv run jupyter lab
```

#### Using pixi

[pixi](https://pixi.prefix.dev/latest/) is a package management tool useful for installing Python
and project dependencies. It has nice support for CPU and GPU environments.

After cloning the repo:

1. [Install pixi](https://pixi.prefix.dev/latest/installation/).
2. Install and activate the pixi environment: `pixi install`
3. Check the dependencies installed: `pixi list`
4. Run a command: `pixi run jupyter lab`

Helpful commands in [Getting Started](https://pixi.prefix.dev/latest/getting_started/):
- `pixi -h` - help
- `pixi self-update` - update pixi itself

### Installation tips for getting started with no previous Python environment

1. Download Anaconda: https://www.anaconda.com/download
2. Download GitHub Desktop: https://desktop.github.com/download/
3. In GitHub Desktop, go to this repository and clone it.
4. Download ollama for desktop: https://ollama.com/download
5. Download a few llamafiles: https://github.com/Mozilla-Ocho/llamafile?tab=readme-ov-file#other-example-llamafiles and make sure to make them executable (If new to this, search: your OS + how to change file permissions to make executable)
6. Open an Anaconda prompt, navigate to where the GitHub repository is, run the steps in the conda install instruction above.
7. Launch Jupyter Notebook by typing 'jupyter notebook' in that same prompt. More info on Step 6+7 here: https://dev.to/saintniyi/launch-anaconda-jupyter-notebook-environment-from-any-folder-in-any-drive-58mj

If you run into any issues, please let me know!

### Corrections?

If you find any issues in these code examples, feel free to submit an Issue or Pull Request. I appreciate your input!

### Questions?

Reach out to @kjam here or [via the Probably Private contact options](https://probablyprivate.com/about/).
