# WHOOP Fitness Analytics Data Warehouse

## Deskripsi Proyek

Proyek ini merupakan implementasi proses **Extract, Transform, Load (ETL)**, **Extract, Load, Transform (ELT)**, **Data Warehouse**, dan **Business Intelligence Dashboard** menggunakan **WHOOP Fitness Dataset** serta data cuaca dari **Weather API**.

Tujuan proyek adalah mengintegrasikan data dari berbagai sumber, melakukan pembersihan dan transformasi data, menyimpan data ke dalam Data Warehouse berbasis SQLite, melakukan analisis menggunakan SQL, serta menyajikan hasil analisis melalui dashboard interaktif menggunakan Microsoft Power BI.

---

## Dataset

### Dataset 1 – WHOOP Fitness Dataset

Sumber:

* Kaggle WHOOP Fitness Dataset

Deskripsi:
Dataset berisi informasi terkait aktivitas dan kebugaran pengguna, seperti:

* Recovery Score
* Sleep Hours
* Heart Rate Variability (HRV)
* Calories Burned
* Fitness Level
* Gender
* Primary Sport
* Daily Activity Metrics

### Dataset 2 – Weather API

Sumber:

* OpenWeather API

Deskripsi:
Data cuaca digunakan sebagai sumber data tambahan untuk memenuhi kebutuhan multi-source ETL. Data diperoleh melalui API menggunakan Python dan disimpan dalam format JSON sebelum diproses lebih lanjut.

---

## Teknologi yang Digunakan

* Python
* Pandas
* NumPy
* SQLite
* Google Colab
* Power BI Desktop
* Weather API
* SQL

---

## Arsitektur Sistem

Alur proses proyek:

WHOOP Fitness Dataset + Weather API

↓

Extract

↓

Transform

↓

Load

↓

SQLite Data Warehouse

↓

SQL Analytics

↓

Power BI Dashboard

---

## Implementasi ETL

Tahapan ETL meliputi:

### Extract

* Mengambil data WHOOP Fitness Dataset.
* Mengambil data cuaca melalui Weather API.

### Transform

* Menghapus data duplikat.
* Menangani missing values.
* Standardisasi format data.
* Feature engineering.
* Data validation.

### Load

* Menyimpan data hasil transformasi ke SQLite Data Warehouse.

---

## Implementasi ELT

Pada pendekatan ELT:

1. Data mentah dimuat terlebih dahulu ke dalam Data Warehouse.
2. Transformasi dilakukan menggunakan SQL.
3. Query analitik dijalankan untuk menghasilkan insight.

---

## Struktur Data Warehouse

Data Warehouse menggunakan pendekatan **Star Schema**.

### Fact Table

#### fact_fitness

Menyimpan data numerik utama:

* recovery_score
* hrv
* calories_burned
* sleep_efficiency
* fatigue_index
* day_strain

### Dimension Tables

#### dim_user

* user_id
* age
* gender
* fitness_level
* primary_sport

#### dim_date

* date_id
* date
* day_of_week
* is_weekend

#### dim_activity

* activity_id
* activity_type

---

## Analisis SQL

Beberapa analisis yang dilakukan menggunakan SQL:

1. Average Recovery Score
2. Average Sleep Duration
3. Average HRV
4. Total Users
5. Recovery by Fitness Level
6. User Distribution by Gender
7. Calories Burned by Activity Type
8. Recovery Trend by Date

---

## Dashboard Power BI

Dashboard menampilkan:

### KPI

* Average Recovery
* Average HRV
* Average Sleep
* Average Calories Burned
* Total Users

### Visualisasi

* Recovery Trend
* Sleep Trend
* Recovery by Fitness Level
* Calories by Activity Type
* Gender Distribution
* Interactive Filters (Fitness Level, Gender, Activity Type)

---

## Struktur Repository

```text
whoop-fitness-analytics/
│
├── etl/
├── database/
├── dashboard/
├── dataset/
├── api/
├── architecture/
├── laporan/
└── README.md
```

---

## Cara Menjalankan Proyek

### 1. Jalankan ETL Pipeline

Buka notebook ETL dan jalankan seluruh sel untuk:

* Ekstraksi data
* Transformasi data
* Validasi data
* Penyimpanan ke Data Warehouse

### 2. Jalankan ELT Pipeline

Jalankan notebook ELT untuk:

* Transformasi berbasis SQL
* Analisis data
* Pembuatan tabel dimensional

### 3. Buka Dashboard

* Buka file Power BI (.pbix).
* Refresh data jika diperlukan.
* Dashboard siap digunakan untuk analisis.

---

## Hasil Utama

Berdasarkan hasil analisis:

* Average Recovery Score: 65.13
* Average Sleep Duration: 6.64 jam
* Average HRV: 73.24
* Total Users: 286

Dashboard berhasil menyajikan informasi kebugaran pengguna secara interaktif dan mendukung proses analisis data berbasis Business Intelligence.

---

## Penulis
Muhammad Daffa Rajasa & Rajendra Aria Nismara
Program Studi S1 Teknik Komputer
Telkom University 
2026/2027
