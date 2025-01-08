# Setup Instructions for zinny-webui

Zinny-webui is the frontend interface for interacting with the Zinny system. It depends on `zinny-api` to provide backend services.

## Easy-peasy Pip Install and run
```bash
pip install zinny-webui
zinny-webui
```

## Development / Python Installation


### Prerequisites
- Python 3.8 or later
- `zinny-api`
- `zinny-surveys` 
  
`zinny-api` and `zinny-surveys` are in requirements.txt, no extra installation is needed.


### Clone the Repository
1. Clone the repository:
    ```bash
    git clone https://github.com/RyLaney/zinny-webui.git
    ```

2. Create and activate a virtual environment:
    ```bash
    # With venv
    python -m venv venv
    source venv/bin/activate  # On Windows: venv\Scripts\activate
    ```
    ```bash
    # with conda
    conda env create -f environment.yml
    conda activate zinny

    # update an existing environment
    conda env update --file environment.yml --prune
    ```
3. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

## Running the Web UI
1. Ensure the `zinny-api` server is running. By default, it should be available at http://127.0.0.1:7219.

2. Run the web interface:
   ```bash
   python zinny-webui.py
   ```

The application will automatically open in your default web browser. If not, navigate to `http://127.0.0.1:7219`.

### Optional Flags
- `--no-launch-browser`: Prevents automatically opening the browser.
- `--port [PORT]`: Specifies a custom port (default: 7219).

Example:
   ```bash
   python zinny-webui.py --port 7219 --no-launch-browser
   ```


## Binaries
The current release includs a binary and App bundle for MacOS. Download the appropriate binary from the [releases page]

### Verifying the File Integrity
1. Download the executable and its corresponding `.sha256` checksum file.
2. Verify the checksum:
   - On Linux/macOS:
     ```bash
     shasum -c zinny-launch-webui-v0-1-26-x86
     shasum -c Zinny\ Launch\ WebUI.dmg.sha256.sha256
     ```
   - On Windows (PowerShell):
     ```powershell
     Get-FileHash your-file.ext -Algorithm SHA256 | Format-Table
     ```
3. Ensure the output matches the checksum provided in the `.sha256` file.

