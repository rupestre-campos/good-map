# Open National Parks Map

[Demo live map](https://car.rupestre-campos.org/national-parks-map)

![image](https://raw.githubusercontent.com/rupestre-campos/open-national-parks-map/refs/heads/main/sample_map_national_parks.png)

This repository holds code to create a Worldwide National Parks dataset from open source data.
The start point is to extract from Open Street Maps, thanks to this great project we are able to
query national parks for each country present in Natural Earth dataset, looking for tags of interest.

In a hurry? We got you covered with the lattest release ready to [download](https://github.com/rupestre-campos/open-national-parks-map/releases)

## Instalation
Debians
Open terminal and run commands bellow to install dependencies and setup environment

```
sudo apt update
sudo apt install python-venv
git clone https://github.com/rupestre-campos/open-national-parks-map.git
cd open-national-parks-map/etl/
python -m venv .venv
source .venv/bin/activate
python -m pip install -r requirements.txt
python national_parks.py
```

## WHY?

Besides IUCN holds a World database on protected areas, it is not open for
comercial use. So if you are looking for open data this project can be helpful.

## IDEAS, ISSUES, HELP

Post on issues in this repo and I will help.

## CONTRIBUTING

Get in touch in issues and we can discuss how to collaborate.

## FUTURE

Provide a vector tile layer for web maps and qgis;

Create a simple public dynamic web map;

Create detailed maps for each park in pdf for offline use;
