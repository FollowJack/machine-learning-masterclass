virtualenv venv;
source venv/bin/activate;
which python;
pip install ipykernel;
ipython kernel install --user --name=venv;
pip install torch torchvision;
pip install matplotlib;
jupyter notebook;
