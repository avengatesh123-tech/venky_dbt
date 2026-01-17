
### **Technology Stack**
| Tool | Icon | Purpose |
|------|------|---------|
| Snowflake | ![Snowflake](https://raw.githubusercontent.com/simple-icons/simple-icons/develop/icons/snowflake.svg) | Cloud Data Warehouse |
| dbt | ![dbt](https://raw.githubusercontent.com/simple-icons/simple-icons/develop/icons/dbt.svg) | Transformation Layer |
| AWS | ![AWS](https://raw.githubusercontent.com/simple-icons/simple-icons/develop/icons/amazonaws.svg) | Cloud Storage & Services |
| Python | ![Python](https://raw.githubusercontent.com/simple-icons/simple-icons/develop/icons/python.svg) | Programming |
| Git | ![Git](https://raw.githubusercontent.com/simple-icons/simple-icons/develop/icons/git.svg) | Version Control |

---

## 📊 Data Model

### 🥉 Bronze Layer (Raw Data)
- `bronze_bookings` – raw bookings  
- `bronze_hosts` – raw host info  
- `bronze_listings` – raw listings  

### 🥈 Silver Layer (Cleaned Data)
- `silver_bookings` – validated bookings  
- `silver_hosts` – enriched host info  
- `silver_listings` – standardized listings  

### 🥇 Gold Layer (Analytics-Ready)
- `obt` – denormalized fact table (bookings + listings + hosts)  
- `fact` – dimensional fact table  
- Ephemeral models – intermediate transformations  

---

## 🕰️ Snapshots (SCD Type 2)
- `dim_bookings`, `dim_hosts`, `dim_listings`  
- Tracks historical changes automatically  

---

## 📁 Project Structure

```text
AWS_DBT_Snowflake/
├── README.md
├── pyproject.toml
├── main.py
├── SourceData/
├── DDL/
└── aws_dbt_snowflake_project/
    ├── dbt_project.yml
    ├── ExampleProfiles.yml
    ├── models/
    ├── macros/
    ├── analyses/
