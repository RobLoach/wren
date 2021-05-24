System.print("abcdabcd".lastIndexOf("")) // expect: 0
System.print("abcdabcd".lastIndexOf("cd")) // expect: 2
System.print("abcdabcd".lastIndexOf("a")) // expect: 0
System.print("abcdabcd".lastIndexOf("abcd")) // expect: 0
System.print("abcdabcd".lastIndexOf("abcde")) // expect: -1
System.print("abababcd".lastIndexOf("ab")) // expect: 0

// More complex cases.
System.print("abcdefabcdefg".lastIndexOf("def")) // expect: 9
System.print("abcdabcdabcd".lastIndexOf("dab")) // expect: 7
System.print("abcdabcdabcdabcd".lastIndexOf("dabcdabc")) // expect: 3
System.print("abcdefg".lastIndexOf("abcdef!")) // expect: -1

// Non-ASCII. Note that it returns byte indices, not code points.
System.print("søméஃthîng".lastIndexOf("e")) // expect: -1
System.print("søméஃthîng".lastIndexOf("m")) // expect: 3
System.print("søméஃthîng".lastIndexOf("thî")) // expect: 9

// 8-bit clean.
System.print("a\0b\0c".lastIndexOf("\0")) // expect: 3
System.print("a\0b\0c".lastIndexOf("a")) // expect: 0
System.print("a\0b\0c".lastIndexOf("b\0c")) // expect: 2
System.print("a\0b\0c".lastIndexOf("a\0b\0c\0d")) // expect: -1
System.print("a\0b\0a\0b".lastIndexOf("a\0b")) // expect: 4
