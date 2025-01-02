Skin Cancer Detection System

Skin Cancer Detection System is an advanced healthcare application that leverages deep learning to detect skin cancer with high accuracy. The project combines the power of the DenseNet201 model with real-time mobile deployment to assist medical professionals in diagnosing skin cancer more efficiently.

🚀 Features

High Accuracy: Achieves a classification accuracy of 94.94% using the DenseNet201 architecture.
Real-Time Mobile Deployment: Fully integrated as a mobile application built with Flutter.
Synthetic Data Augmentation: Overcame limited training data through innovative data generation techniques.
User-Friendly Interface: Designed an intuitive UI/UX using Figma for seamless user experience.

🔧 Technologies Used

Deep Learning Framework: TensorFlow and Python.
Model Architecture: DenseNet201.
Mobile Development: Flutter for cross-platform app development.
Design Tools: Figma for UI/UX design.

💡 Challenges and Solutions

Challenge: Limited dataset diversity posed a significant hurdle in training.
Solution: Utilized synthetic data generation to enhance dataset quality and diversity.
Challenge: Achieving real-time processing capability in a mobile application.
Solution: Optimized the TensorFlow model for faster predictions.

🌟 Outcomes and Impact

Improved diagnostic accuracy for skin cancer detection, aiding medical professionals with faster and more reliable results.
Enhanced accessibility to advanced diagnostic tools through mobile integration.

📸 Screenshots

![Group 7](https://github.com/user-attachments/assets/e87c316b-b40f-4c1d-8988-20863731ee8f)



🛠 How to Run

Clone this repository:

bash

Copy code

git clone https://github.com/SoftTac/Skin-Cancer-Detection-System

Navigate to the project directory:

bash

Copy code

cd Skin-Cancer-Detection-System

Install dependencies:

For Python: Use requirements.txt to set up the environment.

bash

Copy code

pip install -r requirements.txt

For Flutter: Run the following command:

bash

Copy code

flutter pub get

Run the application:

Backend: Start the Python server for model predictions.

Frontend: Launch the Flutter app.

📂 Project Structure

bash

Copy code

Skin-Cancer-Detection-System/

├── models/               # Pretrained DenseNet201 model

├── app/                  # Flutter mobile app source code

├── dataset/              # Dataset used for training (if included)

├── requirements.txt      # Python dependencies

├── README.md             # Project documentation



🤝 Contributing

Contributions are welcome! Feel free to submit a pull request or open an issue for improvements.
