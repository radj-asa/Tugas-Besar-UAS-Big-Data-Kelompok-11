# API Documentation

## API yang Digunakan

OpenWeather API

### Sumber

https://openweathermap.org/api

### Tujuan

API digunakan sebagai sumber data tambahan untuk memenuhi kebutuhan integrasi data dari berbagai sumber pada proses ETL dan ELT.

### Metode Pengambilan Data

Data diperoleh menggunakan HTTP GET Request melalui library Python `requests`.

### Data yang Diambil

- Temperature
- Humidity
- Weather Condition
- Wind Speed
- Location
- Timestamp

### Format Data

Data diterima dalam format JSON dan kemudian disimpan sebagai data mentah sebelum melalui proses transformasi pada pipeline ETL.

### Contoh Proses

1. Mengirim request ke endpoint OpenWeather API.
2. Menerima response dalam format JSON.
3. Menyimpan data mentah.
4. Melakukan transformasi dan validasi data.
5. Memuat data ke Data Warehouse.

### Catatan

API Key tidak disertakan dalam repository GitHub demi alasan keamanan.
