# **Using Dev Container

*The dev container and instructions is based on work by Pastor Soto and Hugo
Bowne-Anderson that was used in the March 2026 cohort of "Building with AI tools".*

---

## 📂 **Repository Structure**
- **`.devcontainer/`** – Dev container configuration to streamline environment setup for **GitHub Codespaces**.
- **`requirements.txt`** – Lists all dependencies required to run the applications and examples used during the course.

---

## 🛠️ **Setup**
This course is designed to run primarily on **GitHub Codespaces** for a seamless, pre-configured environment.

**If you're new to Codespaces** – think of it as **Google Colab but for VS Code.** You get a full IDE with a terminal, local file system, and Jupyter notebooks – all running in the cloud, directly in your browser.

### 1. **To launch the environment:**

1. Click the **"Code"** button in the repository.
2. Select **"Codespaces"** and create a new Codespace.
3. Click **Code** → **Create Codespace on main**.

### 2. Activate the Environment

In the terminal:

```
source .venv/bin/activate
```

### 3. Pull the Repository

We `git pull` the repo to make sure that our codespace is up to date:

```
git pull
```
