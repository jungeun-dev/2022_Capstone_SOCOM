import nltk
from nltk.corpus import sentiwordnet as swn
from googletrans import Translator
import pandas as pd
import glob
import os

def trans():
    comments = pd.read_csv('C:\python\crawring\comments\20220307_1.csv')

    translator = googletrans.Translator()

    comments_trans_result = translator.translate(comments, src='ko', dest='en')

def store_english(comments_trans_result):
       
    with open('20220307_en.csv', 'a', encoding='UTF-8-sig', newline='') as writer_csv:       
        writer = csv.writer(writer_csv, delimiter=',')
        writer.writerow(comments_trans_result)



pos_files = os.listdir('aclImdb/test/pos')
neg_files = os.listdir('aclImdb/test/neg')



def sentence_sentiment_calculator(sent):
    tokens =  nltk.word_tokenize(sent)
    pos_tags = nltk.pos_tag(tokens)
    
    pos_score = 0
    neg_score = 0
    for word, tag in pos_tags:
        pos_score += word_sentiment_calculator(word, tag)[0]
        neg_score += word_sentiment_calculator(word, tag)[1]
    return (pos_score, neg_score)

def word_sentiment_calculator(word, tag):
    pos_score = 0
    neg_score = 0
    
    if 'NN' in tag and len(list(swn.senti_synsets(word, 'n')))>0:
        syn_set = list(swn.senti_synsets(word, 'n'))
    elif 'VB' in tag and len(list(swn.senti_synsets(word, 'v')))>0:
        syn_set = list(swn.senti_synsets(word, 'v'))
    elif 'JJ' in tag and len(list(swn.senti_synsets(word, 'a')))>0:
        syn_set = list(swn.senti_synsets(word, 'a'))
    elif 'RB' in tag and len(list(swn.senti_synsets(word, 'r')))>0:
        syn_set = list(swn.senti_synsets(word, 'r'))
    else:
        return (0,0)
    
    for syn in syn_set:
        pos_score += syn.pos_score()
        neg_score += syn.neg_score()
    return (pos_score/len(syn_set), neg_score/len(syn_set))

def sentence_sentiment_calculator(sent):
    tokens =  nltk.word_tokenize(sent)
    pos_tags = nltk.pos_tag(tokens)
    
    pos_score = 0
    neg_score = 0
    for word, tag in pos_tags:
        pos_score += word_sentiment_calculator(word, tag)[0]
        neg_score += word_sentiment_calculator(word, tag)[1]
    return (pos_score, neg_score)

for file in pos_files:
        with open('aclImdb/test/pos/{}'.format(file), 'r', encoding = 'utf-8') as f:
            scores = sentence_sentiment_calculator(f.read())
        
        if scores[0] >= scores[1]:
            predicted.append(1)
        else:
            predicted.append(0)
        f.close()

for file in neg_files:
    with open('aclImdb/test/neg/{}'.format(file), 'r', encoding = 'utf-8') as f:
        scores = sentence_sentiment_calculator(f.read())
        
        if scores[0] >= scores[1]:
            predicted.append(1)
        else:
            predicted.append(0)
        f.close()

def store_pos_1(comments):
       
    with open('pos_1.csv', 'a', encoding='UTF-8-sig', newline='') as writer_csv:       
        writer = csv.writer(writer_csv, delimiter=',')
        writer.writerow(comments)

def store_neg_1(comments):
       
    with open('neg_1.csv', 'a', encoding='UTF-8-sig', newline='') as writer_csv:       
        writer = csv.writer(writer_csv, delimiter=',')
        writer.writerow(comments)

def store_pos_2(comments):
       
    with open('pos_2.csv', 'a', encoding='UTF-8-sig', newline='') as writer_csv:       
        writer = csv.writer(writer_csv, delimiter=',')
        writer.writerow(comments)

def store_neg_2(comments):
       
    with open('neg_2.csv', 'a', encoding='UTF-8-sig', newline='') as writer_csv:       
        writer = csv.writer(writer_csv, delimiter=',')
        writer.writerow(comments)

def senti():
    trans
    store_english    

    if sentence_sentiment_calculator(sent):
        pos_score > neg_score
        store_pos_1
    else:
        store_neg_1



