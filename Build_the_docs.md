### How to build this page?

If you want to build this page on your own, do the following:


1. Clone this repo

   ```bash
   git clone https://github.com/andresmmera/Open-RF-Circuit-Design
   ```

2. Create Python virtual environment
   ```bash
   python3 -m venv docs-venv
   ```
3. Activate virtual environment
   ```bash
   source docs-venv/bin/activate
   ```

4. Install the required Python packages to build the documentation
   ```bash
   pip3 install -r requirements.txt
   ```
5. Build Sphinx documentation
   ```bash
   sphinx-build -M html . docs
   ```

6. Open a web browser
   ```bash
   firefox ./docs/html/index.html
   ```
