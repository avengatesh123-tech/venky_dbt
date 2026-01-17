# 🏠 Airbnb End-to-End Data Engineering Project

---

## 📋 Overview
Complete **Airbnb data engineering pipeline** using modern tools and cloud technologies.

---

## 🏗️ Tech Stack
[![Python](https://img.shields.io/badge/Python-3.12-blue?logo=python&logoColor=white&style=for-the-badge)](https://www.python.org/)
[![dbt](https://img.shields.io/badge/dbt-1.11-orange?logo=dbt-labs&logoColor=white&style=for-the-badge)](https://www.getdbt.com/)
[![Snowflake](https://img.shields.io/badge/Snowflake-Active-blue?logo=snowflake&logoColor=white&style=for-the-badge)](https://www.snowflake.com/)
[![AWS](https://img.shields.io/badge/AWS-Services-orange?logo=amazon-aws&logoColor=white&style=for-the-badge)](https://aws.amazon.com/)
[![Git](https://img.shields.io/badge/Git-VersionControl-red?logo=git&logoColor=white&style=for-the-badge)](https://git-scm.com/)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue?logo=linkedin&logoColor=white&style=for-the-badge)](https://www.linkedin.com/)

---
## FOLDER STRUCURE 
AWS_DBT_Snowflake_Project/
├── README.ipynb                  # Notebook version of README with badges & icons
├── README.md                     # Standard Markdown README (optional)
├── pyproject.toml                # Python project dependencies
├── requirements.txt              # Python dependencies
├── main.py                       # Optional: main Python execution script
│
├── SourceData/                   # Raw CSV source files
│   ├── bookings.csv
│   ├── hosts.csv
│   └── listings.csv
│
├── DDL/                          # Database schema and table creation scripts
│   ├── ddl.sql
│   └── resources.sql
│
└── aws_dbt_snowflake_project/    # Main dbt project
    ├── dbt_project.yml           # dbt project config
    ├── profiles.yml (or ExampleProfiles.yml) # Snowflake connection config
    │
    ├── models/                   # dbt SQL models
    │   ├── sources/              # Source definitions
    │   │   └── sources.yml
    │   ├── bronze/               # Bronze layer (raw data)
    │   │   ├── bronze_bookings.sql
    │   │   ├── bronze_hosts.sql
    │   │   └── bronze_listings.sql
    │   ├── silver/               # Silver layer (cleaned / enriched)
    │   │   ├── silver_bookings.sql
    │   │   ├── silver_hosts.sql
    │   │   └── silver_listings.sql
    │   └── gold/                 # Gold layer (analytics-ready)
    │       ├── fact.sql
    │       ├── obt.sql
    │       └── ephemeral/        # Ephemeral / intermediate transformations
    │           ├── bookings.sql
    │           ├── hosts.sql
    │           └── listings.sql
    │
    ├── macros/                   # Reusable SQL macros
    │   ├── generate_schema_name.sql
    │   ├── multiply.sql
    │   ├── tag.sql
    │   └── trimmer.sql
    │
    ├── analyses/                 # Ad-hoc analysis SQL
    │   ├── explore.sql
    │   ├── if_else.sql
    │   └── loop.sql
    │
    ├── snapshots/                # SCD Type 2 snapshots
    │   ├── dim_bookings.yml
    │   ├── dim_hosts.yml
    │   └── dim_listings.yml
    │
    ├── tests/                    # Data quality tests
    │   └── source_tests.sql
    │
    └── seeds/                    # Static reference / seed data

## 🥉 Bronze Layer (Raw Data)
- `bronze_bookings` – raw booking data  
- `bronze_hosts` – raw host data  
- `bronze_listings` – raw property data  

## 🥈 Silver Layer (Cleaned Data)
- `silver_bookings` – validated booking records  
- `silver_hosts` – enriched host info  
- `silver_listings` – standardized listings  

## 🥇 Gold Layer (Analytics-Ready)
- `obt` – denormalized fact table  
- `fact` – dimensional fact table  

---

## 🔧 Usage
```bash
# Test dbt connection
dbt debug

# Run full pipeline
dbt build

# Run only bronze layer
dbt run --select bronze.*

# Run only silver layer
dbt run --select silver.*

# Run snapshots
dbt snapshot

# Run tests
dbt test
