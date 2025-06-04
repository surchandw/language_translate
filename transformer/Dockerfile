#FROM tensorflow/tensorflow:latest
FROM tensorflow/serving

# Install TensorFlow Serving
#RUN pip install tensorflow-serving

# Set environment variables
ENV MODEL_NAME=tm_model
ENV MODEL_PATH=/models/tm_model

# Copy model files
COPY translate_manipuri_model /models/tm_model

EXPOSE 8081

EXPOSE 8080

# Run TensorFlow Serving
ENTRYPOINT ["tensorflow_model_server", "--port=8080", "--rest_api_port=8081", "--model_name=tm_model", "--model_base_path=/models/tm_model"]

