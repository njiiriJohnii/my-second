def readFile(file)
  open_file=File.open(file)#opening the file
  file=open_file.read#reading the file
  open_file.close()#closing the opened file the parenthesis is important.
  file
end

readtext=readFile("file1.txt")# decraling a variable that willbe replaced in the texts below.

def character_count(text)#its the text inside the file
   text.length 
end
def word_count(text)
  text.split(" ").count
end
def line_count(text)
  text.lines.count
end
def sentc_count(text)
   text.split(/\.|\?|\!/).count
end
def par_count(text)
 text.split("\n\n").count
end
def av_words_per_sent(text)
 word_count(text)/sentc_count(text)
end
def av_sen_per_para(text)
 sentc_count(text)/ par_count(text)
end
#def no_ofintergers(text)
# text.to_s.split("").size-1.count
#end

print "number of characters<< "
puts  character_count(readtext)
print "number of words<< "
puts word_count(readtext)
print "number of lines<< "
puts line_count(readtext)
print "number of sentences<< "
puts sentc_count(readtext)
print "number of paragraphs<< "
puts par_count(readtext)
print "average no of words per sentence<< "
puts av_words_per_sent(readtext)
print "average number of sentences per paragraph<< "
puts av_sen_per_para(readtext)
#print "number of digits << "
#puts no_ofintegers(readtext)
 


