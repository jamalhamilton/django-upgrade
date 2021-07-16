## Project Setup

### Installation

1. Clone project
2. Create a virtual environment 
```
conda create --name <environment_name> python=3.7
```
3. Activate conda environment
```
conda activate <environment_name>
```
4. Use conda to install mysql library + system packages with
```
conda install mysqlclient
```
5. Install requirements (need to use `pip` because some packages are not available to `conda`)
```
pip install -r requirements.txt
```

### .env
A template for the required entries can be found at [.env.DEMO](.env.DEMO). Make a copy of this file and name it `.env` and ensure it is not tracked by git.

## Local testing
Run the app locally, from the project's root directory:
```
python manage.py runserver
```

### Migrations
If any changes are made to the database models, those changes need to be recorded ("migrated") before restarting the server:
```
python manage.py makemigrations
python manage.py migrate
```
Note that these migrations might affect the structure of the corresponding database tables, possibly affecting the functionality of the app, even if you do not deploy your branch.
