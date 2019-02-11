

library(rvest)
library(stringr)

url ="https://www.imdb.com/title/tt1201607/fullcredits?ref_=tt_ql_1"
webpage = read_html(url)

print(class(webpage))
print(webpage)


cast_nodes = html_nodes(webpage,'.cast_list')

# html_nodes will fetch all the data ffrom the tags who class has teh value as cast_list

# . means class of the tag
# # means id of the tag

# print(class(cast_nodes))
# print(cast_nodes)
cast_text = html_text(cast_nodes)
# print(cast_text)
# print(class(cast_text))

cast_list = str_match_all(cast_text, '[a-zA-Z]+(?: +[a-zA-Z]+)+')

print(cast_list)
df = data.frame(col=cast_list)
print(df)
print(class(df))



