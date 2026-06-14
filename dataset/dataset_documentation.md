# Dataset Documentation

## Dataset 1: WHOOP Fitness Dataset

### Sumber
Kaggle

### Link Dataset
[https://www.kaggle.com/](https://www.kaggle.com/datasets/likithagedipudi/whoop-fitness-dataset)

### Deskripsi
WHOOP Fitness Dataset merupakan dataset yang berisi informasi terkait kondisi kebugaran dan aktivitas pengguna. Dataset ini digunakan sebagai sumber data utama dalam proyek ETL, ELT, dan Data Warehouse.

### Atribut Utama
- user_id
- age
- gender
- fitness_level
- primary_sport
- recovery_score
- sleep_hours
- hrv
- calories_burned
- day_strain
- activity_type

### Tujuan Penggunaan
Dataset digunakan untuk melakukan analisis tingkat kebugaran pengguna, pola tidur, pemulihan tubuh (recovery), aktivitas olahraga, dan hubungan antara berbagai indikator kesehatan.

---

## Dataset 2: Weather API

### Sumber
OpenWeather API

### Link API
[https://openweathermap.org/api](https://openweathermap.org/)

### Deskripsi
Weather API digunakan sebagai sumber data tambahan untuk memenuhi kebutuhan integrasi data dari berbagai sumber (multi-source ETL). Data diperoleh melalui request API menggunakan Python dan disimpan dalam format JSON sebelum diproses lebih lanjut.

### Data yang Diambil
- Temperature
- Humidity
- Weather Condition
- Wind Speed
- Location
- Timestamp

### Tujuan Penggunaan
Data cuaca digunakan sebagai contoh integrasi data eksternal dalam proses ETL dan ELT serta untuk menunjukkan kemampuan sistem dalam mengolah data dari sumber yang berbeda.
