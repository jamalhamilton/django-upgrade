## Project Setup

### Installation

1. Clone project
2. Create a virtual environment using conda

3. Activate conda environment
```
conda activate <environment_name>
```
4. Use conda to install mysql library + system packages with
5. Install requirements (need to use `pip` because some packages are not available to `conda`)
```
pip install -r requirements.txt
```

### Migrations
If any changes are made to the database models, those changes need to be recorded ("migrated") before restarting the server:
```
python manage.py makemigrations
python manage.py migrate
```

