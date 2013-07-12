Kata-Skeleton.py
================

This skeleton is inspired from [kata-skeleton.php](https://github.com/kevinlebrun/kata-skeleton.php) repository.  

It provide a bootstrap for a kata or simply for a python project.  

## Requirements

- make  
- virtualenv  

## Usage

First clone this repository  
```git clone https://github.com/Sliim/kata-skeleton.py.git```  

Python virtualenv is used to manage your project dependencies.  

You can edit `requirements.txt` file to add or remove dependencies for your project.
This file is read by `pip` for packages installation.  

To initialize kata project run:  
```make install```  

You can specify a name for your kata:  
```make install KATA=foobar```  

By default, virtual environment is installed in `env` directory, you can override this value with `ENV` variable:  
```make install ENV=myenv```  

For others variable report to `Makefile`.  

To clean virtual environment:  
```make clean-env```  

To execute your tests:  
```make run-tests```  

## License

See COPYING file.
