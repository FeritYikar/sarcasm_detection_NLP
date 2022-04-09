# **Sarcasm Detection NLP**

**Author:** \_Ferit Yikar

<img src="images\sarcasm.jpg" width=50%>

## Overview

As better and better NLP projects are built we see that computers can understand a lot of the human languages. However understanding is still an area that needs improvement. Altough the tone is very important part of understanding sarcasm, this dataset consists of text data only. In this project I will try to detect sarcasm from given news headlines.

<img src="images\sarcasm_detected.jpg" width=40%>

---

## Data

The dataset consists of more than 28,000 news headlines with sarcastic and not-sarcastic tags.
https://www.kaggle.com/datasets/rmisra/news-headlines-dataset-for-sarcasm-detection?select=Sarcasm_Headlines_Dataset_v2.json

<img src="images\normal_wordcloud.png" width=40%>
<img src="images\sarcasm_wordcloud.png" width=47%>

---

## Methods

This project uses Naive Bayes models with TFIDF vectorizer as the baseline models. Then various deep learning models including LSTM, GRU, CNN, and Dense models with Tensorflow text vectorizer and embedding as layers. After different models I also built a transfer learning model with Universal Sentence Encoder as well. Once all models are ready they are all saved to be used later in a Tensorflow Lite or Tensorflow JS application. Also the

---

## Results

### Comparing Best Model Test Results with Actual Prices

Overall I ran 8 different models and the recall scores of these models are as shown below.

<img src="images\models-compare.png" width=80%>

The scores differ between 79.9% and 84.1%. The best results were achieved when I used a Dense Tensorflow model.

### Confusion Matrix

The confusion matrix of the best model:

<img src="images\cm.png" width=50%>

### Tensorboard

The runtime for Tensorflow models can be found at https://tensorboard.dev/experiment/lDzFNLqJQoi1fDIjouMtrQ/

<img src="images\tensorboard.png" width=50%>

### Below you can see my model predicting 2 new texts

<img src="images\predictions.png" width=50%>

## Next Steps

For a better model I want to use more and more datasets..

- <u> Get more Sarcasm headlines </u> - With more data I can improve the models scores.
  <br><br>

- <u> More data with different contents</u> - To better capture sarcasm, data from tweets, texts, even some longer texts such as blogs and books etc. would help build a better model.
  <br><br>
- <u> To best predict sarcasm I like to get speech data and try to capture sarcasm from the tone as well as the text.</u>

---

<img src="images\chandler.jpg" width=50%>

## For More Information

Please review my full analysis in my files.

For any additional questions, please contact

yikarferit@gmail.com <br />
https://www.linkedin.com/in/ferityikar/<br />

## Repository Structure

```
├── dense_model
├── images
├── tensorboard
├── .gitignore
├── README.md
├── Sarcasm_Headlines_Dataset_v2.json
└── Sarcasm.ipynb
```
