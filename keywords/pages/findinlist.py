import operator
import logging

def order_list(listoflocation):
    listoflocation.sort(key=operator.itemgetter('temp'))
    return listoflocation

def find_max(listoflocation):
    maxtemp = max(listoflocation, key=lambda x:x['temp'])
    return maxtemp

def find_min(listoflocation):
    mintemp = min(listoflocation, key=lambda x:x['temp'])
    return mintemp
