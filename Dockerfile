# Base image হিসাবে Python ব্যবহার করা হচ্ছে
FROM python:3.9-slim

# সিস্টেম আপডেট ও Git ইনস্টল করা
RUN apt-get update && apt-get install -y git && apt-get clean

# কাজের ডিরেক্টরি সেট করা
WORKDIR /app

# ডিপেনডেন্সি ফাইল কপি করা
COPY requirements.txt .

# পিপ আপডেট ও ডিপেনডেন্সি ইন্সটল করা
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# অ্যাপ ফাইলগুলো কপি করা
COPY . .

# কন্টেইনার রান করার সময় যে কমান্ডটি চালাবে
CMD ["python", "bot.py"]
