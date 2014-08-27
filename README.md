#Algorithm

##Build Huffman Tree
1. Create a forest with one tree for each letter and its respective frequency as value
2. Sort all trees depending on their values
3. Join the two trees with the lowest value, assigning code 0, 1 one for each of them, removing each from the forest and adding instead the resulting combined tree
4. Repeat until there’s only one tree left

##Compression
1. Read the original text file letter by letter
2. Write each letter respective binary code in the output file

##Decompression
1. Read the compressed text file bit by bit
2. Move along the Huffman tree until you find the corresponding letter of each bit and write it in the output file

#Example

| Character | Frequency |
|:---------:|:---------:|
|     a     |     5     |
|     b     |     9     |
|     c     |     12    |
|     d     |     13    |
|     e     |     16    |
|     f     |     45    |

1. Build a forest that contains 6 nodes where each node represents root of a tree with single node
2. Extract two minimum frequency nodes from forest. Add a new internal node with frequency `5 + 9 = 14` ![node 14](http://d2o58evtke57tz.cloudfront.net/wp-content/uploads/fig-1-300x129.jpeg) now forest contains 5 nodes where 4 nodes are roots of trees with single element each, and one node is root of tree with 3 elements

3. Extract two minimum frequency nodes from forest. Add a new internal node with frequency `12 + 13 = 25` ![node 25](http://d2o58evtke57tz.cloudfront.net/wp-content/uploads/fig-2-300x132.jpg) now forest contains 4 nodes where 2 nodes are roots of trees with single element each, and two nodes are root of tree with more than one nodes.

4. Extract two minimum frequency nodes. Add a new internal node with frequency `14 + 16 = 30` ![node 30](http://d2o58evtke57tz.cloudfront.net/wp-content/uploads/fig-3.jpg) now forest contains 3 nodes.

5. Extract two minimum frequency nodes. Add a new internal node with frequency `25 + 30 = 55` ![node 55](http://d2o58evtke57tz.cloudfront.net/wp-content/uploads/fig-4-300x121.jpg) now forest contains 2 nodes.

6. Extract two minimum frequency nodes. Add a new internal node with frequency `45 + 55 = 100` ![node 100](http://d2o58evtke57tz.cloudfront.net/wp-content/uploads/fig-5-300x167.jpg) now forest contains only one node.

Since the forest contains only one node, the algorithm stops here.

Traverse the tree formed starting from the root. While moving to the left child, write 0 to the array. While moving to the right child, write 1 to the array. Print the array of bits when a leaf node is encountered.

The codes are as follows:

| Character | Frequency |
|:---------:|:---------:|
|     a     |     0     |
|     b     |     100   |
|     c     |     101   |
|     d     |     1100  |
|     e     |     1101  |
|     f     |     111   |
