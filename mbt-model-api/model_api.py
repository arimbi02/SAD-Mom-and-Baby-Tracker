from flask import Flask, request, jsonify
import traceback
import pickle
import numpy as np
import pandas as pd  # Tambahan penting

app = Flask(__name__)

MODEL_PATH = 'knn_growth_model.pkl'  # Pastikan path dan nama file sudah benar

try:
    with open(MODEL_PATH, 'rb') as f:
        model = pickle.load(f)
    print(f"Model berhasil dimuat dari {MODEL_PATH}")
except Exception as e:
    print(f"Gagal memuat model dari {MODEL_PATH}: {e}")
    model = None

def konversi_jenis_kelamin(jk):
    jk = jk.lower()
    if jk in ['l', 'laki-laki', 'male', 'm']:
        return 0
    elif jk in ['p', 'perempuan', 'female', 'f']:
        return 1
    else:
        raise ValueError("Jenis kelamin tidak valid, gunakan 'L' atau 'P'")

@app.route('/')
def home():
    return "API model pertumbuhan bayi siap digunakan"

@app.route('/predict', methods=['POST'])
def predict():
    if model is None:
        return jsonify({'error': 'Model belum dimuat, server tidak dapat memproses prediksi'}), 500
    try:
        data = request.get_json()
        print("Data masuk:", data)

        jenis_kelamin = konversi_jenis_kelamin(data.get('jenis_kelamin', ''))
        usia_bulan = float(data.get('usia_bulan', 0))
        berat_badan = float(data.get('berat_badan', 0))
        tinggi_badan = float(data.get('tinggi_badan', 0))
        lingkar_kepala = float(data.get('lingkar_kepala', 0))

        # Gunakan DataFrame agar sesuai dengan model yang dilatih menggunakan fitur nama kolom
        fitur = pd.DataFrame([{
    'usia_bulan': usia_bulan,
    'jenis_kelamin': jenis_kelamin,
    'berat_badan': berat_badan,
    'tinggi_badan': tinggi_badan,
    'lingkar_kepala': lingkar_kepala
}])[['usia_bulan', 'jenis_kelamin', 'berat_badan', 'tinggi_badan', 'lingkar_kepala']]
        print("Fitur yang diprediksi:\n", fitur)

        prediksi = model.predict(fitur)
        kategori = prediksi[0]

        print("Hasil prediksi:", kategori)
        return jsonify({'kategori': kategori})

    except Exception as e:
        print("Error saat prediksi:")
        traceback.print_exc()
        return jsonify({'error': f'Terjadi kesalahan saat prediksi: {str(e)}'}), 500

if __name__ == '__main__':
    app.run(debug=True)