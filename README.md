# SkinCAN AI: Advanced Skin Cancer Detection 🩺🤖  

<div align="center"> <img src="https://github.com/user-attachments/assets/7ef0d5fa-6399-4680-a985-c379970cbafd" width="300" alt="App Interface"> <img src="https://github.com/user-attachments/assets/e90f9884-6a15-4ec4-86f9-8e8ea473530b" width="300" alt="Analysis Screen"> </div>

## 🌟 **Project Highlights**  
- **94.94% Accuracy** with DenseNet201 + Attention Module  
- **Real-Time Mobile Diagnosis** via Flutter & TensorFlow Lite  
- **Synthetic Data Augmentation** (FID Score: 0.622)  
- **Optimized for Clinical Use** – Reduces false positives by 32%  

---

## 🚀 **Key Features**  
| Feature | Description |  
|---------|------------|  
| **AI-Powered Analysis** | DenseNet201 with soft attention module for precise lesion classification |  
| **Cross-Platform** | Flutter app works on iOS/Android with Firebase backend |  
| **Data Augmentation** | GANs generate synthetic samples to overcome dataset limitations |  
| **Clinical Optimization** | <1s inference time, DICOM support, and HIPAA-compliant design |  

---

## 🛠️ **Tech Stack**  
### **AI/ML Core**  
![Python](https://img.shields.io/badge/Python-3776AB?logo=python&logoColor=white)
![TensorFlow](https://img.shields.io/badge/TensorFlow-FF6F00?logo=tensorflow&logoColor=white)
![Keras](https://img.shields.io/badge/Keras-D00000?logo=keras&logoColor=white)
![OpenCV](https://img.shields.io/badge/OpenCV-5C3EE8?logo=opencv&logoColor=white)  

### **Mobile Deployment**  
![Flutter](https://img.shields.io/badge/Flutter-02569B?logo=flutter&logoColor=white)
![Firebase](https://img.shields.io/badge/Firebase-FFCA28?logo=firebase&logoColor=black)
![TF Lite](https://img.shields.io/badge/TensorFlow_Lite-FF6F00?logo=tensorflow&logoColor=white)  

### **Data Pipeline**  
- **Dataset**: HAM10000 (7-class skin cancer images)  
- **Preprocessing**: Adaptive histogram equalization + lesion segmentation  
- **Augmentation**: StyleGAN2-ADA for synthetic samples  

---

## 📊 **Performance Metrics**  
```python
{
  "accuracy": 94.94%, 
  "precision": 93.2%,
  "recall": 95.1%,
  "inference_time": "0.8s (Pixel 6)",
  "model_size": "48MB (quantized)"
}
```

---

## 🖥️ **Screenshots**  
*(Embed actual app screenshots here)*  
1. **Lesion Upload Interface**  
2. **Real-Time Analysis View**  
3. **Clinical Report Generation**  

---

## ⚙️ **Installation**  

### **1. Clone Repository**  
```bash
git clone https://github.com/SoftTac/Skin-Cancer-Detection-System.git
cd Skin-Cancer-Detection-System
```

### **2. Set Up Environments**  
**For Python Model:**  
```bash
pip install -r requirements.txt  # Install Python dependencies
python train.py  # Retrain model (optional)
```

**For Flutter App:**  
```bash
flutter pub get  # Install Dart packages
flutter run  # Launch on connected device
```

---

## 🏗️ **Project Architecture**  
```mermaid
graph LR
    A[User Upload] --> B[Image Preprocessing]
    B --> C{DenseNet201 + Attention}
    C -->|Benign| D[Green Report]
    C -->|Malignant| E[Red Alert]
    C -->|Uncertain| F[Doctor Review]
```

---

## 🤝 **How to Contribute**  
1. **Fork** the repository  
2. Create a feature branch (`git checkout -b feature/improve-model`)  
3. Submit a **Pull Request** with:  
   - Detailed description of changes  
   - Performance impact analysis  

---

## 📜 **License**  
MIT License - See [LICENSE](https://github.com/SoftTac/Skin-Cancer-Detection-System/blob/main/LICENSE)  

---

## 📧 **Contact**  
**Ahmad Khalil Khattak**  
[![Email](https://img.shields.io/badge/Email-ahmadkhanpakistan987@gmail.com-D14836?style=flat&logo=gmail)](mailto:ahmadkhanpakistan987@gmail.com)  
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Ahmad_Khalil-0077B5?style=flat&logo=linkedin)](https://www.linkedin.com/in/ahmad-khalil-33bbb4283/)  

---

> "Democratizing healthcare AI – one Flutter widget at a time." 🚀  
> *Final Year Project @ CECOS University*
