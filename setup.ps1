# AI Generated script to create standard file system for a new project 


$project = Join-Path $HOME 'AI_LAB\projects\tests\python-lab'

# Create project directories
New-Item -ItemType Directory -Force -Path (Join-Path $project 'src\python_lab') | Out-Null

# Create Python package initializer
New-Item -ItemType File -Force -Path (Join-Path $project 'src\python_lab\__init__.py') | Out-Null

# Create main.py
$main = @(
    'def main():',
    '    print("AI LAB - Python environment working correctly!")',
    '',
    'if __name__ == "__main__":',
    '    main()'
)
Set-Content -Path (Join-Path $project 'src\python_lab\main.py') -Value $main -Encoding utf8

# Create .gitignore
$gitignore = @(
    '# Python',
    '__pycache__/',
    '*.py[cod]',
    '*.pyd',
    '.pytest_cache/',
    '.mypy_cache/',
    '',
    '# Virtual environments',
    '.venv/',
    'venv/',
    'env/',
    '',
    '# IDE',
    '.vscode/',
    '',
    '# Environment variables and secrets',
    '.env',
    '.env.*',
    '!.env.example',
    '',
    '# Build artifacts',
    'build/',
    'dist/',
    '*.egg-info/'
)
Set-Content -Path (Join-Path $project '.gitignore') -Value $gitignore -Encoding utf8

# Create README.md
$readme = @(
    '# Python Lab',
    '',
    'First Python project in AI LAB.',
    '',
    '## Requirements',
    '',
    '- Python 3.13+',
    '- Virtual environment (venv)',
    '',
    '## Run',
    '',
    'Activate the virtual environment:',
    '',
    '```powershell',
    '.\.venv\Scripts\Activate.ps1',
    '```',
    '',
    'Run the application:',
    '',
    '```powershell',
    '$env:PYTHONPATH = "$PWD\src"',
    'python -m python_lab.main',
    '```'
)
Set-Content -Path (Join-Path $project 'README.md') -Value $readme -Encoding utf8

Write-Host ""
Write-Host "Project structure created successfully!" -ForegroundColor Green
Write-Host "Location: $project"