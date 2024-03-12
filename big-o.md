# Big-O

How would you define the size of the following tasks?
* Solving a jigsaw puzzle.
    * Number of pieces
* Passing a handout to a class.
    * Number of handouts
* Walking to class.
    * Distance to class
* Finding a name in dictionary.
    * Length of the dictionary

For the tasks given in the previous problem, what would you say is the Big-O complexity of the tasks in terms of the size definitions you gave?
* Solving a jigsaw puzzle.
    * O($N!$)
* Passing a handout to a class.
    * O($\log N$)
* Walking to class.
    * O($N$)
* Finding a name in dictionary.
    * O($1$)

You may be surprised to know that there is a log time algorithm for finding a word in an $n$-word dictionary. Instead of starting at the beginning of the list, you go to the middle. If this is the word you are looking for then you are done. If the word comes after the word you are looking for, then look halfway between the current word and the end. If it is before the word you are looking for, then look halfway between the first word and the current word. Keep repeating this process until you find the word. This algorithm is known as a binary search, and it is log time because the search space is cut in half at each iteration, and therefore, requires at most $\log_2 n$ iterations to find the word. Hence the increase in run time is only log in the length of the list. There is a way to look up a word in O($1$) or constant time. This means that no matter how long the list is, it takes the same amount of time! Can you think of how this is done? Hint: Research hash functions.

```c++
#include "hash.h"

using namespace std;

hashTable::hashTable(int size) : capacity(getPrime(size)), filled(0), data(capacity) {}

int hashTable::insert(const string &key, void *pv) {
  int pos = findPos(key);
  if (pos == -1) {
    pos = hash(key);
    while (data[pos].isOccupied) {
      if (data[pos].key == key) return 1;
      pos = (pos + 1) % capacity;
    }
    data[pos].key = key;
    data[pos].isOccupied = true;
    filled++;
    if (filled > capacity * 0.75 && !rehash()) return 2;
    else return 0;
  }
  else return 1;
}

bool hashTable::contains(const string &key) {
  return findPos(key) != -1;
}

int hashTable::hash(const string &key) {
  int hashVal = 0;
  for (char ch : key) hashVal = (457 * hashVal + ch) % capacity;
  return hashVal;
}

int hashTable::findPos(const string &key) {
  int pos = hash(key);
  while (data[pos].isOccupied && data[pos].key != key) pos = (pos + 1) % capacity;
  return data[pos].key == key ? pos : -1;
}

bool hashTable::rehash() {
  vector<hashItem> oldData(data);
  capacity = getPrime(2 * oldData.size());
  if (capacity == -1) return false;
  data.clear();
  data.resize(capacity);
  filled = 0;
  for (int oldPos = 0; oldPos < oldData.size(); oldPos++) {
    if (oldData[oldPos].isOccupied) {
      int pos = hash(oldData[oldPos].key);
      while (data[pos].isOccupied) pos = (pos + 1) % capacity;
      data[pos].key = oldData[oldPos].key;
      data[pos].isOccupied = true;
      filled++;
    }
  }
  return true;
}

unsigned int hashTable::getPrime(int size) {
  unsigned int primes[] = {2, 5, 11, 23, 47, 97, 197, 397, 797, 1597, 3203, 6421, 12853, 25717,
    51437, 102877, 205759, 411527, 823117, 1646237, 3292489
  };
  int i = lower_bound(begin(primes), end(primes), size) - begin(primes);
  return i < sizeof(primes) / sizeof(primes[0]) ? primes[i] : -1;
}
```